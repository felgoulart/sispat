<html>
<head>
<title>Mapa Geográfico</title>
<!-- Terceiros - Serviços Online -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3.5&sensor=false"></script>
<!-- APIs -->
<script type="text/javascript" src="resources/lib/extjs-3.2.1/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="resources/lib/extjs-3.2.1/ext-all.js"></script>
<link rel="stylesheet" type="text/css" href="resources/lib/extjs-3.2.1/resources/css/ext-all.css" />
<link rel="stylesheet" type="text/css" href="resources/themes/webrails/style.css" />
<script type="text/javascript" src="resources/lib/openlayers/OpenLayers.js"></script>
<script type="text/javascript" src="resources/lib/GeoExt/script/GeoExt.js"></script>
<script type="text/javascript" src="resources/js/utils.js"></script>
<script type="text/javascript" src="resources/js/webrailsgeo.js"></script>
<script type="text/javascript" src="resources/js/OpenLayersUtils.js"></script>
<script type="text/javascript" src="resources/js/geoUtils.js"></script>
<script type="text/javascript" src="resources/js/OpenLayersEdit.js"></script>
<style type="text/css">
/* Custom editing toolbar */
.customEditingToolbar     { float: right; right: 0px; height: 30px; width: 260px; }
.customEditingToolbar div { float: right; right: 5px; height: 24px; width:  24px; }
.olControlNavigationItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/editing_tool_bar.png");
    background-repeat: no-repeat; background-position: -103px -23px;
}
.olControlNavigationItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/editing_tool_bar.png");
    background-repeat: no-repeat; background-position: -103px -0px;
}
.olControlDrawFeaturePolygonItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/editing_tool_bar.png");
    background-repeat: no-repeat; background-position: -26px -0px;
}
.olControlDrawFeaturePolygonItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/editing_tool_bar.png");
    background-repeat: no-repeat; background-position: -26px -23px;
}
.olControlDrawFeaturePathItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/draw_line_off.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlDrawFeaturePathItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/draw_line_on.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlDrawFeaturePointItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/draw_point_off.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlDrawFeaturePointItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/draw_point_on.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlModifyFeatureItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/move_feature_on.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlModifyFeatureItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/move_feature_off.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlDeleteFeatureItemActive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/remove_point_on.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.olControlDeleteFeatureItemInactive {
    background-image:
    url("resources/lib/openlayers/theme/default/img/remove_point_off.png");
    background-repeat: no-repeat; background-position: -0px -1px;
}
.saveWait { background-color: PaleTurquoise; color: MidnightBlue; z-index: 2000; 
    width: 250px; height: 26px; top: 11px; position: absolute; left: 255px;
    filter: alpha(opacity =     50);opacity: 0.8; display: block;
   -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
}
.saveSuccess { background-color: PaleGreen; color: green; z-index: 2000; 
    width: 250px; height: 26px; top: 11px; position: absolute; left: 255px;
    filter: alpha(opacity =     50);opacity: 0.8; display: block;
   -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
}
.saveError { text-align: center; background-color: LightCoral; color: Brwon; }
.hide { display: none; }
.x-tree-node-cb { display: none; }
/* [name=baselayer_checkbox]{ */
/* 	display: inline !important; */
/* } */
</style>
<script type="text/javascript">
var map, selectControl;
var GEOSERVER_URL = 'http://' + window.location.hostname + ':8081/geoserver';
var ROOT_URL = '<%=request.getContextPath()%>';
var LAYER_PROJECTION = 'EPSG:4618';
    i18n = {};
    i18n['success'] = 'Salvo com sucesso!';
    i18n['error'  ] = 'Ocorreu um erro ao tentar salvar';
    i18n['panmap' ] = 'Mover mapa';
    i18n['drawpolygon'] = 'Polígono';
    i18n['drawline'] = 'Linha';
    i18n['drawpoint'] = 'Ponto';
    i18n['modify'] = 'Alterar polígono';
    i18n['delete'] = 'Excluir';
    i18n['save'] = 'Salvar';
    i18n['wait'] = 'Salvando ...';
    i18n['bp'] = 'Bem Patrimonial';
    i18n['format'] = 'Formato';
    i18n['bpnotfound'] = 'BP não encontrado';
i18n['DC'] = 'Desvio de Cliente';
i18n['DP'] = 'Desvio de Pátio';
i18n['LR'] = 'Via de Ramal';
i18n['TL'] = 'Terreno de Leito de Linha';
i18n['LP'] = 'Via Principal';
i18n['PN'] = 'Passagem em Nível';
i18n['BU'] = 'Bueiro';
i18n['PT'] = 'Ponte/Pontilhão';
i18n['TU'] = 'Tunel';
i18n['PI'] = 'Passagem Inferior';
i18n['PS'] = 'Passagem Superior';
i18n['VD'] = 'Viaduto';
i18n['TP'] = 'Terreno de Pátio e Edfificação';
i18n['ED'] = 'Edificação';
Ext.onReady(function(){
    map = createMap('map');
    addBaseLayer(map, loadGoogleMaps('Google Satellite', google.maps.MapTypeId.SATELLITE));
    addBaseLayer(map, loadGoogleMaps('Google Hybrid', google.maps.MapTypeId.HYBRID));
    addBaseLayer(map, loadGoogleMaps('Google RoadMap', google.maps.MapTypeId.ROADMAP));
    addBaseLayer(map, loadGoogleMaps('Google Terrain', google.maps.MapTypeId.TERRAIN));
    var type = getParameter('type');
    var icons = getIcons();
    addGmlLayer(map, {
        title: 'Desvio de Cliente',
        transaction: 'AssetSidng',
        geoserverLayer: 'webrailsgeo:MRS_GEO_DC',
        group: 'Via Permanente',
        icon: icons['DC'],
        type: 'DC',
        defaultColor: '#FFFF99'
    });
    addGmlLayer(map, {
        title: 'Desvio de Pátio',
        transaction: 'AssetYrdsd',
        geoserverLayer: 'webrailsgeo:MRS_GEO_DP',
        group: 'Via Permanente',
        icon: icons['DP'],
        type: 'DP',
        defaultColor: '#FF0000'
    });
    addGmlLayer(map, {
        title: 'Via de Ramal',
        transaction: 'AssetExtln',
        geoserverLayer: 'webrailsgeo:MRS_GEO_LR',
        group: 'Via Permanente',
        icon: icons['LR'],
        type: 'LR',
        defaultColor: '#FF9900'
    });
    addGmlLayer(map, {
        title: 'Terreno de Leito de Linha',
        transaction: 'AssetLbdld',
        geoserverLayer: 'webrailsgeo:MRS_GEO_TL',
        group: 'Terreno de Pátio e Edfificação',
        icon: icons['TL'],
        type: 'TL',
        defaultColor: '#00FF33'
    });
    addGmlLayer(map, {
        title: 'Via Principal',
        transaction: 'AssetMailn',
        geoserverLayer: 'webrailsgeo:MRS_GEO_LP',
        group: 'Via Permanente',
        icon: icons['LP'],
        type: 'LP',
        exibirSomenteSelecionado: true,
        defaultColor: '#FFFF00'
    });
    addGmlLayer(map, {
        title: 'Passagem em Nível',
        transaction: 'AssetLvlcr',
        geoserverLayer: 'webrailsgeo:MRS_GEO_PN',
        group: 'Cruzamento',
        icon: icons['PN'],
        type: 'PN',
        defaultColor: '#FF00CC'
    });
    addGmlLayer(map, {
        title: 'Bueiro',
        transaction: 'Assetculvt',
        geoserverLayer: 'webrailsgeo:MRS_GEO_BU',
        group: 'Obras de Arte',
        icon: icons['BU'],
        type: 'BU',
        defaultColor: '#9900CC'
    });
    addGmlLayer(map, {
        title: 'Ponte/Pontilhão',
        transaction: 'AssetBrdge',
        geoserverLayer: 'webrailsgeo:MRS_GEO_PT',
        group: 'Obras de Arte',
        icon: icons['PT'],
        type: 'PT',
        defaultColor: '#00FFCC'
    });
    addGmlLayer(map, {
        title: 'Tunel',
        transaction: 'AssetTunnl',
        geoserverLayer: 'webrailsgeo:MRS_GEO_TU',
        group: 'Obras de Arte',
        icon: icons['TU'],
        type: 'TU',
        defaultColor: '#330099'
    });
    addGmlLayer(map, {
        title: 'Passagem Inferior',
        transaction: 'AssetUndps',
        geoserverLayer: 'webrailsgeo:MRS_GEO_PI',
        group: 'Obras de Arte',
        icon: icons['PI'],
        type: 'PI',
        defaultColor: '#CC0099'
    });
    addGmlLayer(map, {
        title: 'Passagem Superior',
        transaction: 'AssetOvrps',
        geoserverLayer: 'webrailsgeo:MRS_GEO_PS',
        group: 'Obras de Arte',
        icon: icons['PS'],
        type: 'PS',
        defaultColor: '#FFCCCC'
    });
    addGmlLayer(map, {
        title: 'Viaduto',
        transaction: 'AssetViadt',
        geoserverLayer: 'webrailsgeo:MRS_GEO_VD',
        group: 'Obras de Arte',
        icon: icons['VD'],
        type: 'VD',
        defaultColor: '#00CCCC'
    });
    addGmlLayer(map, {
        title: 'Terreno de Pátio e Edfificação',
        transaction: 'AssetYrdld',
        geoserverLayer: 'webrailsgeo:MRS_GEO_TP',
        group: 'Terreno de Pátio e Edfificação',
        icon: icons['TP'],
        type: 'TP',
        defaultColor: '#009933'
    });
    addGmlLayer(map, {
        title: 'Edificação',
        transaction: 'AssetBldng',
        geoserverLayer: 'webrailsgeo:MRS_GEO_ED',
        group: 'Terreno de Pátio e Edfificação',
        icon: icons['ED'],
        type: 'ED',
        defaultColor: '#74BAAC'
    });
    mountPanel(map);
    var itens = Ext.select(".gx-tree-layer-icon").elements;
    itens[0].src = icons['LP']; // @mainLine
    itens[1].src = icons['LR']; // @extensionLine
    itens[2].src = icons['DP']; // @sidingYard
    itens[3].src = icons['DC']; // @sidingClient
    itens[4].src = icons['ED']; // @building
    itens[5].src = icons['TP']; // @yardLand
    itens[6].src = icons['TL']; // @lineBedLand
    itens[7].src = icons['PN']; // @levelCrossing
    itens[8].src = icons['VD']; // @viaduct
    itens[9].src = icons['PS']; // @overpass
    itens[10].src = icons['PI']; // @underpass
    itens[11].src = icons['TU']; // @tunnel
    itens[12].src = icons['PT']; // @bridgeSmallBridge
    itens[13].src = icons['BU']; // @culvert
});
/* Function that associates a record type to an icon that represents it */
function getIcons() {
    var urlDaImagem = ROOT_URL + '/resources/themes/webrails/img/';
    var icons = [];
    icons['LP']= urlDaImagem +'direction_down_yellow.png'; // @mainLine
    icons['LR']= urlDaImagem +'direction_down_orange.png'; // @extensionLine
    icons['DP']= urlDaImagem +'direction_down_red.png'; // @sidingYard
    icons['DC']= urlDaImagem +'direction_down_yellowlight.png'; // @sidingClient
    icons['ED']= urlDaImagem +'direction_down_turquoise1.png'; // @building
    icons['TP']= urlDaImagem +'direction_down_green.png'; // @yardLand
    icons['TL']= urlDaImagem +'direction_down_greenverylight.png'; // @lineBedLand
    icons['PN']= urlDaImagem +'direction_down_pink.png'; // @levelCrossing
    icons['VD']= urlDaImagem +'direction_down_bluelight.png'; // @viaduct
    icons['PS']= urlDaImagem +'direction_down_pinklight.png'; // @overpass
    icons['PI']= urlDaImagem +'levelcrossing_pinkdark.png'; // @underpass
    icons['TU']= urlDaImagem +'direction_down_blue_stromg.png'; // @tunnel
    icons['PT']= urlDaImagem +'direction_down_blueverylight.png'; // @bridgeSmallBridge
    icons['BU']= urlDaImagem +'direction_down_cyan.png'; // @culvert
    return icons;
}
</script>
</head>
<body>
  <div id="map"></div>
  <div id="status"></div>
</body>
</html>
