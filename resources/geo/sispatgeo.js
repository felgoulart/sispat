var map;
var url = window.location.href;
var urlParams = url.indexOf('?') > -1 ? url.substring(url.indexOf("?"), url.length) : '';

var brazil = {
	lat : -14.235004,
	lng : -51.92528
};

function initMap() {

	map = new google.maps.Map(document.getElementById('map'), {
		center : brazil,
		mapTypeId : 'satellite',
		maxZoom: 24
	});

	showBpTypeBox();
	
/*--- Color and Icons styles by parameters -----------------------------------*/
	map.data.setStyle(function(feature) {
			
		var featureLayer = feature.getProperty('TIPO');
		var params = parameters[featureLayer];

		var selectedStyle = {
			pointRadius : 12,
			strokeColor : 'red',
			fillColor : 'red',
			strokeOpacity : 1.0,
			fillOpacity : 0.3,
			icon : params.icon.replace(/(.*)\/(.*)(\.[a-z]+$)/i, '$1/$2-red$3')
		};

		var defaultStyle = {
			pointRadius : 12,
			strokeColor : params.color,
			fillColor : params.color,
			strokeOpacity : 1.0,
			fillOpacity : 0.3,
			icon : params.icon
		};

		var notFoundStyle = {
			strokeColor : 'black',
			fillColor : 'black',
			strokeOpacity : 1.0,
			fillOpacity : 0.3
		};
		
		if (params != undefined) {
			return feature.getProperty('selected') ? selectedStyle
					: defaultStyle;
		}
		
		return notFoundStyle;
	});

/*--- LatLon Point -----------------------------------------------------------*/
	var marker;
	var setMarker = function(position, zoom) {
		if (marker) {
			marker.setPosition(position);
		} else {
			marker = new google.maps.Marker( {
				position : position,
				map : map
			});
		}

		if (zoom) {
			var bounds = new google.maps.LatLngBounds();
			bounds.extend(position);
			map.fitBounds(bounds);
		}

		$("#searchField").fadeTo(400, 0.80, function() {
			$(this).fadeTo(400, 1.0);
		});
		$("#searchField").val(position.lat() + ',' + position.lng());
	};

	google.maps.event.addListener(map, 'click', function(event) {
		var position = event.latLng;
		setMarker(position);
	});

/*--- BP selection -----------------------------------------------------------*/
	
	map.data.addListener('click', function(event) {
		var feature = event.feature;
		
		if(feature.getProperty('BPPARCELA') == undefined) {
			if (feature.getProperty('selected')) {
				feature.setProperty('selected', false);
			} else {
				feature.setProperty('selected', true);
			}
			return;
		}

		var bppFeature = ('' + feature.getProperty('BPPARCELA')).replace('-', '');

		var layerType = feature.getProperty('TIPO');
		var layerParams = parameters[layerType];

		if (feature.getProperty('selected')) {
			feature.infoWindow.close();
			feature.setProperty('selected', false);
			return;
		}
		
		var position;
		if (feature.getGeometry().getType() == 'Point') {
			position = feature.getGeometry().get();
		} else {/* Others */
			var bounds = new google.maps.LatLngBounds();
			feature.getGeometry().forEachLatLng(
					function(latlng) {
						bounds.extend(latlng);
					});
			position = bounds.getCenter();
		}

		$.get('geo/InfoWindowServlet?bpparcela=' + bppFeature, function(data) {

			getVistorias = function() {
				var html = '';
				$.each(data.vistorias, function(index, vistoria) {
					html += '<option value="' + index + '">' + vistoria.codigo + '</option>';
				});
				return html;
			};

			changeVistoria = function(vistoriaIndex) {
				$('#' + data.bpp + '_detalhesAction').attr('href', getDetalhesURL(vistoriaIndex));
				$('#' + data.bpp + '_imagemList').html(getImagens(vistoriaIndex));
			};

			getDetalhesURL = function(vistoriaIndex) {
				return 'faces/' + layerParams.transaction + '?tipo=' + layerParams.transaction.toLowerCase() + 'cad&valor=' + data.vistorias[vistoriaIndex].codigo;
			};

			getImagens = function(vistoriaIndex) {
				var vistoria = data.vistorias[vistoriaIndex];

				var html = '';
				if (vistoria && vistoria.imagens.length > 0) {
					$.each(vistoria.imagens, function(index, imagem) {
						html += '<img width="223" height="165" src="/sispat_vli_images/' + imagem + '" />';
					});
				} else {
					html += '<img width="223" height="165" src="resources/geo/images/images-notfound.gif" />';
				}
				return html;
			};

			var content = '<div id="iw_'+bppFeature+'" class="iw-container">'
				+ ' <div class="iw-title">Bem patrimonial '
				+ data.bpp
				+ '</div>'
				+ ' <div class="iw-header">'
				+ '  <div>';
			if (data.vistorias.length != 0) {
				content += '   <span class="survey">'
					+ '    Vistoria: '
					+ '    <select id="'
					+ data.bpp
					+ '_vistoriaField" onchange="changeVistoria(this.value)">'
					+ getVistorias()
					+ '    </select>'
					+ '   </span>'
					+ '   <span class="details">'
					+ '    <a id="'
					+ data.bpp
					+ '_detalhesAction" target="_blank" href="'
					+ getDetalhesURL(0)
					+ '" alt="Detalhes"><img src="resources/geo/images/btRecd.gif" alt="Detalhes"></a>'
					+ '   </span>';
			} else {
				content += '   <span class="survey">' 
					+ '    &nbsp;' 
					+ '   </span>' 
					+ '   <span class="details">&nbsp;</span>';
			}
			content += '  </div>'
				+ '  <div style="font-size: xx-small;">LatLon: '
				+ position
				+ '</div>'
				+ ' </div>'
				+ ' <div class="iw-content" id="'
				+ data.bpp
				+ '_imagemList">'
				+ getImagens(0) + '</div>';
				+'</div>';
				
			var iw = new google.maps.InfoWindow({
				position: position,
				content: content,
				maxWidth: 250,
				pixelOffset: new google.maps.Size(0,-30)
			});				
			
			iw.open(map);
			google.maps.event.addListener(iw, 'domready', function() { /* Fixing InfoWindow border */
				$(document).ready(function(){
					$('.gm-style-iw').each(function(index) {
						$(this).parent().attr('class','gmsiw-p');
						$(this).parent().parent().attr('class','gmsiw-pp');
						$(this).prev().attr('class','gmsiw-prv');
						var $iwb = $(this).prev(); 
						$iwb.children(':nth-child(2)').attr('class','gmsiw-hide');
						$iwb.children(':nth-child(4)').attr('class','gmsiw-hide');

						$iwb.children(':nth-child(1)').attr('class','gmsiw-arrow');
						$iwb.children(':nth-child(3)').attr('class','gmsiw-arrow');
					});
				});
			});
			
    		feature.infoWindow = iw;
    		feature.setProperty('selected', true);
		});
	});

/*--- Zoom to selected BP from Sispat ----------------------------------------*/
	var lastBp = '';
	var highlightBP = function(feature, bpp) {
		var bppFeature = '' + feature.getProperty('BPPARCELA');
		var bpParameter = bpp.replace('-', '');
		if (bppFeature === bpParameter) {
			
			var bounds = new google.maps.LatLngBounds();
			feature.getGeometry().forEachLatLng(function(latlng) {
				bounds.extend(latlng);
			});
			map.fitBounds(bounds);
			var event = {};
			event.feature = feature;
			
			if(bppFeature !== lastBp) {
				google.maps.event.trigger(map.data, 'click', event);
			}
			
			lastBp = bppFeature;
		}
	};

	google.maps.event.addListener(map.data, 'addfeature', function(event) {
		var bp = getParameter('bp');
		highlightBP(event.feature, bp.substring(0, bp.length - 2).replace('-',''));
	});

/*--- Search BP or LatLon ----------------------------------------------------*/
	$("#searchButton").click(function(event) {
		var searchField = $("#searchField").val();

		var bppRegex = /^(\d)+\-(\d){3}$/g;
		var latLonRegex = /^(\-?\d+(\.\d+)?),\s*(\-?\d+(\.\d+)?)$/g;

		if (searchField.match(bppRegex)) {
			map.data.forEach(function(feature) {
				highlightBP(feature, searchField);
			});
		} else if (searchField.match(latLonRegex)) {
			var coords = searchField.split(',');
			position = new google.maps.LatLng(coords[0], coords[1]);
			setMarker(position, true);
		} else if (searchField != '') {
			alert('Busca invalida: ' + searchField);
		}
	});

	$(document).keypress(function(e) {
		if (e.which == 13) {
			$("#searchButton").click();
		}
	});

/*--- Dynamic LatLon box -----------------------------------------------------*/
	map.addListener('mousemove', function(event) {
		var coordType = $('input[name=coordType]:checked').val();
		if (coordType === 'LatLon') {
			$('#latlonField').text(event.latLng.lat() + ',' + event.latLng.lng());
		} else {
			$('#latlonField').text(latLonToUMT(event.latLng.lat(), event.latLng.lng()));
		}
	});
	
/*--- Dynamic Show/Hide Points by zoom -------------------------------------- */
	var lastZoom = map.zoom;
	var ZOOM_TO_HIDE_ICONS = 16; 

	var dynamicShowPointsByZoom = function() {

		var otherTypesByBp = {};
		
		map.data.forEach(function(feature) {
			if(feature.getGeometry().getType() !== 'Point') {
				otherTypesByBp[feature.getProperty('BPPARCELA')] = feature;
			}
		});

		map.data.forEach(function(feature) {
			var typeSelected = parameters[feature.getProperty('TIPO')].selected;
			if(typeSelected) {
				if(feature.getGeometry().getType() === 'Point') {
					map.data.overrideStyle(feature, {visible : map.zoom <= ZOOM_TO_HIDE_ICONS});
				}
			}
		});
		
		lastZoom = map.zoom;
	};
	
	map.addListener('zoom_changed', dynamicShowPointsByZoom);


/*--- BP Types selection -----------------------------------------------------*/
	//Grouping...
	var groups = [];
	for (index in parameters) {
		var item = parameters[index];
		if (!groups[item.group]) {
			groups[item.group] = [];
		}
		
		item.index = index;
		if(item.selected == undefined) {
			item.selected = false;
		}
		groups[item.group].push(item);
	}

	var groupFieldId = [];
	var groupSelection = [];
	for (index in groups) {
		groupFieldId[index]=index.replace(/\W+/g, '-').toLowerCase();
		groupSelection[index] = false;
	}
	
	
	//Filling type selection ...
	for (index in groups) {
		var group = groups[index];
		if (group.length != 0) {
			$('#bpTypeForm').append('<div class="group" onclick="toggleGroup(\'' + index + '\')"><span>' + index + '</span><span><input type="checkbox" id="' + groupFieldId[index] + '_groupField"/></span></div>');
			for (index in group) {
				var item = group[index];
				$('#bpTypeForm').append('<div class="bpType" style="border-left-color: ' + item.color + ';" onclick="toggleType(\'' + item.index + '\')"><span><img src="' + item.icon + '"/></span><span class="typeTitle">' + item.title + '</span><span><input type="checkbox" id="' + item.index + 'typeField"/></span></div>');
			}
		}
	}

	toggleGroup = function(selectedGroup) {
		
		var selected = groupSelection[selectedGroup];
		
		var group = groups[selectedGroup];
		for (index in group) {
			var item = group[index];
			parameters[item.index].selected = selected;
			toggleType(item.index);
		}
		
		groupSelection[selectedGroup] = !selected;
		$('#' + groupFieldId[selectedGroup] + '_groupField').prop('checked', !selected);
	};
	
	toggleType = function(selectedType) {
		
		var selected = !parameters[selectedType].selected;	
		var loaded = parameters[selectedType].loaded;

		if(!selected && groupSelection[parameters[selectedType].group]) {
			groupSelection[parameters[selectedType].group] = false;
			$('#' + groupFieldId[parameters[selectedType].group] + '_groupField').prop('checked', false);
		}
		
		if (!loaded) {
			map.data.loadGeoJson('geo/FeaturesServlet?type=' + selectedType);
			parameters[selectedType].loaded = true;
		}
		
		map.data.forEach(function(feature) {
			var bpType = '' + feature.getProperty('TIPO');
			if (bpType === selectedType) {
				if (selected) {
					highlightBP(feature, getParameter('bp'));
					map.data.revertStyle(feature);
				} else {
					if (feature.infoWindow) { //Remove InfoWindow reference
						feature.infoWindow.close();
						feature.infoWindow = undefined;
						feature.setProperty('selected', false);
					}
					map.data.overrideStyle(feature, {visible : false});
				}
			}
		});

		$('#' + selectedType + 'typeField').prop('checked', selected);
		parameters[selectedType].selected = selected;
		
	};

	var urlType = getParameter('type');
	if (urlType) {
		parameters[urlType].selected = false;
		toggleType(urlType);
	}
	
	/* Default selected layer */
	for (index in parameters) {
		var item = parameters[index];
		if(item.selected) {
			item.selected = false;
			toggleType(item.index);
		}
	}
	
/*--- Drone ImageMapType ---------------------------------------------------- */
	let droneMapTypeIndex;
	$.get('geo/DroneImageServlet', function(data) {
		droneMapTypeIndex = data; 
	});
	
	var imageMapType = new google.maps.ImageMapType({
	    getTileUrl: function(coord, zoom) {
			if(droneMapTypeIndex) {
				for(var i=0; i < droneMapTypeIndex.length; i++) {
					let indexInfo = droneMapTypeIndex[i];
					if (zoom < indexInfo.minZoom || zoom > indexInfo.maxZoom ||
							indexInfo.bounds[zoom][0][0] > coord.x || coord.x > indexInfo.bounds[zoom][0][1] ||
							indexInfo.bounds[zoom][1][0] > coord.y || coord.y > indexInfo.bounds[zoom][1][1]) {
						continue;
			        }
					let image_url = "/sispat_geo_drone/" + indexInfo.folderName + "/" + zoom + "/" + coord.x + "/" + coord.y + ".png";
					if(imageExists(image_url)) {
						return image_url;
					} else {
						continue;
					}		
				}
				return null;
			}
        },
	    tileSize: new google.maps.Size(256, 256)
	});
	map.overlayMapTypes.push(imageMapType);
/*----------------------------------------------------------------------------*/
}

showBpTypeBox = function() {
	$('#expandTypeBox').hide();
	$('.bpTypeBox').slideDown();
};

hideBpTypeBox = function() {
	$('.bpTypeBox').slideUp('fast');
	$('#expandTypeBox').show();
};
