function triggerImages(djsImages, bp_p, selectedInventory) {
	djsImages.proxy = new Ext.data.HttpProxy({
		url : ROOT_URL + '/servlets/AjaxServlet?get=images&bpparcela=' + bp_p + '-'
				+ selectedInventory,
		method : 'GET'
	});
	djsImages.clearData();
	djsImages.reload();
}

function getFeatureInfoPopup(feature) {
	var bpp = feature.attributes['BPPARCELA'];
	var bp_p = bpp.substring(0, bpp.length - 3) + '-'
			+ bpp.substring(bpp.length - 3);

	/* Requisicoes ajax */
	var djsAssets = new Ext.data.JsonStore({
		autoLoad : true,
		proxy : new Ext.data.HttpProxy({
			url : ROOT_URL + '/servlets/AjaxServlet?get=assets',
			method : 'GET'
		}),
		root : 'assets',
		fields : [ {
			name : 'bp'
		}, {
			name : 'exists'
		} ]
	});

	var djsInventories = new Ext.data.JsonStore({
		autoLoad : true,
		proxy : new Ext.data.HttpProxy({
			url : ROOT_URL + '/servlets/AjaxServlet?get=inventories&bpparcela='+bp_p,
			method : 'GET'
		}),
		root : 'inventories',
		fields : [ {
			name : 'value'
		}, {
			name : 'description'
		} ]
	});

	/* Elementos da janela popup */
	var toolbar = new Ext.Toolbar({
		items : [
				{
					xtype : 'combo',
					id : 'inventaryCmb_' + feature.id,
					fieldLabel : 'Vistoria',
					emptyText : 'Exibindo Vistoria Atual',
					store : djsInventories,
					displayField : 'description',
					valueField : 'value',
					selectOnFocus : false,
					mode : 'remote',
					typeAhead : false,
					editable : false,
					width: 160,
					triggerAction : 'all',
					listeners : {
						select : {
							fn : function(combo, selected) {
								selectedInventory = selected.data.value;
								triggerImages(djsImages, bp_p,
										selectedInventory);
								imagesView.refresh();
							}
						}
					}
				},
				{
					xtype : 'tbbutton',
					text : 'Detalhes',
					cls : 'x-btn-text-icon',
					icon : ROOT_URL + '/imagens/btRecd.gif',
					handler : function() {
						if (selectedInventory) {
							window.open(ROOT_URL
									+ '/faces/'
									+ feature.transaction
									+ '?tipo='
									+ feature.transaction
											.toLowerCase() + 'cad&valor='
									+ bp_p + '-' + selectedInventory,
									"cadastro");
						} else {
							Ext.Msg
									.alert('Detalhes',
											'Selecione uma vistoria');
						}
					}
				} ]
	});

	var selectedInventory;
	var djsImages = new Ext.data.JsonStore({
		root : 'images',
		fields : [ {
			name : 'id'
		}, {
			name : 'filename'
		} ]
	});
	
	djsInventories.load({
		callback : function() {
			if(djsInventories.data.items.length > 0){
				selectedInventory = djsInventories.getAt(djsInventories.data.items.length - 1).data.value;
				triggerImages(djsImages, bp_p, selectedInventory);
			}else{
        		toolbar.disable();
        	}
		}
	});

	var imagesView = new Ext.DataView(
			{
				autoScroll : true,
				store : djsImages,
				tpl : new Ext.XTemplate(
						'<tpl for=".">',
						'<div class="thumb-wrap" id="{id}">',
						'<div class="thumb" style="text-align: center;padding-bottom: 3px;"><img src="{filename}" style="height:72%;width:96%"></div>',
						'</tpl>', '<div class="x-clear"></div>'),
				autoHeight : false,
				height : 220,
				multiSelect : false,
				overClass : 'x-view-over',
				itemSelector : 'div.thumb-wrap',
				deferEmptyText : false,
				emptyText : 'Nenhuma imagem para ser exibida.',
				style : 'border:1px solid #99BBE8; border-top-width: 0;'
			});

	var popup = new GeoExt.Popup({
		title : 'Bem Patrimonial - ' + bp_p,
		location : feature,
		width : 250,
		height : 280,
		maximizable : false,
		collapsible : false,
		resizable : false,
		draggable : true,   
		closable : true,
		anchored : false,
		unpinnable : false,
		map : map,
		items : [ toolbar, imagesView ],
		listeners : {
			close : function() {
				popup.destroy();
				popup = null;
			}
		}
	});
	return popup;
}

function getBpFilterForm(map) {
	Ext.QuickTips.init();

	Ext.apply(Ext.form.VTypes, 
		{
			bpParcela : function(v) {
				return /[0-9]+\-[0-9]{3}/i.test(v);
			},
			bpParcelaText : 'Formato: 0000000-000',
			bpParcelaMask : /[0-9\-]/i
		});

	var form = new Ext.form.FormPanel({
		renderTo : Ext.getBody(),
		frame : true,
		width : 270,
		title : 'Pesquisar',
		items : [{
			xtype : 'textfield',
			anchor : '95%',
			id : 'idBpField',
			fieldLabel : 'Bem Patrimonial',
			vtype : 'bpParcela'
		},{
			xtype : 'numberfield',
			decimalPrecision: 16,
			anchor : '95%',
			id : 'txtLat',
			fieldLabel : 'Latitude',
			value: 	getParameter('lat')
		},{
			xtype : 'numberfield',
			decimalPrecision: 16,
			anchor : '95%',
			id : 'txtLon',
			fieldLabel : 'Longitude',
			value: 	getParameter('lon')
		}],
		buttons :[         
		    {
			text : 'OK',
			xtype : 'tbbutton',
			handler : function() {
				var bpp = Ext.get('idBpField').getValue().replace('-', '');
				
				if(bpp){
					var foundBp = false;
					for(var i=0; i < map.layers.length; i++){
						loadFeaturesByAjax(map.layers[i],'BPPARCELA='+bpp);
					}

				} else {
					var lat = Ext.get('txtLat').getValue();
					var lon = Ext.get('txtLon').getValue();
					
					if(lat && lon){
						centerBy(lat, lon);
					}else{
						Ext.Msg.alert('Pesquisar','Informe um Bem Patrimonial ou as coordenadas de Latitude e Longitude');
					}
				}
			}
		},{
	    	text: 'Pesquisa Avancada',
	    	cls : 'x-btn-text-icon',
			icon : ROOT_URL + '/imagens/btRecd.gif',
			handler : function(){
				window.open(ROOT_URL + '/faces/AssetSuperpsq.jsp?tipo=assetsuperpsq',"Pesquisa");
			}
		}
		]
	});

	return form;
}

var layerRoot = new Ext.tree.TreeNode({
	text : "All Layers",
	expanded : true
});

function addBaseLayer(map, layer) {
	if (layerRoot.childNodes.length == 0) {
		layerRoot.appendChild(new GeoExt.tree.BaseLayerContainer({
			text : "Base",
			map : map,
			expanded : true
		}));
	}
	map.addLayer(layer);
}

function addGmlLayer(map, params) {
	var bpp = getParameter('bp').replace('-', '');
	
	var exibirSomenteSelecionado = false;
	if (params['exibirSomenteSelecionado']) {
		exibirSomenteSelecionado = params['exibirSomenteSelecionado'];
	}
	
	if (bpp && exibirSomenteSelecionado) {
		params['cqlFilter'] = 'BPPARCELA=' + bpp;
	}
	var layer = getGmlMap(map, params);
	
	
	findPoiByParam(layer);	
	
	map.addLayer(layer);
	addGroup(layer);
}

function addWmsLayer(map, params) {
	var layer = getWmsMap(map, params);
	map.addLayer(layer);
	addGroup(layer);
}

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
				}
			}
		}));
	}
};

var positionType = getParameter('positionType');

if(!isEmpty(positionType)){
	positionType = positionType.toLowerCase();
}

mountPanel = function(map) {

	var layersWithPopup = [];

	for (var i = 0; i < map.layers.length; i++) {
		if (map.layers[i].showPopup) {
			layersWithPopup.push(map.layers[i]);
		}
	}

	var selectControl = new OpenLayers.Control.SelectFeature(layersWithPopup, {
		clickout : false,
		toggle : true,
		multiple : true,
		hover : false,
		highlightOnly:true
	});

	map.addControl(selectControl);
	
	//Coordenadas da posicaoo do mouse
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
	
	selectControl.activate();
	
	var mapPanel = new GeoExt.MapPanel({
		border : true,
		region : "center",
		map : map,
		layers : map.layers
	});

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
		bbar : [getBpFilterForm(map)]
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
	centerByLatLonParam();
	loadFeaturesByParam(map);
	fixSelectedFeature(map);
};

function mudarPositionType(novoTipo){
	positionType = novoTipo;
}

function incluirChaveadorDeTipoDeCoordenadas(){
	var div = document.createElement('div');
	div.id = 'olControlMousePositionTypeChange';
	div.innerHTML = ''+
	'<input type="Radio" name="coordType" value="LatLon" checked onClick="mudarPositionType(\'latlon\')"> LatLon'+
	' '+
	'<input type="Radio" name="coordType" value="UTM" onClick="mudarPositionType(\'utm\')"> UTM'
	;

	insertAfter(div,document.getElementById('position_mouse'));
}

function findPoiByParam(layer){
	
	var bp = getParameter('bp');
	var type = getParameter('type');

	if(bp && type && layer){
		
		if(layer.type == type){
		
			var bpp = null;
			if(bp){
				bpp = bp.replace('-','');
			}

			layer.events.register("loadend", layer, function() {
				findPoi(layer, 'BPPARCELA', bpp);
		    });
		}
	}
}

loadFeaturesByParam = function(map){
	var bp = getParameter('bp');
	var type = getParameter('type');
	
	if(bp && type){
		var bpp = getParameter('bp').replace('-', '');
		
		for(var i=0; i < map.layers.length; i++){
			var layer = map.layers[i];
			if(layer.type == type){
				loadFeaturesByAjax(layer,'BPPARCELA='+bpp);
				break;
			}
		}
	}
};