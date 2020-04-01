//Constantes
COLUNA_GEO_DB="GEOMETRY";

Ext.apply(Ext.form.VTypes, {
	bpParcela : function(v) {
		return "/[0-9]+\-[0-9]{3}/i".test(v);
	},
	bpParcelaText : 'Formato: 0000000-000',
	bpParcelaMask : "/[0-9\-]/i"
});

inserirBP = function(feature, layer) {
	var confirmado = false;
	var popup = new Ext.Window({
		title :  i18n['bp']+' - '+i18n[layer.type],
		width : 250,
		height : 100,
		layout : 'fit',
		modal : true,
		resizable : false,
		items : [ {
			xtype : 'textfield',
			anchor : '95%',
			id : 'idBpField',
			fieldLabel : i18n['bp']
			,vtype : 'bpParcela'
		} ],
		buttons : [ {
			text : 'OK',
			xtype : 'tbbutton',
			id: 'btnOk',
			handler : function(tbbutton) {
				
				tbbutton.disable();
				
				var bpp = Ext.getCmp('idBpField').getValue();
				if(bpp){
					//Validação em Ajax 
					function handler(request) {
						if(request.status == 200 && request.responseText == 'OK'){
							feature.attributes['Bpparcela'] = bpp.replace('-','');
							confirmado = true;
							popup.close();
						}else{
							Ext.Msg.alert(i18n['bp'],i18n['bpnotfound']);
							tbbutton.enable();
						}
					}
					var request = OpenLayers.Request.GET({
					    url: ROOT_URL + '/servlets/AjaxServlet?get=validate&type='+layer.type+'&bpparcela='+bpp,
					    callback: handler				
					});
				}
				
			}
		}, {
			text : 'Cancelar',
			xtype : 'tbbutton',
			id: 'btnCancelar',
			handler : function() {
				popup.close();
			}
		} ]
	});
	
	popup.on('hide',function(){
		if(!confirmado){
			layer.removeFeatures([feature]);
		}
	});
	
	popup.show();
};

var titleCache = document.title;
salvando = function(){
	document.title = i18n['wait'];
};

salvoComSucesso = function(){
	document.title = i18n['success'];
	setTimeout("document.title = '" + titleCache + "'", 1500);
};

erroAoSalvar = function(){
	document.title = i18n['save.error'];
	setTimeout("document.title = '" + titleCache + "'", 1500);
};

function edit(layer){
	
	//Painel de Edição
	var panel = new OpenLayers.Control.Panel({
		'displayClass' : 'customEditingToolbar'
	});

	//Navegação
	var navigate = new OpenLayers.Control.Navigation({
		title : i18n['panmap']
	});

	//Desenho de Polígono
	var drawPolygon = new OpenLayers.Control.DrawFeature(layer, OpenLayers.Handler.Polygon, {
		title : i18n['drawpolygon'],
		displayClass : "olControlDrawFeaturePolygon",
		multi : true,
		featureAdded: function(feature){
			inserirBP(feature, layer);
		}
	});

	//Desenho de Linha
	var drawLine = new OpenLayers.Control.DrawFeature(layer, OpenLayers.Handler.Path, {
		title : i18n['drawline'],
		displayClass : "olControlDrawFeaturePath",
		multi : true,
		featureAdded: function(feature){
			inserirBP(feature, layer);
		}
	});

	//Desenho de Ponto
	var drawPoint = new OpenLayers.Control.DrawFeature(layer, OpenLayers.Handler.Point, {
		title : i18n['drawpoint'],
		displayClass : "olControlDrawFeaturePoint",
		multi : true,
		featureAdded: function(feature){
			inserirBP(feature, layer);
		}
	});

	//Alteração de Polígono
	var modify = new OpenLayers.Control.ModifyFeature(layer, {
		title : i18n['modify'],
		displayClass : "olControlModifyFeature"
	});

	//Exclusão
	DeleteFeature = OpenLayers.Class(OpenLayers.Control, {
		initialize : function(layer, options) {
			OpenLayers.Control.prototype.initialize.apply(this, [ options ]);
			this.layer = layer;
			this.handler = new OpenLayers.Handler.Feature(this, layer, {
				click : this.clickFeature
			});
		},
		clickFeature : function(feature) {
			if (feature.fid == undefined) {
				this.layer.destroyFeatures([ feature ]);
			} else {
				feature.state = OpenLayers.State.DELETE;
				this.layer.events.triggerEvent("afterfeaturemodified", {
					feature : feature
				});
				feature.renderIntent = "select";
				this.layer.drawFeature(feature);
			}
		},
		setMap : function(map) {
			this.handler.setMap(map);
			OpenLayers.Control.prototype.setMap.apply(this, arguments);
		},
		CLASS_NAME : "OpenLayers.Control.DeleteFeature"
	});
	var del = new DeleteFeature(layer, {
		title : i18n['delete']
	});

	//Salvar
	var saveStrategy = layer.strategies[1];
	var save = new OpenLayers.Control.Button({
		title : i18n['save'],
		trigger : function() {
			salvando();
			if (modify.feature) {
				modify.selectControl.unselectAll();
			}
			
			saveStrategy.save();
		},
		displayClass : "olControlSaveFeatures"
	});

	panel.addControls([ navigate, save, del, modify, drawPolygon, drawLine, drawPoint ]);
	panel.defaultControl = navigate;
	
	return panel;
}
 

getGmlMap = function(map, params) {

	var maxFeatures = '';
	if (params['maxFeatures']) {
		maxFeatures = '&maxFeatures=' + params['maxFeatures'];
	}

	var showOnStartup = false;
	if (params['showOnStartup']) {
		showOnStartup = params['showOnStartup'];
	}

	var fillOpacity = params['icon'] ? 1.0 : 0.7;

	var defaultStyle = new OpenLayers.Style({
		'pointRadius' : 8,
		'strokeColor' : params['defaultColor'],
		'fillColor' : params['defaultColor'],
		'fillOpacity' : 0.5,
		externalGraphic : params['icon']
	});

	var selectedColor = params['selectedColor'];
	if (!selectedColor) {
		selectedColor = '#FF00FF';
	}
	if (!params['showPopup']) {
		selectedColor = params['defaultColor'];
	}
	var selectStyle = new OpenLayers.Style({
		'pointRadius' : 20,
		'strokeColor' : selectedColor,
		'fillColor' : selectedColor,
		'fillOpacity' : fillOpacity
	});

	var styleMap = new OpenLayers.StyleMap({
		'default' : defaultStyle,
		'select' : selectStyle
	});

	var showOnStartup = false;
	if (params['showOnStartup']) {
		showOnStartup = params['showOnStartup'];
	}

	var workspace = params['geoserverLayer'].split(':')[0];
	var shape = params['geoserverLayer'].split(':')[1];

	//set up a save strategy
	saveStrategy = new OpenLayers.Strategy.Save();
	saveStrategy.events.register("success", '', function() {
		salvoComSucesso();
	});
	saveStrategy.events.register("failure", '', function() {
		erroAoSalvar();
	});

	var layer = new OpenLayers.Layer.Vector(params['title'], {
		strategies : [ new OpenLayers.Strategy.BBOX(), saveStrategy ],
		styleMap : styleMap,
		visibility : showOnStartup,
		protocol : new OpenLayers.Protocol.WFS({
			version : "1.0.0",
			url : GEOSERVER_URL + "/ows",
			srsName : LAYER_PROJECTION,
			featurePrefix : workspace,
			featureType : shape,
			featureNS : "http://workspace.geoserver.org/" + workspace, // Edit Workspace Namespace URI
			geometryName : COLUNA_GEO_DB,
			schema : GEOSERVER_URL + "/ows/DescribeFeatureType?version=1.0.0&typename=" + params['geoserverLayer']+maxFeatures
		})
	});

	layer.geoserverLayer = params['geoserverLayer'];
	layer.maxFeatures = params['maxFeatures'];
	layer.group = params['group'];
	layer.type = params['type'];

	layer = activateFeatureInfo(map, layer, params['transaction']);

	return layer;
};

//========== Sobrescrita de webrailsgeo.js =============================
defineSelecionado = function(map, treePanel){
	
    selNodes = treePanel.getChecked();
    Ext.each(selNodes, function(node){
        if (node.layer.type == getParameter('type')) {
        	node.layer.setVisibility(true);
    		node.getUI().checkbox.nextSibling.checked=true;
            var panel = edit(node.layer);
			map.addControl(panel);
			painelDeEdicaoAnterior = panel;
        }
    });

};

addGroup = function(layer) {

	var alreadyGroup = false;
	for ( var i = 0; i < layerRoot.childNodes.length; i++) {
		if (layerRoot.childNodes[i].text === layer.group) {
			alreadyGroup = true;
		}
	}

	if (!alreadyGroup) {
		layerRoot.appendChild(new GeoExt.tree.LayerContainer({
			text : layer.group,
			map : map,
			leaf : false,
			expanded : true,
			loader : {
				filter : function(record) {
					var group = record.get("layer").group;
					if (group) {
						return group == layer.group;
					} else {
						return false;
					}
				},
				baseAttrs : {
					radioGroup : 'radioGroup',
					uiProvider : 'layernodeui'
				}
			}
		}));
	}
};

function desativarMultiplaSelecao(){
	var itens = document.getElementsByName("baselayer_checkbox");
	
	for(var i=0;i<itens.length;i++){
		itens[i].style.display='inline';
	}
}

var painelDeEdicaoAnterior;
mountPanel = function(map) {
	
	panelAnterior= new OpenLayers.Control.Panel({
		'displayClass' : 'customEditingToolbar'
	});
	
	layerAnterior = null;

	var layersWithPopup = [];

	for (var i = 0; i < map.layers.length; i++) {
		if (map.layers[i].showPopup) {
			layersWithPopup.push(map.layers[i]);
		}
	}

	var selectControl = new OpenLayers.Control.SelectFeature(layersWithPopup, {
		clickout : true,
		toggle : false,
		multiple : false,
		hover : false
	});

	map.addControl(selectControl);
	
	//Coordenadas da posição do mouse
	map.addControl(new OpenLayers.Control.MousePosition({
		id : "position_mouse",
		displayProjection : new OpenLayers.Projection("EPSG:4326"),
		numDigits : 6,
		formatOutput : function(lonLat) {
			if (positionType == 'utm') {
				var resultado = converteLatLonParaUMT(lonLat.lat, lonLat.lon);
				return 'UTM ' + resultado['zona'] + ' K	' + resultado['x'] + ' m E ' + resultado['y'] + ' m ' + resultado['hemisferio'];
			} else {
				return 'lat ' + lonLat.lat + ' lon ' + lonLat.lon;
			}
		}
	}));
	
	var mapPanel = new GeoExt.MapPanel({
		border : true,
		region : "center",
		map : map,
		layers : map.layers
	});
	
	var LayerNodeUI = Ext.extend(GeoExt.tree.LayerNodeUI, new GeoExt.tree.TreeNodeUIEventMixin());
	

		var tree = new Ext.tree.TreePanel({
		border : true,
		region : "east",
		title : "Camadas",
		width : 270,
		split : true,
		collapsible : true,
		collapseMode : "mini",
		autoScroll : true,
		root : layerRoot,
		rootVisible : false,
		lines : true,
		plugins : [ new GeoExt.plugins.TreeNodeRadioButton({
			listeners : {
				"radiochange" : function(node) {

					try {
						map.removeControl(painelDeEdicaoAnterior);
					} catch (e) {
						//Somente remove se existir
					}

					for (i = 0; i < map.layers.length; i++) {
						if (map.layers[i] != null) {
							map.layers[i].setVisibility(false);
						}
					}

					var layerSelecionado = node.attributes.layer;
					layerSelecionado.setVisibility(true);

					var panel = edit(layerSelecionado);
					map.addControl(panel);
					painelDeEdicaoAnterior = panel;
				}
			}
		}) ],
		loader : new Ext.tree.TreeLoader({
			applyloader : false
		}),
		loader : new Ext.tree.TreeLoader({
			applyLoader : false,
			uiProviders : {
				'layernodeui' : LayerNodeUI
			}
		}),
		bbar : [ getBpFilterForm(map) ]
	});

	new Ext.Viewport({
		layout : "fit",
		hideBorders : true,
		items : {
			layout : "border",
			deferredRender : false,
			items : [ mapPanel, tree ]
		}
	});
	incluirChaveadorDeTipoDeCoordenadas();
	desativarMultiplaSelecao();
	defineSelecionado(map, tree);
	
	findPoiByParam();
	centerByLatLonParam();
	loadFeaturesByParam(map);
};