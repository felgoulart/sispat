OpenLayers.Layer.Google.MAX_ZOOM_LEVEL = 20;

var LAYER_PROJECTION = 'EPSG:4618';

var selectedFeatures = {};
var openedPopups = {};

function loadGoogleMaps(_title, _type){
    var gmap = new OpenLayers.Layer.Google(_title, {
        type: _type,
        sphericalMercator: true,
		MAX_ZOOM_LEVEL : OpenLayers.Layer.Google.MAX_ZOOM_LEVEL
    });
    
    return gmap;
}

function loadBingMaps(_title, _type){
    var gmap = new OpenLayers.Layer.VirtualEarth(_title, {
        type: _type
    });
    
    return gmap;
}

function getWmsMap(map, params){
	var url = GEOSERVER_URL + '/wms';
	
	var layer = new OpenLayers.Layer.WMS(params['title'], url, {
        layers: params['geoserverLayer'],
        srs: 'EPSG:4618',
        format: 'image/png',
        tiled: 'true',
        tilesOrigin: map.maxExtent.left + ',' + map.maxExtent.bottom,
        transparent: true
    }, {
        isBaseLayer: false,
        opacity: 0.75,
        buffer: 0,
        displayOutsideMaxExtent: true
    });
	
	layer.group = params['group'];
	
    return layer;
}

var formats = {
    wkt: new OpenLayers.Format.WKT(),
    geojson: new OpenLayers.Format.GeoJSON(),
    georss: new OpenLayers.Format.GeoRSS(),
    gml: new OpenLayers.Format.GML(),
    kml: new OpenLayers.Format.KML()
};

var activateFeatureInfo = function (map, layer, transaction){
    function createPopup(feature){
        var popup = getFeatureInfoPopup(feature);
        feature.popup = popup;
        popup.doLayout();
        popup.show();
    }
	
    layer.events.on({
        featureselected: function(e){
            if (e.feature.attributes['BPPARCELA']) {
                e.feature.transaction = transaction;
                if(!e.feature.fid in openedPopups) {
                } else {
                createPopup(e.feature);
                	openedPopups[e.feature.fid] = e.feature.popup;
                }
            	selectedFeatures[e.feature.fid] = e.feature;
            }
        },
        featureunselected: function(e){
        	if(e.feature.popup != null) {
        	e.feature.popup.close();
        	}
        	for(fid in openedPopups) {
        		if(e.feature.fid == fid) {
        			if(openedPopups[fid] != null) {
        				openedPopups[fid].close();
        			}
        		}
        	}
        	delete openedPopups[e.feature.fid];
        	delete selectedFeatures[e.feature.fid];
        }
    });

	layer.showPopup = true;

	return layer;
};

getGmlMap = function (map, params){
	var maxFeatures = '';
    if (params['maxFeatures']) {
        maxFeatures = '&maxFeatures=' + params['maxFeatures'];
	}
    
	var showOnStartup = false;
	if (params['showOnStartup']) {
		showOnStartup = params['showOnStartup'];
	}
    
    var olStrategy = new OpenLayers.Strategy.BBOX();
	var cqlFilter = '';
	if (showOnStartup && params['cqlFilter']) {
		cqlFilter = '&cql_filter=' + params['cqlFilter'];
//		olStrategy = new OpenLayers.Strategy.Fixed;//Correção para compatibilidade com cqlfilter
	}
    
    var url = GEOSERVER_URL + '/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=' + params['geoserverLayer'] + maxFeatures+cqlFilter;
    
    var defaultStyle = new OpenLayers.Style({
        'pointRadius': 12,
		'strokeColor': params['defaultColor'],
		'fillColor': params['defaultColor'],
		'strokeOpacity': 1.0,
		'fillOpacity': 0.0,
        externalGraphic: params['icon']
    });
    
    var selectStyle = new OpenLayers.Style({
        'pointRadius': 12,
        'strokeColor': 'red',
		'fillColor': 'red',
		'strokeOpacity': 1.0,
		'fillOpacity': 0.0,
        externalGraphic: getIcons()['SELECTED']
    });
    
    var styleMap = new OpenLayers.StyleMap({
		'default': defaultStyle,
        'select': selectStyle
    });
    
	var showOnStartup = false;
	if(params['showOnStartup']){
		showOnStartup = params['showOnStartup'];
	}
	
    var layer = new OpenLayers.Layer.Vector(params['title'], {
		strategies : [ olStrategy ],
		styleMap: styleMap,
		visibility: showOnStartup,
        protocol: new OpenLayers.Protocol.HTTP({
            url: url,
            format: new OpenLayers.Format.GML(),
			 formatOptions: {
				internalProjection: new OpenLayers.Projection("EPSG:900913"),
				externalProjection: new OpenLayers.Projection("EPSG:4618"),
				extractStyles : false,
				extractAttributes : true
				}
        })
    });
    
	layer.geoserverLayer = params['geoserverLayer'];
	layer.maxFeatures = params['maxFeatures'];
	layer.group = params['group'];
	layer.type = params['type'];
	
    layer = activateFeatureInfo(map, layer, params['transaction']);
    
    return layer;
};

/* O zoom é definido externamente */
findPoi = function(layer, featureAttribute, value){
	
	var selectedFeature = null;
	
	/* Busca o feature de acordo com o atributo */
	if (layer && !layer.isBaseLayer && layer.getVisibility()) {
		for (var i = 0; i < layer.features.length; i++) {
			if (layer.features[i].attributes[featureAttribute] == value) {
				selectedFeature = layer.features[i];
				break;
			}
		}
	}
		
	/* Busca o controle de seleção */
	var selectedControl = getControl('olControlSelectFeature');
	selectedControl.unselectAll();

	/* Busca a feature, seleciona e faz zoom */
	if (selectedFeature) {

		selectedControl.select(selectedFeature);
	
	}
	
	return selectedFeature;
};

function createMap(mapName){
    return new OpenLayers.Map(mapName, {
        numZoomLevels: OpenLayers.Layer.Google.MAX_ZOOM_LEVEL
    });
}

/* Singletone de seleção de controle do map */
function getControl(displayClass){
	var selectedControl;
	for ( var i = 0; i < map.controls.length; i++) {
		if (map.controls[i].displayClass == displayClass) {
			selectedControl = map.controls[i];
			break;
		}
	}
	return selectedControl;
}

/* Centraliza o mapa de acordo com as coordenadas de latitude e longitude 
 * 
 * Estádio do Maracanã, RJ (lat=-22.912148058904 e lon=-43.230185204194)
 * */
function centerBy(lat, lon){
	var center = new OpenLayers.LonLat(lon,lat)
		.transform(new OpenLayers.Projection("EPSG:4326"),map.getProjectionObject());
	
	map.setCenter(center, OpenLayers.Layer.Google.MAX_ZOOM_LEVEL-1);
}

function centerByLatLonParam(){
	var lat = getParameter('lat');
	var lon = getParameter('lon');
	
	if(lat && lon){
		centerBy(lat, lon);
	}
}

showPopupOnLoadZoom = true;
loadFeaturesByAjax = function(layer, cqlFilter) {

	var cql = '';
	if (cqlFilter) {
		cql = '&CQL_FILTER=' + cqlFilter;
	}

	var url = GEOSERVER_URL + '/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=' + layer.geoserverLayer
			+ cql;

	new OpenLayers.Ajax.Request(url, {
		method : 'get',
		onComplete : function(response) {

			var theParser = formats["gml"];
			theParser.internalProjection = null;
			theParser.externalProjection = null;
			theParser.extractStyles = false;
			theParser.extractAttributes = true;

			var features = theParser.read(response.responseText);

			if (features) {
				if (features.constructor != Array) {
					features = [ features ];
				}

				if (features[0]) {
					var bounds = features[0].geometry.getBounds().clone().transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject());
					map.zoomToExtent(bounds);
					map.setCenter(bounds.getCenterLonLat().transform(new OpenLayers.Projection("EPSG:4326"),map.getProjectionObject()), OpenLayers.Layer.Google.MAX_ZOOM_LEVEL);

					layer.setVisibility(true);

				}

			}

		},
		onFailure : function(response) {
			alert('Falha: Verifique a conexão com o Geoserver');
		}
	});

	
	layer.events.register("loadend", layer, function() {
		if(showPopupOnLoadZoom){
			findPoi(layer, 'BPPARCELA', cqlFilter.split('=')[1]);
			showPopupOnLoadZoom = false;
		}
	});
};
function fixSelectedFeature(map) {
	map.events.register("move", map, function(){
		highlightSelectedFeatures();
	});
	map.events.register("mouseover", map, function(){
		highlightSelectedFeatures();
	});
	map.events.register("mousemove", map, function(){
		highlightSelectedFeatures();
	});
	map.events.register("zoomend", map, function(){
		highlightSelectedFeatures();
	});
}
function highlightSelectedFeatures() {
	var selectControl = getControl('olControlSelectFeature');
	var features = [];
	for(var i=0; i < map.layers.length; i++) {
		var layer = map.layers[i];
		if (layer && !layer.isBaseLayer && layer.getVisibility()) {
			for(var ii=0; ii < layer.features.length; ii++) {
				var feature = layer.features[ii];
				for(var fid in selectedFeatures) {
					if(feature.fid == fid) {
						features.push(feature);
					}
				}
			}
		}
	}
	for(var i=0; i < features.length; i++) {
		var feature = features[i];
		selectControl.highlight(feature);
	}
}