<!DOCTYPE html>
<html>
<head>
<title>Sispat GEO</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/geo/style.css">
</head>
<body>
    <div class="searchBox">
        <input id="searchField" type="text" placeholder="Bem patrimonial ou latitude, longitude">
        <input id="searchButton" type="button" value="Buscar">
    </div>
    <div class="coordsBox">
        <span id="latlonField">-10.055402736564224,-56.337890625</span>
        <span>
            <input type="Radio" name="coordType" value="LatLon" checked> LatLon
            <input type="Radio" name="coordType" value="UTM"> UTM
        </span>
    </div>
    <div class="bpTypeBox" style="display:none;">
        <div class="title"><span>Bens patrimoniais</span></div>
        <div id="bpTypeForm"><!-- The bp types filled automatically from parameters --></div>
    </div>
    <div id="collapseTypeBox" class="gmapsRightButton" onclick="hideBpTypeBox()"><img src="resources/geo/images/collapse.ico"/></div>
    <div id="expandTypeBox"   class="gmapsRightButton" onclick="showBpTypeBox()"><img src="resources/geo/images/expand.ico" title="Tipos de bens patrimoniais"/></div>
	<div id="map"></div>
	<script>
	   var ROOT_URL = '<%=request.getContextPath()%>';

        var parameters = [];

        parameters['VFCL'] = {
            title: 'CENTRO-LESTE',
            transaction: 'AssetLbdld',
            group: 'Via Férrea',
            color: '#FFFF00',
            icon: 'resources/geo/icons/lp.ico'
        };

        parameters['VFSD'] = {
            title: 'CENTRO-SUDESTE',
            transaction: 'AssetLbdld',
            group: 'Via Férrea',
            color: '#FFFF00',
            icon: 'resources/geo/icons/lp.ico'
        };

        parameters['VFMB'] = {
            title: 'MINAS-BAHIA',
            transaction: 'AssetLbdld',
            group: 'Via Férrea',
            color: '#FFFF00',
            icon: 'resources/geo/icons/lp.ico'
        };

        parameters['VFMR'] = {
            title: 'MINAS-RIO',
            transaction: 'AssetLbdld',
            group: 'Via Férrea',
            color: '#FFFF00',
            icon: 'resources/geo/icons/lp.ico'
        };

        parameters['FDCL'] = {
            title: 'CENTRO-LESTE',
            transaction: 'AssetLbdld',
            group: 'Faixa de Domínio de 15 metros',
            color: '#00FF33',
            icon: 'resources/geo/icons/fd.ico'
        };

        parameters['FDSD'] = {
            title: 'CENTRO-SUDESTE',
            transaction: 'AssetLbdld',
            group: 'Faixa de Domínio de 15 metros',
            color: '#00FF33',
            icon: 'resources/geo/icons/fd.ico'
        };

        parameters['FDMB'] = {
            title: 'MINAS-BAHIA',
            transaction: 'AssetLbdld',
            group: 'Faixa de Domínio de 15 metros',
            color: '#00FF33',
            icon: 'resources/geo/icons/fd.ico'
        };

        parameters['FDMR'] = {
            title: 'MINAS-RIO',
            transaction: 'AssetLbdld',
            group: 'Faixa de Domínio de 15 metros',
            color: '#00FF33',
            icon: 'resources/geo/icons/fd.ico'
        };

        parameters['FRCL'] = {
            title: 'CENTRO-LESTE',
            transaction: 'AssetLbdld',
            group: 'Faixa da RFFSA (Documental)',
            color: '#FFA500',
            icon: 'resources/geo/icons/fr.ico'
        };

        parameters['FRSD'] = {
            title: 'CENTRO-SUDESTE',
            transaction: 'AssetLbdld',
            group: 'Faixa da RFFSA (Documental)',
            color: '#FFA500',
            icon: 'resources/geo/icons/fr.ico'
        };

        parameters['FRMB'] = {
            title: 'MINAS-BAHIA',
            transaction: 'AssetLbdld',
            group: 'Faixa da RFFSA (Documental)',
            color: '#FFA500',
            icon: 'resources/geo/icons/fr.ico'
        };

        parameters['FRMR'] = {
            title: 'MINAS-RIO',
            transaction: 'AssetLbdld',
            group: 'Faixa da RFFSA (Documental)',
            color: '#FFA500',
            icon: 'resources/geo/icons/fr.ico'
        };

        parameters['MKCL'] = {
            title: 'CENTRO-LESTE',
            transaction: 'AssetLbdld',
            group: 'Marcos KM RFFSA',
            color: '#800000',
            icon: 'resources/geo/icons/mk.ico'
        };

        parameters['MKSD'] = {
            title: 'CENTRO-SUDESTE',
            transaction: 'AssetLbdld',
            group: 'Marcos KM RFFSA',
            color: '#800000',
            icon: 'resources/geo/icons/mk.ico'
        };

        parameters['MKMB'] = {
            title: 'MINAS-BAHIA',
            transaction: 'AssetLbdld',
            group: 'Marcos KM RFFSA',
            color: '#800000',
            icon: 'resources/geo/icons/mk.ico'
        };

        parameters['MKMR'] = {
            title: 'MINAS-RIO',
            transaction: 'AssetLbdld',
            group: 'Marcos KM RFFSA',
            color: '#800000',
            icon: 'resources/geo/icons/mk.ico'
        };

        parameters['AD'] = {
            title:'Área de Invasão em Destaque',
            transaction: 'AssetLbdld',
            group: 'Invasão',
            color: '#00FFFF',
            icon: 'resources/geo/icons/ad.ico'
        };

        parameters['IV'] = {
            title:'Invasão de Faixa de Domínio',
            transaction: 'AssetInvas',
            group: 'Invasão',
            color: '#FF00CC',
            icon: 'resources/geo/icons/iv.ico'
        };

        parameters['ED'] = {
            title: 'Edificação',
            transaction: 'AssetBldng',
            group: 'Edificações',
            color: '#9900CC',
            icon: 'resources/geo/icons/ed.ico'
        };

        parameters['VG'] = {
            title: 'Vagão',
            transaction: 'AssetVhwag',
            group: 'Veículos',
            color: '#FF8000',
            icon: 'resources/geo/icons/vg.ico'
        };

        parameters['LC'] = {
            title: 'Locomotiva',
            transaction: 'AssetVheng',
            group: 'Veículos',
            color: '#808080',
            icon: 'resources/geo/icons/lc.ico'
        };

        parameters['VP'] = {
            title: 'Carro de Passageiro',
            transaction: 'AssetVhpax',
            group: 'Veículos',
            color: '#B624FF',
            icon: 'resources/geo/icons/vp.ico'
        };

        parameters['VR'] = {
            title: 'Veículo Rodo Ferroviário',
            transaction: 'AssetVhrfv',
            group: 'Veículos',
            color: '#809ABB',
            icon: 'resources/geo/icons/vr.ico'
        };

        parameters['EG'] = {
            title: 'Equipamento de Grande Porte',
            transaction: 'AssetEqgpt',
            group: 'Veículos',
            color: '#DCAB03',
            icon: 'resources/geo/icons/eg.ico'
        };
        
        parameters['VX'] = {
            title: 'Veículo Auxiliar',
            transaction: 'AssetVhaux',
            group: 'Veículos',
            color: '#003F5D',
            icon: 'resources/geo/icons/vx.ico'
        };
	</script>
	<script async defer src="//maps.googleapis.com/maps/api/js?key=AIzaSyDXFxk7BvScu1Jqe_C1GAbCQXwn4Gf8yd4&callback=initMap"></script>
	<script src="resources/geo/libs/jquery-3.2.1.min.js"></script>
	<script src="resources/js/utils.js"></script>
	<script src="resources/geo/geoUtils.js"></script>
	<script src="resources/geo/sispatgeo.js"></script>
</body>
</html>