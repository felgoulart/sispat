<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastrg" rendered="#{cadAssetSidngBean.canUpdate}" value="#{cadAssetSidngBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSidngBean.canUpdate}" action="#{cadAssetSidngBean.doValidate}" onmousedown="msgw('aMessageastrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSidng_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetSidngBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSidng_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetSidngBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetSidng_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="-1"  readonly="true" value="#{cadAssetSidngBean.asset_id}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
</td> <%-- <close td> ccc --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSidng_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetSidng_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="5"  value="#{cadAssetSidngBean.asset_nu}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetSidngBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_hierarquico" for="asset_cd_hierarquico"  value="#{iimsg.AssetSidng_asset_cd_hierarquico_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_hierarquico" tabindex="6"  onkeypress="vlfm999(this);"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetSidngBean.asset_cd_hierarquico}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_hierarquico','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cd_hierarquico_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_hierarquico_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetSidngBean.asset_cd_cfinvty}"/>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_operacional_cfoperc" for="asset_st_operacional_cfoperc"  value="#{iimsg.AssetSidng_asset_st_operacional_cfoperc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_operacional_cfoperc" value="#{cadAssetSidngBean.asset_st_operacional_cfoperc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_operacional_cfoperc','1','OPERC',this.value);;" size="5" maxlength="3" tabindex="7" />
<h:commandButton id="asset_st_operacional_cfoperc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'OPERC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_operacional_cfoperc_vc" flagType="val" flag="#{cadAssetSidngBean.asset_st_operacional_cfoperc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_operacional_cfoperc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_st_operacional_cfoperc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ccusto" for="asset_cd_ccusto"  value="#{iimsg.AssetSidng_asset_cd_ccusto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_cd_ccusto" tabindex="8"  onclick="clf(this);" value="#{cadAssetSidngBean.asset_cd_ccusto}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_cd_ccusto','Ixccust','ccust_cd','ccust_ds',this.value);" size="8" maxlength="6" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="asset_cd_ccusto_xsel" tabindex="-1" immediate="true" onmousedown="pw('ixccustpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_ccusto_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_ccusto_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="asset_cd_ccusto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_cd_ccusto_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetSidng_asset_tp_propriedade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_propriedade" value="#{cadAssetSidngBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="9" />
<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_propriedade_vc" flagType="val" flag="#{cadAssetSidngBean.asset_tp_propriedade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_tp_propriedade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cls" for="asset_cd_cls"  value="#{iimsg.AssetSidng_asset_cd_cls_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="6"   >
<h:inputText id="asset_cd_cls" tabindex="10"  value="#{cadAssetSidngBean.asset_cd_cls}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_cls','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_cls_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_cls_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="4" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSidng_descr_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_ds" tabindex="11"  value="#{cadAssetSidngBean.asset_ds}"  cols="60" rows="4" styleClass="asset_ds_rtfFontChoice" onchange="bv('','asset_ds','1',this.value);"/>
</td> <%-- <close td> ccc --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_ob" tabindex="12"  value="#{cadAssetSidngBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','1',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="200" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.AssetSidng_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetsidngcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetSidngBean.imag_im}"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetsidngcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetSidngBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_ocrs_xsel" immediate="true" action="#{cadObocrBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetsidngcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetSidngBean.obocr_im}" title="#{iimsg.obocr_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop buttonOpenChild --%>
<h:inputHidden id="sel_asset_idasset_geolink_bt" value="#{cadAssetSidngBean.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geolink" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geolink_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=DC';">
<ps:psGraphicImage  flagType="geo" flag="#{cadAssetSidngBean.geo_vx}" styleClass="btp" />
</h:outputLink>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td  colspan ="2"   width="200" > <%-- open w/ inputText 222aimg--%>
<%-- prop imageExpanded X --%>
<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
</td> <%-- <close td> ccc --%>
<td    colspan ="2"   width="300" > <%-- open w/ inputText 222a--%>
<iframe width="426" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="googlemaps.jsp?tipo=assetsidngcad"></iframe><br />
<h:outputLink id="asset_ds_googlemap" value="#{cadAssetSidngBean.asset_cd_geourl_exp}"   >
<h:outputText value="#{iimsg.label_googleMapExpanded}"/>
</h:outputLink>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
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
<c:if test="${ cadAssetSidngBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetSidngBean.asset_id }" />','','','<c:out value="${  cadAssetSidngBean.assetsidng_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetSidngBean.asset_id }" />','','','<c:out value="${  cadAssetSidngBean.assetsidng_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetSidngBean.asset_id }" />','','','<c:out value="${  cadAssetSidngBean.assetsidng_nm_image3 }" />');
</c:if>
</script>
