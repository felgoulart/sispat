


<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText  value="#{iimsg.AssetBldng_infger_tt_tt}"/>  
	</div>
	<div class="card-body">
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetBldng_asset_dt_vistoria_tt}"/>
			</div>
			<div class="col-sm-4">
				<div class="input-group">
						<h:inputText id="asset_dt_vistoria_str" tabindex="2"  value="#{cadAssetBldngBean.asset_dt_vistoria_str}"  styleClass="form-control form-control-sm inputcodf" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_id', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />			  
						<div class="input-group-append">
							<button class="btn btncodf" type="button" id="button-addon2"><img src="../fa/svgs/solid/calendargray.png" styleClass="btn btncodf" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/></button>
						</div>
						<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">	</div>
				</div>	
			</div>				
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetBldng_asset_id_tt}"/>
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_id" tabindex="-1"  readonly="true" value="#{cadAssetBldngBean.asset_id}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
				<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetBldngBean.asset_cd_cfinvty}"/>
			</div>
		</div>
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_nu" for="asset_cd_hierarquico"  value="#{iimsg.AssetBldng_asset_nu_tt}"/> 
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_nu" tabindex="3"  value="#{cadAssetBldngBean.asset_nu}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu','1',this.value);"/>
			</div>
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_cd_hierarquico" for="asset_cd_hierarquico"  value="#{iimsg.AssetBldng_asset_cd_hierarquico_tt}"/>			
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_cd_hierarquico" tabindex="4"  onkeypress="vlfm999(this);"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetBldngBean.asset_cd_hierarquico}" size="6" maxlength="4"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_hierarquico','1',valNum(this.value));"/>
			</div>
		</div>		
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_cd_proprietaria" for="asset_cd_proprietaria"  value="#{iimsg.AssetBldng_asset_cd_proprietaria_tt}"/> 
			</div>
			<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_proprietaria" value="#{cadAssetBldngBean.asset_cd_proprietaria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_proprietaria','1','COMPN',this.value);;" size="10" maxlength="8" tabindex="5" />
					<h:commandButton id="asset_cd_proprietaria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>		
			</div>
			<div class="col-sm-2">
				<h:inputText id="asset_cd_proprietaria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_proprietaria_desc}" styleClass="dscCodfCad"/>
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-3">
						<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetBldng_asset_aa_construcao_tt}"/> 
					</div>
					<div class="col-sm-3">
						<h:inputText id="asset_aa_construcao" tabindex="8"  value="#{cadAssetBldngBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="form-control form-control-sm" onchange="bv('','asset_aa_construcao','1',this.value);"/>
					</div>
					<div class="col-sm-3">
						<h:outputLabel  styleClass="h7 align-middle"  id="lbl_asset_aa_recebimento" for="asset_aa_recebimento"  value="#{iimsg.AssetBldng_asset_aa_recebimento_tt}"/> 
					</div>
					<div class="col-sm-3">
						<h:inputText id="asset_aa_recebimento" tabindex="9"  value="#{cadAssetBldngBean.asset_aa_recebimento}" size="6" maxlength="4"  styleClass="form-control form-control-sm" onchange="bv('','asset_aa_recebimento','1',this.value);"/>			
					</div>	
				</div>
			</div>
		</div>
		<div class="row mb-3 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_anexo" for="asset_ds_anexo"  value="#{iimsg.AssetBldng_asset_ds_anexo_tt}"/> 
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_ds_anexo" tabindex="6"  value="#{cadAssetBldngBean.asset_ds_anexo}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_anexo','1',this.value);"/>	
			</div>
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_atual" for="asset_ds_atual"  value="#{iimsg.AssetBldng_asset_ds_atual_tt}"/> 
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_ds_atual" tabindex="7"  value="#{cadAssetBldngBean.asset_ds_atual}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_atual','1',this.value);"/>
			</div>
		</div>
	</div>
</div>

<div class="card m-3">
	<div class="card-header rowreader"> 	
		<div class = "row">
			<div class="col-sm-6" align="left">					
				<h:outputText    value="#{iimsg.AssetBldng_asset_im_tt_tt}"/>
			</div>
			<div class="col-sm-6" align="right">	
				<h:commandButton id="obimg" style="vertical-align:bottom" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetbldngcad&tipo='+wtran+'&valor='+valor1;"  image="fa/svgs/solid/imagedark.png"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				<h:commandButton id="asset_docs_xsel" style="vertical-align:bottom" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetbldngcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="fa/svgs/solid/folderopendark.png" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=ED';">				<h:graphicImage id="flag_imggeo_asset_geo_ongrid2" value="fa/svgs/solid/globedark.png" /></h:outputLink>
				<h:inputHidden id="sel_asset_idasset_geolink_bt" value="#{cadAssetBldngBean.asset_id}"/>
			</div>		
		</div>
	</div>
	<div class="card-body">
			<div class="row">
			</div>
			<div class="row">
				<div class="col-sm-4">
					<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
				</div>
				<div class="col-sm-4">
					<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />			
				</div>
				<div class="col-sm-4">
					<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />			
				</div>
			</div>
	</div>
</div>


	
	
	
	


<script>
function mostraDados1( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande1").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande1").style.display = 'block';
}
}
function mostraDados2( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande2").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande2").style.display = 'block';
}
}
function mostraDados3( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande3").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande3").style.display = 'block';
}
}
<c:if test="${ cadAssetBldngBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetBldngBean.asset_id }" />','','','<c:out value="${  cadAssetBldngBean.assetbldng_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetBldngBean.asset_id }" />','','','<c:out value="${  cadAssetBldngBean.assetbldng_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetBldngBean.asset_id }" />','','','<c:out value="${  cadAssetBldngBean.assetbldng_nm_image3 }" />');
</c:if>
</script>
