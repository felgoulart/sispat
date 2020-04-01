
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhaux_infger_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetVhaux_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="2"  onclick="clf(this);" value="#{cadAssetVhauxBean.asset_id}"  styleClass="form-control form-control-sm" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_id','Asset','','asset_nu',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
</div>
		<h:commandButton id="asset_id_xsel" tabindex="-1" immediate="true" onmousedown="pw('assetpsq', tran, this.id, 'no');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>

<%-- ak/fk if not nodesc 2 --%>
<h:commandLink id="asset_id_desc" value="#{cadAssetVhauxBean.asset_id_desc}" styleClass="dsp" onmousedown="pwfk(''assetpsq'cad', tran, this.id, 'no');"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetVhaux_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText id="asset_dt_vistoria_str" tabindex="3"  value="#{cadAssetVhauxBean.asset_dt_vistoria_str}"  styleClass="form-control form-control-sm" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_cd_cfinvty', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
</div>
<img src="../imagens/btCalendar_orig.gif" styleClass="btn btn-outline-secondary" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>

<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">

		</div>
	</div>
</td> 
</tr> 
<tr>   
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetVhauxBean.asset_cd_cfinvty}"/>
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetVhaux_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="4"  value="#{cadAssetVhauxBean.asset_nu}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu','1',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_ident" for="asset_nu_ident"  value="#{iimsg.AssetVhaux_asset_nu_ident_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_ident" tabindex="5"  value="#{cadAssetVhauxBean.asset_nu_ident}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_ident','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_vagao_placa" for="asset_nu_vagao_placa"  value="#{iimsg.AssetVhaux_asset_nu_vagao_placa_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_vagao_placa" tabindex="6"  value="#{cadAssetVhauxBean.asset_nu_vagao_placa}" size="9" maxlength="7"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_vagao_placa','1',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_serie" for="asset_cd_serie"  value="#{iimsg.AssetVhaux_asset_cd_serie_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_serie" tabindex="7"  value="#{cadAssetVhauxBean.asset_cd_serie}" size="12" maxlength="10"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_serie','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_vhaux" for="asset_tp_vhaux"  value="#{iimsg.AssetVhaux_asset_tp_vhaux_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_vhaux" value="#{cadAssetVhauxBean.asset_tp_vhaux}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_vhaux','1','VHXTP',this.value);;" size="5" maxlength="3" tabindex="8" />
</div>
		<h:commandButton id="asset_tp_vhaux_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'VHXTP', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_vhaux_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_tp_vhaux_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_fabricante" for="asset_cd_fabricante"  value="#{iimsg.AssetVhaux_asset_cd_fabricante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_fabricante" tabindex="9"  value="#{cadAssetVhauxBean.asset_cd_fabricante}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_fabricante','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_marca" for="asset_cd_marca"  value="#{iimsg.AssetVhaux_asset_cd_marca_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_marca" tabindex="10"  value="#{cadAssetVhauxBean.asset_cd_marca}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_marca','1',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_modelo" for="asset_cd_modelo"  value="#{iimsg.AssetVhaux_asset_cd_modelo_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_modelo" value="#{cadAssetVhauxBean.asset_cd_modelo}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_modelo','1','MDLOC',this.value);;" size="52" maxlength="50" tabindex="11" />
</div>
		<h:commandButton id="asset_cd_modelo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'MDLOC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_modelo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_cd_modelo_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetVhaux_asset_tp_propriedade_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="200"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_propriedade" value="#{cadAssetVhauxBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="12" />
</div>
		<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_tp_propriedade_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<%-- Hidden --%>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetVhauxBean.asset_cd_hierarquico}"/>
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhaux_loca_zp_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhaux_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor" value="#{cadAssetVhauxBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="13" />
</div>
		<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetVhaux_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetVhauxBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="14" />
</div>
		<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_cd_cfreslc_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_px_local_vistoria" for="asset_px_local_vistoria"  value="#{iimsg.AssetVhaux_asset_px_local_vistoria_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_px_local_vistoria" value="#{cadAssetVhauxBean.asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_px_local_vistoria','1','CDLMR',this.value);;" size="7" maxlength="5" tabindex="15" />
</div>
		<h:commandButton id="asset_px_local_vistoria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDLMR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_px_local_vistoria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_px_local_vistoria_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_acesso_rodv" for="asset_ds_acesso_rodv"  value="#{iimsg.AssetVhaux_asset_ds_acesso_rodv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_acesso_rodv" tabindex="16"  value="#{cadAssetVhauxBean.asset_ds_acesso_rodv}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_acesso_rodv','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetVhaux_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="17"  value="#{cadAssetVhauxBean.asset_km_fim_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetVhaux_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_coords" tabindex="18"  value="#{cadAssetVhauxBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_coords','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="400" class="ttsmod"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="ttsmod"  value="#{iimsg.AssetVhaux_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
</div>
		<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhauxcad&tipo='+wtran+'&valor='+valor1;"  image="imagens/picture2.png"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> </div>
		<h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetvhauxcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetVhauxBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td  colspan ="4"   width="1900" > <%-- open w/ inputText 222aimg--%>
<%-- prop imageExpanded X --%>
<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
</td> 
</tr> 
</table> <%-- xxaa <last frame close> if no Frames--%>
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
<c:if test="${ cadAssetVhauxBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetVhauxBean.asset_id }" />','','','<c:out value="${  cadAssetVhauxBean.assetvhaux_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetVhauxBean.asset_id }" />','','','<c:out value="${  cadAssetVhauxBean.assetvhaux_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetVhauxBean.asset_id }" />','','','<c:out value="${  cadAssetVhauxBean.assetvhaux_nm_image3 }" />');
</c:if>
</script>
