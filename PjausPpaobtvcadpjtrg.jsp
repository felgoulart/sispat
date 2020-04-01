<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrg" rendered="#{cadPjausPpaobtvBean.canUpdate}" value="#{cadPjausPpaobtvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPpaobtvBean.canUpdate}" action="#{cadPjausPpaobtvBean.doValidate}" onmousedown="msgw('aMessagepjtrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPpaobtv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPpaobtvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPpaobtvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_pasta" for="pjaus_nu_pasta"  value="#{iimsg.PjausPpaobtv_pjaus_nu_pasta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_pasta" tabindex="16"  value="#{cadPjausPpaobtvBean.pjaus_nu_pasta}" size="29" maxlength="27"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_pasta','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_pasta_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_pasta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_base_dados" for="pjaus_nu_base_dados"  value="#{iimsg.PjausPpaobtv_pjaus_nu_base_dados_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_base_dados" tabindex="17"  value="#{cadPjausPpaobtvBean.pjaus_nu_base_dados}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_base_dados','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_base_dados_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_base_dados_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_proprio_pj" for="pjaus_cd_proprio_pj"  value="#{iimsg.PjausPpaobtv_pjaus_cd_proprio_pj_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_cd_proprio_pj" tabindex="18"  value="#{cadPjausPpaobtvBean.pjaus_cd_proprio_pj}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_cd_proprio_pj','2',this.value);"/>
<ps:psGraphicImage id="pjaus_cd_proprio_pj_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_cd_proprio_pj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="150" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_pj_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_sl_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_im_tt_tt}"/>
<td width="0"  >
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimgpj" tabindex="-1" immediate="true" action="#{cadObimgpjBean.doObternull}" onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;valor1=el('cadForm:pjaus_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjausppaobtvcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadPjausPpaobtvBean.imag_im}" />
<%-- filler2 --%> &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_dc_tt_tt}"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docs_xsel" immediate="true" action="#{cadObdocpjBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjausppaobtvcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"   image="#{cadPjausPpaobtvBean.obdocpj_im}" title="#{iimsg.obdocpj_TT}"/>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_dcckl_tt_tt}"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docsckl_xsel" immediate="true" action="#{cadObdocpjcklBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjausppaobtvcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"   image="#{cadPjausPpaobtvBean.obdocpjckl_im}" title="#{iimsg.obdocpjckl_TT}"/>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_dceml_tt_tt}"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docseml_xsel" immediate="true" action="#{cadObdocpjemlBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjausppaobtvcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"   image="#{cadPjausPpaobtvBean.obdocpjeml_im}" title="#{iimsg.obdocpjeml_TT}"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nm_title" for="pjaus_nm_title"  value="#{iimsg.PjausPpaobtv_pjaus_nm_title_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nm_title" tabindex="23"  value="#{cadPjausPpaobtvBean.pjaus_nm_title}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nm_title','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nm_title_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nm_title_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_batch_id" for="batch_id"  value="#{iimsg.PjausPpaobtv_batch_id_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="700" > <h:inputText id="batch_id" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.batch_id}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="1000" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_car_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td  colspan ="2" width="1000" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPpaobtv_pjaus_sus_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="pjaus_ds_caracteristicas" tabindex="25"  value="#{cadPjausPpaobtvBean.pjaus_ds_caracteristicas}" cols="65" rows="4" styleClass="pjaus_ds_caracteristicas_" onchange="bv('','pjaus_ds_caracteristicas','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_caracteristicas_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_caracteristicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="pjaus_ds_suscinta" tabindex="26"  value="#{cadPjausPpaobtvBean.pjaus_ds_suscinta}" cols="65" rows="4" styleClass="pjaus_ds_suscinta_" onchange="bv('','pjaus_ds_suscinta','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_suscinta_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_suscinta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
