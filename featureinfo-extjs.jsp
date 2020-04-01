<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <script type="text/javascript" src="../resources/lib/extjs-3.2.1/adapter/ext/ext-base.js"></script>
        <script type="text/javascript" src="../resources/lib/extjs-3.2.1/ext-all.js"></script>
        <link rel="stylesheet" type="text/css" href="../resources/lib/extjs-3.2.1/resources/css/ext-all.css" />
        <style type="text/css">
            .thumb {
                text-align: center
            }
            
            .thumb img {
                height: 80%;
                width: 60%;
            }
        </style>
        <script type="text/javascript">
            
            var ROOT_URL = '<%=request.getContextPath()%>';
            var ROOT_IMG_URL = '/sispat_tlsa_images-11-1';
            
            var bp_p = '3200287-000';
            
            function triggerImages(djsImages, bp_p, selectedInventory){
                djsImages.proxy = new Ext.data.HttpProxy({
                    url: ROOT_URL + '/servlets/AjaxServlet?get=images&bpparcela=' + bp_p + '-' + selectedInventory,
                    method: 'GET'
                });
                djsImages.clearData();
                djsImages.reload();
            }
			
            var djsInventories = new Ext.data.JsonStore({
                proxy: new Ext.data.HttpProxy({
                    url: ROOT_URL + '/servlets/AjaxServlet?get=inventories&bpparcela=' + bp_p,
                    method: 'GET'
                }),
                root: 'inventories',
                fields: [{
                    name: 'value'
                }, {
                    name: 'description'
                }]
            });
           
            
            var inventaryCmb = new Ext.form.ComboBox({
                id: 'inventaryCmb',
                fieldLabel: 'Inventário',
                emptyText: selectedInventory,
                store: djsInventories,
                displayField: 'description',
                valueField: 'value',
                selectOnFocus: false,
                mode: 'remote',
                typeAhead: false,
                editable: false,
                triggerAction: 'all',
                listeners: {
                    select: {
                        fn: function(combo, selected){
                            selectedInventory = selected.data.value;
							triggerImages(djsImages, bp_p, selectedInventory);
                            imagesView.refresh();
                        }
                    }
                }
            });
            
            
            
            var toolbar = new Ext.Toolbar({
                items: [inventaryCmb, {
                    xtype: 'tbbutton',
                    text: '+ Detalhes',
                    cls: 'x-btn-text-icon',
                    icon: ROOT_URL + '/imagens/btRecd.gif',
                    handler: function(){
                        alert('Abre a tela de cadastro');
                    }
                }]
            });
            
			toolbar.get(0).emptyText = selectedInventory;
			
			 var selectedInventory;
	            
	            djsInventories.load({
	                callback: function(){
	                	if(djsInventories.data.items.length > 0){
							selectedInventory = djsInventories.getAt(djsInventories.data.items.length - 1).data.value;
							triggerImages(djsImages, bp_p, selectedInventory);
	                	}else{
	                		toolbar.disable();
	                	}
	                }
	            });
				
	            var djsImages = new Ext.data.JsonStore({
	                proxy: new Ext.data.HttpProxy({
	                    url: ROOT_URL + '/servlets/AjaxServlet?get=images&bp=' + bp_p + '-' + selectedInventory,
	                    method: 'GET'
	                }),
	                root: 'images',
	                autoDestroy: true,
	                fields: [{
	                    name: 'id'
	                }, {
	                    name: 'filename'
	                }]
	            });
			
            var imagesView = new Ext.DataView({
                store: djsImages,
                autoScroll: true,
                autoHeight: false,
                height: 130,
                multiSelect: false,
                deferEmptyText: false,
                tpl: new Ext.XTemplate('<tpl for=".">', '<div class="thumb-wrap" id="{id}">', '<div class="thumb" style="text-align: center;padding-bottom: 3px;"><img src="{filename}" style="height:72%;width:96%"></div>', '</tpl>', '<div class="x-clear"></div>'),
                overClass: 'x-view-over',
                itemSelector: 'div.thumb-wrap',
                emptyText: 'Nenhuma imagem para ser exibida.',
                style: 'border:1px solid #99BBE8; border-top-width: 0;'
            });
            
            Ext.onReady(function(){
	                var form = new Ext.FormPanel({
	                    labelWidth: 125,
	                    frame: true,
	                    renderTo: 'ext-test',
	                    title: 'Bem Patrimonial - 1220449-000',
	                    bodyStyle: 'padding:5px 5px 0',
	                    width: 250,
	                    height: 280,
	                    items: [toolbar, imagesView]
	                });
            });
        </script>
    </head>
    <body>
        <div id="ext-test"></div>
    </body>
</html>
