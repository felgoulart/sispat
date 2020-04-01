<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastrg" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetSupersv_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="600" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="-1"  readonly="true" value="#{cadAssetSupersvBean.asset_id}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
</td> <%-- <close td> ccc --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSupersv_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetSupersv_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu" tabindex="2"  value="#{cadAssetSupersvBean.asset_nu}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_hierarquico" for="asset_cd_hierarquico"  value="#{iimsg.AssetSupersv_asset_cd_hierarquico_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_hierarquico" tabindex="3"  onkeypress="vlfm999(this);"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetSupersvBean.asset_cd_hierarquico}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_hierarquico','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cd_hierarquico_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_hierarquico_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_placa_nbp" for="asset_in_placa_nbp"  value="#{iimsg.AssetSupersv_asset_in_placa_nbp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_placa_nbp_bol" value="#{cadAssetSupersvBean.asset_in_placa_nbp}"/>
<h:selectBooleanCheckbox id="asset_in_placa_nbp" tabindex="4"  value="#{cadAssetSupersvBean.asset_in_placa_nbp_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_placa_nbp_bol');"/>
<ps:psGraphicImage id="asset_in_placa_nbp_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_placa_nbp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetSupersv_asset_tp_propriedade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_propriedade" value="#{cadAssetSupersvBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="5" />
<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_propriedade_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_propriedade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_propriedade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cfasttp" for="asset_tp_cfasttp"  value="#{iimsg.AssetSupersv_asset_tp_cfasttp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cfasttp" value="#{cadAssetSupersvBean.asset_tp_cfasttp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_cfasttp','1','ASTTP',this.value);;" size="5" maxlength="3" tabindex="6" />
<h:commandButton id="asset_tp_cfasttp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ASTTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cfasttp_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_cfasttp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cfasttp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_cfasttp_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_smartq" for="asset_tp_smartq"  value="#{iimsg.AssetSupersv_asset_tp_smartq_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_tp_smartq" tabindex="7"  value="#{cadAssetSupersvBean.asset_tp_smartq}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="bv('','asset_tp_smartq','1',this.value);"/>
<ps:psGraphicImage id="asset_tp_smartq_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_smartq_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetSupersvBean.asset_cd_cfinvty}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_cfsitbm" for="asset_st_cfsitbm"  value="#{iimsg.AssetSupersv_asset_st_cfsitbm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_cfsitbm" value="#{cadAssetSupersvBean.asset_st_cfsitbm}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_cfsitbm','1','SQSIT',this.value);;" size="119" maxlength="117" tabindex="8" />
<h:commandButton id="asset_st_cfsitbm_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SQSIT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_cfsitbm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_cfsitbm_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_cfsitbm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_cfsitbm_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_area_resp" for="asset_cd_area_resp"  value="#{iimsg.AssetSupersv_asset_cd_area_resp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="6"   >
<h:inputText id="asset_cd_area_resp" tabindex="9"  value="#{cadAssetSupersvBean.asset_cd_area_resp}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_area_resp','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_area_resp_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_area_resp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ccusto" for="asset_cd_ccusto"  value="#{iimsg.AssetSupersv_asset_cd_ccusto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="600" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_cd_ccusto" tabindex="10"  onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_ccusto}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_cd_ccusto','Ixccust','ccust_cd','ccust_ds',this.value);" size="8" maxlength="6" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="asset_cd_ccusto_xsel" tabindex="-1" immediate="true" onmousedown="pw('ixccustpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_ccusto_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_ccusto_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="asset_cd_ccusto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_ccusto_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ue" for="asset_cd_ue"  value="#{iimsg.AssetSupersv_asset_cd_ue_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_ue" tabindex="11"  value="#{cadAssetSupersvBean.asset_cd_ue}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ue','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_ue_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_ue_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_pconta" for="asset_cd_pconta"  value="#{iimsg.AssetSupersv_asset_cd_pconta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_pconta" tabindex="12"  value="#{cadAssetSupersvBean.asset_cd_pconta}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_pconta','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_pconta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_pconta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cls" for="asset_cd_cls"  value="#{iimsg.AssetSupersv_asset_cd_cls_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_cls" tabindex="13"  value="#{cadAssetSupersvBean.asset_cd_cls}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_cls','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_cls_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_cls_vc}" styleClass="btp"/>
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
<h:outputText value="#{iimsg.AssetSupersv_descr_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_ds" tabindex="14"  value="#{cadAssetSupersvBean.asset_ds}"  cols="60" rows="4" styleClass="asset_ds_rtfFontChoice" onchange="bv('','asset_ds','1',this.value);"/>
</td> <%-- <close td> ccc --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_ob" tabindex="15"  value="#{cadAssetSupersvBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','1',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="300" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.AssetSupersv_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetsupersvcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetSupersvBean.imag_im}"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetsupersvcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetSupersvBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_ocrs_xsel" immediate="true" action="#{cadObocrBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetsupersvcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetSupersvBean.obocr_im}" title="#{iimsg.obocr_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop buttonOpenChild --%>
<h:inputHidden id="sel_asset_idasset_geolink_bt" value="#{cadAssetSupersvBean.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geolink" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geolink_bt').value;valor1=valor1.slice(0,valor1.length - 5);valor2=el('cadForm:asset_tp_cfasttp').value;if(valor2 == 'AC'){alert('Bem com tipologia <A Classificar>. Classifique e Reimporte Coordenadas')}else{;this.href='mapa.jsp?bp='+valor1+'&type='+valor2;}">
<ps:psGraphicImage  flagType="geo" flag="#{cadAssetSupersvBean.geo_vx}" styleClass="btp" />
</h:outputLink>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td  colspan ="4"   width="2000" > <%-- open w/ inputText 222aimg--%>
<%-- prop imageExpanded X --%>
<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
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
<c:if test="${ cadAssetSupersvBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetSupersvBean.asset_id }" />','','','<c:out value="${  cadAssetSupersvBean.assetsupersv_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetSupersvBean.asset_id }" />','','','<c:out value="${  cadAssetSupersvBean.assetsupersv_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetSupersvBean.asset_id }" />','','','<c:out value="${  cadAssetSupersvBean.assetsupersv_nm_image3 }" />');
</c:if>
</script>
