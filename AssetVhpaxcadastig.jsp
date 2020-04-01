
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhpax_infger_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetVhpax_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="2"  onclick="clf(this);" value="#{cadAssetVhpaxBean.asset_id}"  styleClass="form-control form-control-sm" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_id','Asset','','asset_nu',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
</div>
		<h:commandButton id="asset_id_xsel" tabindex="-1" immediate="true" onmousedown="pw('assetpsq', tran, this.id, 'no');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>

<%-- ak/fk if not nodesc 2 --%>
<h:commandLink id="asset_id_desc" value="#{cadAssetVhpaxBean.asset_id_desc}" styleClass="dsp" onmousedown="pwfk(''assetpsq'cad', tran, this.id, 'no');"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetVhpax_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText id="asset_dt_vistoria_str" tabindex="3"  value="#{cadAssetVhpaxBean.asset_dt_vistoria_str}"  styleClass="form-control form-control-sm" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_cd_cfinvty', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
</div>
<img src="../imagens/btCalendar_orig.gif" styleClass="btn btn-outline-secondary" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>

<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">

		</div>
	</div>
</td> 
</tr> 
<tr>   
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetVhpaxBean.asset_cd_cfinvty}"/>
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetVhpax_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="4"  value="#{cadAssetVhpaxBean.asset_nu}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu','1',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_ident" for="asset_nu_ident"  value="#{iimsg.AssetVhpax_asset_nu_ident_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_ident" tabindex="5"  value="#{cadAssetVhpaxBean.asset_nu_ident}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_ident','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_serie" for="asset_cd_serie"  value="#{iimsg.AssetVhpax_asset_cd_serie_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_serie" tabindex="6"  value="#{cadAssetVhpaxBean.asset_cd_serie}" size="12" maxlength="10"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_serie','1',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetVhpax_asset_tp_propriedade_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_propriedade" value="#{cadAssetVhpaxBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="7" />
</div>
		<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhpaxBean.asset_tp_propriedade_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<%-- Hidden --%>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetVhpaxBean.asset_cd_hierarquico}"/>
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhpax_loca_zp_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhpax_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor" value="#{cadAssetVhpaxBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="8" />
</div>
		<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhpaxBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetVhpax_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetVhpaxBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="9" />
</div>
		<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhpaxBean.asset_cd_cfreslc_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_px_local_vistoria" for="asset_px_local_vistoria"  value="#{iimsg.AssetVhpax_asset_px_local_vistoria_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_px_local_vistoria" value="#{cadAssetVhpaxBean.asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_px_local_vistoria','1','CDLMR',this.value);;" size="7" maxlength="5" tabindex="10" />
</div>
		<h:commandButton id="asset_px_local_vistoria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDLMR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_px_local_vistoria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhpaxBean.asset_px_local_vistoria_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_acesso_rodv" for="asset_ds_acesso_rodv"  value="#{iimsg.AssetVhpax_asset_ds_acesso_rodv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_acesso_rodv" tabindex="11"  value="#{cadAssetVhpaxBean.asset_ds_acesso_rodv}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_acesso_rodv','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetVhpax_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="12"  value="#{cadAssetVhpaxBean.asset_km_fim_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetVhpax_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_coords" tabindex="13"  value="#{cadAssetVhpaxBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_coords','1',this.value);"/>

</td> 
</tr> 
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="400" class="ttsmod"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="ttsmod"  value="#{iimsg.AssetVhpax_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
</div>
		<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhpaxcad&tipo='+wtran+'&valor='+valor1;"  image="imagens/picture2.png"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> </div>
		<h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetvhpaxcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetVhpaxBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
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
<c:if test="${ cadAssetVhpaxBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetVhpaxBean.asset_id }" />','','','<c:out value="${  cadAssetVhpaxBean.assetvhpax_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetVhpaxBean.asset_id }" />','','','<c:out value="${  cadAssetVhpaxBean.assetvhpax_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetVhpaxBean.asset_id }" />','','','<c:out value="${  cadAssetVhpaxBean.assetvhpax_nm_image3 }" />');
</c:if>
</script>
