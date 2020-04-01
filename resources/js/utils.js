/* Proj: Sispat by Wendel v0.2.2 */

function popup(URL){

    var _width = 800;
    var _height = 600;
    
    var _left = 99;
    var _top = 99;
    
    window.open(URL, 'Popup', 'width=' + _width + ', height=' + _height + ', top=' + _top + ', left=' + _left + ', scrollbars=yes, status=no, toolbar=no, location=no, directories=no, menubar=no, resizable=no, fullscreen=yes');
    
}

function contains(str1, str2){
    return str1.indexOf(str2) != -1;
}

function getParameter(name){
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( window.location.href );
  if( results == null )
    return "";
  else
    return results[1];
}

/*
 * theClass 
 * 	Nome da classe css sem o ponto
 */
function getElementByClass(theClass){
	var elements = new Array();
	//Create Array of All HTML Tags
	var allHTMLTags = document.getElementsByTagName('*');
	//Loop through all tags using a for loop
	var e = 0;
	for (var i = 0; i < allHTMLTags.length; i++) {
		//Get all tags with the specified class name.
		if (allHTMLTags[i].className == theClass) {
			elements[e] = allHTMLTags[i];
			e++;
		}
	}
	return elements;
}

function onlyNumber(e){
    var key=(window.event)?event.keyCode:e.which;   
    if((key>47 && key<58)) return true;
    else{
    	if (key==8 || key==0) return true;
	else  return false;
    }
}

function isEmpty(value){
	if(value == null || value == 'undefined' || value == ''){
		return true;
	}else{
		return false;
	}
}

/*Função que insere um elemento html após o outro*/
function insertAfter(newElement, targetElement) {
	//target is what you want it to go after. Look for this elements parent.
	var parent = targetElement.parentNode;

	//if the parents lastchild is the targetElement...
	if (parent.lastchild == targetElement) {
		//add the newElement after the target element.
		parent.appendChild(newElement);
	} else {
		// else the target has siblings, insert the new element between the target and it's next sibling.
		parent.insertBefore(newElement, targetElement.nextSibling);
	}
}

function insertBefore(actualElement, otherElement) {

	var parent = actualElement.parentNode;
	
	if (parent.lastchild == actualElement) {
		parent.appendChild(otherElement);
	} else {
		parent.insertBefore(otherElement, actualElement.nextSibling);
	}
}

function wrap(fromElement, toElement){
	if(!fromElement || !toElement){
		alert('idFrom and idTo paramenters is required');
	}
	
	toElement.appendChild(fromElement.cloneNode(true));
	if(fromElement.parentNode != null){
		fromElement.parentNode.replaceChild(toElement, fromElement);
	}
}

function clone(obj) {
    if (null == obj || "object" != typeof obj) return obj;
    var copy = obj.constructor();
    for (var attr in obj) {
        if (obj.hasOwnProperty(attr)) copy[attr] = obj[attr];
    }
    return copy;
}

function getInternetExplorerVersion() {
	var rv = -1;
	if (navigator.appName == 'Microsoft Internet Explorer') {
		var ua = navigator.userAgent;
		var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
		if (re.exec(ua) != null)
			rv = parseFloat(RegExp.$1);
	} else if (navigator.appName == 'Netscape') {
		var ua = navigator.userAgent;
		var re = new RegExp("Trident/.*rv:([0-9]{1,}[\.0-9]{0,})");
		if (re.exec(ua) != null)
			rv = parseFloat(RegExp.$1);
	}
	return rv;
}

function remove(array, item) {
	
	var index;
	for(i = 0; i < array.length; i++) {
		if(array[i] == item) {
			index = i;
		}
	}
	
	return array.splice(index,1);
}

function imageExists(image_url) {
    var http = new XMLHttpRequest();
    http.open('HEAD', image_url, false);
    http.send();
    return http.status != 404;
}