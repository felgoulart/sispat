<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastig" rendered="#{cadAssetVhrfvBean.canUpdate}" value="#{cadAssetVhrfvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastig" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetVhrfvBean.canUpdate}" action="#{cadAssetVhrfvBean.doValidate}" onmousedown="msgw('aMessageastig');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetVhrfv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetVhrfvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetVhrfv_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetVhrfvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_infger_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetVhrfv_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="2"  onclick="clf(this);" value="#{cadAssetVhrfvBean.asset_id}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_id','Asset','','asset_nu',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="asset_id_xsel" tabindex="-1" immediate="true" onmousedown="pw('assetpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>

<%-- ak/fk if not nodesc 2 --%>
<h:commandLink id="asset_id_desc" value="#{cadAssetVhrfvBean.asset_id_desc}" styleClass="dsp" onmousedown="pwfk(''assetpsq'cad', tran, this.id, 'no');"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetVhrfv_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="3"  value="#{cadAssetVhrfvBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_cd_cfinvty', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>

<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetVhrfvBean.asset_cd_cfinvty}"/>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetVhrfv_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="4"  value="#{cadAssetVhrfvBean.asset_nu}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu','1',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_ident" for="asset_nu_ident"  value="#{iimsg.AssetVhrfv_asset_nu_ident_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_ident" tabindex="5"  value="#{cadAssetVhrfvBean.asset_nu_ident}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_ident','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_serie" for="asset_cd_serie"  value="#{iimsg.AssetVhrfv_asset_cd_serie_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_serie" tabindex="6"  value="#{cadAssetVhrfvBean.asset_cd_serie}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_serie','1',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_vhpax" for="asset_tp_vhpax"  value="#{iimsg.AssetVhrfv_asset_tp_vhpax_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_vhpax" value="#{cadAssetVhrfvBean.asset_tp_vhpax}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_vhpax','1','VPXTP',this.value);;" size="5" maxlength="3" tabindex="7" />
<h:commandButton id="asset_tp_vhpax_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'VPXTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_tp_vhpax_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_tp_vhpax_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetVhrfv_asset_tp_propriedade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_propriedade" value="#{cadAssetVhrfvBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="8" />
<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_tp_propriedade_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetVhrfv_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_st_geral" value="#{cadAssetVhrfvBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_geral','1','CONSG',this.value);;" size="5" maxlength="3" tabindex="9" />
<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_st_geral_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetVhrfvBean.asset_cd_hierarquico}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhrfv_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor" value="#{cadAssetVhrfvBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="10" />
<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_corredor_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetVhrfv_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetVhrfvBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="11" />
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_px_local_vistoria" for="asset_px_local_vistoria"  value="#{iimsg.AssetVhrfv_asset_px_local_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_px_local_vistoria" value="#{cadAssetVhrfvBean.asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_px_local_vistoria','1','CDLMR',this.value);;" size="7" maxlength="5" tabindex="12" />
<h:commandButton id="asset_px_local_vistoria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDLMR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_px_local_vistoria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_px_local_vistoria_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_acesso_rodv" for="asset_ds_acesso_rodv"  value="#{iimsg.AssetVhrfv_asset_ds_acesso_rodv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_acesso_rodv" tabindex="13"  value="#{cadAssetVhrfvBean.asset_ds_acesso_rodv}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_acesso_rodv','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetVhrfv_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_vl_coords" tabindex="14"  value="#{cadAssetVhrfvBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_coords','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="400" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.AssetVhrfv_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhrfvcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetVhrfvBean.imag_im}"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetvhrfvcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetVhrfvBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td  colspan ="4"   width="1900" > <%-- open w/ inputText 222aimg--%>
<%-- prop imageExpanded X --%>
<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
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
<c:if test="${ cadAssetVhrfvBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetVhrfvBean.asset_id }" />','','','<c:out value="${  cadAssetVhrfvBean.assetvhrfv_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetVhrfvBean.asset_id }" />','','','<c:out value="${  cadAssetVhrfvBean.assetvhrfv_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetVhrfvBean.asset_id }" />','','','<c:out value="${  cadAssetVhrfvBean.assetvhrfv_nm_image3 }" />');
</c:if>
</script>
