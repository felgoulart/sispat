/* Crossbrowser PSQ Pages from Sispat 
 * 
 * Author: Wendel Silverio
 * Since: march/2014
 * Version: 0.2.2
 */
var isChrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
var isFirefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
var isSafari = navigator.userAgent.toLowerCase().indexOf('safari') > -1 && !isChrome;
var isIeGreaterThan11 = getInternetExplorerVersion() >= 11;

function crossPsqPage(styleCol) {

	if(isChrome || isFirefox || isSafari || isIeGreaterThan11) {

		if(!styleCol || styleCol.length == 0) {
			alert('styleCol parameter is required.');
		}
	
		crossHeader(styleCol);
		crossFilter(styleCol);
		crossResult(styleCol);
	
	}
	
	if(isIeGreaterThan11){
		ieGreaterThan11Hack();
	}
	
	if(isChrome) {
		chromeHack();
	}
	
	if(isSafari) {
		safariHack();
	}
}

function crossHeader(styleCol) {
	
	var gridHeader = document.getElementById('cadForm:dtDados_tt');
	gridHeader.setAttribute('class','grid-header');
	gridHeader.removeAttribute('cellpadding');
	gridHeader.removeAttribute('cellspacing');
	gridHeader.removeAttribute('rules');
	
	var thHeader = gridHeader.getElementsByTagName('th');
	for (var i = 0; i < thHeader.length; i++) {
		thHeader[i].removeAttribute('class');
		thHeader[i].removeAttribute('scope');
		thHeader[i].setAttribute('style', styleCol[i]);
	};

	var spanHeader = gridHeader.getElementsByTagName('span');
	for(var i=0; i < spanHeader.length; i++){
		spanHeader[i].removeAttribute('class');
		spanHeader[i].removeAttribute('style');
	}
	
}

function crossFilter(styleCol) {
	
	/* Filter */
	var gridFilter = document.getElementById('cadForm:dtDados_ft');
	gridFilter.setAttribute('class','grid-filter');
	gridFilter.removeAttribute('cellpadding');
	gridFilter.removeAttribute('cellspacing');
	gridFilter.removeAttribute('rules');

	var tdFilter = gridFilter.getElementsByTagName('td');
	for (var i = 0; i < tdFilter.length; i++) {
		tdFilter[i].setAttribute('style',styleCol[i]);
		tdFilter[i].removeAttribute('class');
		var inputs = tdFilter[i].getElementsByTagName('input');
		if(inputs.length > 0) {
			inputs[0].setAttribute('style',styleCol[i]);	
			inputs[0].removeAttribute('class');	
		}
	};
	
	var spanFilter = gridFilter.getElementsByTagName('span');
	for (var i = 0; i < spanFilter.length; i++) {
		spanFilter[i].removeAttribute('class');
		spanFilter[i].removeAttribute('style');
	}
}

function crossResult(styleCol){
	
	/* Result */
	var gridResult = document.getElementById('cadForm:dtDados');
	gridResult.removeAttribute('cellpadding');
	gridResult.removeAttribute('cellspacing');
	gridResult.removeAttribute('rules');

	var trResult = gridResult.getElementsByTagName('tr');
	for (var i = 0; i < trResult.length; i++) {
		var tdResult = trResult[i].getElementsByTagName('td');
		if(tdResult.length > 0) {
			for(var j = 0; j < tdResult.length; j++){
				tdResult[j].removeAttribute('class');	
				tdResult[j].setAttribute('style',styleCol[j+1]+'margin-left: 6px;');	
			}
		}
	}
	
	var spanResult = gridResult.getElementsByTagName('span');
	for (var i = 0; i < spanResult.length; i++) {
		spanResult[i].removeAttribute('class');
		spanResult[i].removeAttribute('style');
	}
	
	document.getElementById('div_dtDados').style='direction:ltr;margin-left: 5px;';
}

function chromeHack() {
	document.getElementById('cadForm:dtDados').setAttribute('style','position:relative;left:6px;');
}

function safariHack() {
	document.getElementById('cadForm:dtDados').setAttribute('style','position:relative;left:3px;');
	
	var divDtDados	= document.getElementById('div_dtDados');
	
	var divDtDadosWrap = document.createElement('div');
	divDtDadosWrap.id = 'div_dtdados_wrap';
	divDtDadosWrap.setAttribute('style','overflow-y:hidden;height: 460px;');
	wrap(divDtDados, divDtDadosWrap);	
	
	var divFakeScroll = document.createElement('div');
	divFakeScroll.id = 'div_fake_scroll';
	divFakeScroll.setAttribute('style','overflow-y: scroll; height: 460px; float: left;');
	
	var divFakeScrollInner = document.createElement('div');
	divFakeScrollInner.id = 'div_fake_scroll_inner';
	divFakeScrollInner.setAttribute('style','float: left;background:green;width:1px;');
	
	wrap(divFakeScrollInner, divFakeScroll);

	divDtDadosWrap.parentNode.appendChild(divFakeScroll);
	divDtDadosWrap.parentNode.appendChild(divDtDadosWrap);
	
	divDtDadosWrap.parentNode.setAttribute('style',''); /* To remove additional scrollbar */
	
	document.getElementById('div_fake_scroll_inner').style.height=(document.getElementById('div_dtDados').offsetHeight+130)+'px';
	
	divFakeScroll.onscroll = function() {
		divDtDadosWrap.scrollTop = divFakeScroll.scrollTop;
    };
    
    divDtDadosWrap.onscroll = function() {
    	divFakeScroll.scrollTop = divDtDadosWrap.scrollTop;
    };
}

function ieGreaterThan11Hack(){
	document.getElementById('cadForm:dtDados').setAttribute('style','position:relative;left:4px;');
}