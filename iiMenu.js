// JavaScript Document
var lastSubmenu;
var lastSubmenuTimer;

//adEvento(window, "load", iniciarMenu);
adEvento(document, "click", hideMenu);

function iniciarMenu()
{
    montaSMenu();
    montaMenu();
}

function montaSMenu()
{
    var ul = gE('smenus');
    if(ul) { // UL - MENUS
        for(k=0; k < ul.childNodes.length; k++) { // nos filhos de UL - MENUS
            var ul_li = ul.childNodes[k];
            if(ul_li.nodeName == "LI") { // LI - MENU
                var ul_li_ul = ul_li.childNodes[0];
                if(ul_li_ul.nodeName == "UL") { // UL - MENU
                    for(m=0; m < ul_li_ul.childNodes.length; m++) { // nos filhos de UL - MENU
                        var ul_li_ul_li = ul_li_ul.childNodes[m];
                        if(ul_li_ul_li.nodeName == "LI") { // LI - Menu Conjunto Itens (linhas)
                            var ul_li_ul_li_a = ul_li_ul_li.firstChild;
                            if(ul_li_ul_li_a) { // A - Menu Item (linha)
								var ul_li_ul_li_div = ul_li_ul_li.childNodes[2];
								if(ul_li_ul_li_div) { // DIV - Menu Susp (com)
                                    // Menu Item
	    		                	ul_li_ul_li_a.className = "seta";
                       				adEvento(ul_li_ul_li_a,"mouseover",show);
            	    	    		adEvento(ul_li_ul_li_a,"mouseout",addTimer);
	    	            	    	// Menu Susp
            	    		    	adEvento(ul_li_ul_li_div,"mouseover",clearTimer);
	            	    		    adEvento(ul_li_ul_li_div,"mouseout",addTimer);
		            	    		arrLi = ul_li_ul_li_div.getElementsByTagName('li');
    			                	for(z=0; z<arrLi.length; z++) {
        		        			   	adEvento(arrLi[z].firstChild,"mouseover",mudaEstilo);
	        		        		    adEvento(arrLi[z].firstChild,"mouseout",voltaEstilo);
    		    	    	        }
                                } else { // DIV - Menu Susp (sem)
	           	    		       	adEvento(ul_li_ul_li_a,"mouseover",showUni);
	                			    adEvento(ul_li_ul_li_a,"mouseout",hideMenu);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

function montaMenu()
{
    var ul = gE('menus');
    if(ul) { // UL - MENUS
        for(k=0; k < ul.childNodes.length; k++) { // nos filhos de UL - MENUS
            var ul_li = ul.childNodes[k];
            if(ul_li.nodeName == "LI") { // LI - MENU
                var ul_li_ul = ul_li.childNodes[2];
                if(ul_li_ul.nodeName == "UL") { // UL - MENU
                    for(m=0; m < ul_li_ul.childNodes.length; m++) { // nos filhos de UL - MENU
                        var ul_li_ul_li = ul_li_ul.childNodes[m];
                        if(ul_li_ul_li.nodeName == "LI") { // LI - Menu Conjunto Itens (linhas)
                            var ul_li_ul_li_a = ul_li_ul_li.firstChild;
                            if(ul_li_ul_li_a) { // A - Menu Item (linha)
								var ul_li_ul_li_div = ul_li_ul_li.childNodes[2];
								if(ul_li_ul_li_div) { // DIV - Menu Susp (com)
                                    // Menu Item
	    		                	ul_li_ul_li_a.className = "seta";
                       				adEvento(ul_li_ul_li_a,"mouseover",show);
            	    	    		adEvento(ul_li_ul_li_a,"mouseout",addTimer);
	    	            	    	// Menu Susp
            	    		    	adEvento(ul_li_ul_li_div,"mouseover",clearTimer);
	            	    		    adEvento(ul_li_ul_li_div,"mouseout",addTimer);
		            	    		arrLi = ul_li_ul_li_div.getElementsByTagName('li');
    			                	for(z=0; z<arrLi.length; z++) {
        		        			   	adEvento(arrLi[z].firstChild,"mouseover",mudaEstilo);
	        		        		    adEvento(arrLi[z].firstChild,"mouseout",voltaEstilo);
    		    	    	        }
                                } else { // DIV - Menu Susp (sem)
	           	    		       	adEvento(ul_li_ul_li_a,"mouseover",showUni);
	                			    adEvento(ul_li_ul_li_a,"mouseout",hideMenu);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

function clearTimer()
{
	if(lastSubmenuTimer) clearTimeout(lastSubmenuTimer);
}

function addTimer()
{
	lastSubmenuTimer = setTimeout("hideMenu();",4000);
}

function show(e)
{
	//Correção para eventos quebrados da Microsoft
    if(typeof(e)=='undefined')var e=window.event
    source=e.target?e.target:e.srcElement
    //Correção para o bug do Konqueror/Safari
    if(source.nodeType==3)source=source.parentNode

	if(source.parentNode.childNodes[2])
	{
		if(lastSubmenu)	hideMenu();
		lastSubmenu = source.parentNode;
		//lastSubmenu.setAttribute("class","over");
		//window.status= lastSubmenu.nodeName;
		lastSubmenu.className = "over";
		//lastSubmenu.childNodes[2].style.display = 'block';
		//lastSubmenu.style.background = "url(/img/capa/f_menu_5.gif) #F8F8F8 no-repeat left top";
	}
}

function showUni(e)
{
	//Correção para eventos quebrados da Microsoft
    if(typeof(e)=='undefined')var e=window.event
    source=e.target?e.target:e.srcElement
    //Correção para o bug do Konqueror/Safari
    if(source.nodeType==3)source=source.parentNode

		if(lastSubmenu)	hideMenu();
		lastSubmenu = source.parentNode;
		//lastSubmenu.setAttribute("class","over");
		//window.status= lastSubmenu.nodeName;
		lastSubmenu.className = "over";
		//lastSubmenu.childNodes[2].style.display = 'block';
		//lastSubmenu.style.background = "url(/img/capa/f_menu_5.gif) #F8F8F8 no-repeat left top";
}

function mudaEstilo(e)
{
	//Correção para eventos quebrados da Microsoft
    if(typeof(e)=='undefined')var e=window.event
    source=e.target?e.target:e.srcElement
    //Correção para o bug do Konqueror/Safari
    if(source.nodeType==3)source=source.parentNode
	source.parentNode.className = "sover";
	//source.parentNode.style.backgroundColor = "#DFEBEE";

}

function voltaEstilo(e)
{
	//Correção para eventos quebrados da Microsoft
    if(typeof(e)=='undefined')var e=window.event
    source=e.target?e.target:e.srcElement
    //Correção para o bug do Konqueror/Safari
    if(source.nodeType==3)source=source.parentNode
	source.parentNode.className = "";
	//source.parentNode.style.backgroundColor = "#F8F8F8";

}

function hideMenu()
{
	if(lastSubmenu)
	{
		//lastSubmenu.setAttribute("class","");
		lastSubmenu.className = "";
		//lastSubmenu.childNodes[2].style.display = 'none';
		//lastSubmenu.style.background = "url(/img/capa/f_menu_4.gif) #EDEDED no-repeat left top";
	}

	clearTimer();
}

iniciarMenu();
