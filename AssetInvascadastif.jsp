<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>

</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>

</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_infger_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetInvas_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="2"  onclick="clf(this);" value="#{cadAssetInvasBean.asset_id}"  styleClass="form-control form-control-sm" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_id','Asset','','asset_nu',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>

</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetInvasBean.asset_cd_cfinvty}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetInvas_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="3"  value="#{cadAssetInvasBean.asset_nu}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetInvas_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="4"  value="#{cadAssetInvasBean.asset_dt_vistoria_str}"  styleClass="form-control form-control-sm" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_nu_pross_reinpss', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
<%--<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>--%>

<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_pross_reinpss" for="asset_nu_pross_reinpss"  value="#{iimsg.AssetInvas_asset_nu_pross_reinpss_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_pross_reinpss" tabindex="5"  value="#{cadAssetInvasBean.asset_nu_pross_reinpss}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_pross_reinpss','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetInvasBean.asset_cd_hierarquico}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetInvas_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetInvasBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="6" />
		</div>
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_cfreslc_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc_prx" for="asset_cd_cfreslc_prx"  value="#{iimsg.AssetInvas_asset_cd_cfreslc_prx_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_cd_cfreslc_prx" value="#{cadAssetInvasBean.asset_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc_prx','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="7" />
		</div>
		<h:commandButton id="asset_cd_cfreslc_prx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		<h:outputLabel id="asset_cd_cfreslc_prx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_cfreslc_prx_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetInvas_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_ini" tabindex="8"  value="#{cadAssetInvasBean.asset_km_ini_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','asset_km_ini','1',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetInvas_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="9"  value="#{cadAssetInvasBean.asset_km_fim_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetInvas_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor" value="#{cadAssetInvasBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="10" />
		</div>
<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_corredor_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetInvas_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_zona_cflczon" value="#{cadAssetInvasBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_zona_cflczon','1','LOCZO',this.value);;" size="7" maxlength="5" tabindex="11" />
		</div>
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_zona_cflczon_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetInvas_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_vl_coords" tabindex="12"  value="#{cadAssetInvasBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_coords','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetInvas_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfresid" value="#{cadAssetInvasBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfresid','1','RESID',this.value);;" size="7" maxlength="5" tabindex="13" />
		</div>
<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_cfresid_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_uf" for="asset_cd_uf"  value="#{iimsg.AssetInvas_asset_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_uf" value="#{cadAssetInvasBean.asset_cd_uf}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_uf','1','GUF',this.value);;" size="5" maxlength="3" tabindex="14" />
		</div>
<h:commandButton id="asset_cd_uf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_cd_uf_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_bairro" for="asset_nm_bairro"  value="#{iimsg.AssetInvas_asset_nm_bairro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_bairro" tabindex="15"  value="#{cadAssetInvasBean.asset_nm_bairro}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_bairro','1',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_logradouro" for="asset_nm_logradouro"  value="#{iimsg.AssetInvas_asset_nm_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_logradouro" tabindex="16"  value="#{cadAssetInvasBean.asset_nm_logradouro}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_logradouro','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_logradouro" for="asset_nu_logradouro"  value="#{iimsg.AssetInvas_asset_nu_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_logradouro" tabindex="17"  value="#{cadAssetInvasBean.asset_nu_logradouro}" size="12" maxlength="10"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_logradouro','1',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_compl" for="asset_ds_compl"  value="#{iimsg.AssetInvas_asset_ds_compl_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_compl" tabindex="18"  value="#{cadAssetInvasBean.asset_ds_compl}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_compl','1',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_tp_situacao" value="#{cadAssetInvasBean.asset_tp_situacao}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="400" class="ttsmod"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="ttsmod"  value="#{iimsg.AssetInvas_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetinvascad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetInvasBean.imag_im}"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetinvascad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetInvasBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
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
<c:if test="${ cadAssetInvasBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetInvasBean.asset_id }" />','','','<c:out value="${  cadAssetInvasBean.assetinvas_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetInvasBean.asset_id }" />','','','<c:out value="${  cadAssetInvasBean.assetinvas_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetInvasBean.asset_id }" />','','','<c:out value="${  cadAssetInvasBean.assetinvas_nm_image3 }" />');
</c:if>
</script>
