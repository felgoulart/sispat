<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrg" rendered="#{cadPjausPaaitpsBean.canUpdate}" value="#{cadPjausPaaitpsBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaitpsBean.canUpdate}" action="#{cadPjausPaaitpsBean.doValidate}" onmousedown="msgw('aMessagepjtrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id1" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaitps_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id1" value="#{cadPjausPaaitpsBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc1" value="#{cadPjausPaaitpsBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaitps_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id" for="pjaus_id"  value="#{iimsg.PjausPaaitps_pjaus_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="700" > <h:inputText id="pjaus_id" tabindex="3"  onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_id}"  styleClass="txl pl5 tbx" size="29" maxlength="27" onchange="bv('','pjaus_id','1',this.value);"/>
<ps:psGraphicImage id="pjaus_id_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_pasta" for="pjaus_nu_pasta"  value="#{iimsg.PjausPaaitps_pjaus_nu_pasta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_pasta" tabindex="4"  value="#{cadPjausPaaitpsBean.pjaus_nu_pasta}" size="29" maxlength="27"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_pasta','1',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_pasta_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_nu_pasta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_base_dados" for="pjaus_nu_base_dados"  value="#{iimsg.PjausPaaitps_pjaus_nu_base_dados_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_base_dados" tabindex="5"  value="#{cadPjausPaaitpsBean.pjaus_nu_base_dados}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_base_dados','1',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_base_dados_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_nu_base_dados_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_proprio_pj" for="pjaus_cd_proprio_pj"  value="#{iimsg.PjausPaaitps_pjaus_cd_proprio_pj_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_cd_proprio_pj" tabindex="6"  value="#{cadPjausPaaitpsBean.pjaus_cd_proprio_pj}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_cd_proprio_pj','1',this.value);"/>
<ps:psGraphicImage id="pjaus_cd_proprio_pj_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_cd_proprio_pj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st" for="pjaus_st"  value="#{iimsg.PjausPaaitps_pjaus_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_st}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st','1','STPRJ',this.value);;" size="7" maxlength="5" tabindex="7" />
<h:commandButton id="pjaus_st_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STPRJ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_st_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_abertura" for="pjaus_dt_abertura"  value="#{iimsg.PjausPaaitps_pjaus_dt_abertura_tt}"/>  </td> <%-- <top> --%>
<%-- current Date --%>
<td  width="700" > <h:inputText id="pjaus_dt_abertura_str" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_dt_abertura_str}" onchange="uf();" size="0" maxlength="10"  styleClass="txl pl5 tbDtr"/>
<ps:psGraphicImage id="pjaus_dt_abertura_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dt_abertura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_solicitante" for="pjaus_tp_solicitante"  value="#{iimsg.PjausPaaitps_pjaus_tp_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_solicitante" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_tp_solicitante}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(1);cleSubSel_uv('pjaus_id_solicitante');bdcd('','pjaus_tp_solicitante','1','TSPRJ',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="pjaus_tp_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TSPRJ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_solicitante_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_tp_solicitante_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_tp_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_solicitante" for="pjaus_id_solicitante"  value="#{iimsg.PjausPaaitps_pjaus_id_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjaus_id_solicitante" tabindex="9"  onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_id_solicitante}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="if(!valSubSel('pjaus_tp_solicitante')){this.value='';}Transfk('','','1','pjaus_id_solicitante','Solic','solic_cd','solic_nm_razaosocial',this.value);" size="12" maxlength="10" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="pjaus_id_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="typevl=rpel('cadForm:pjaus_tp_solicitante');tranx=SolicType(typevl);;if(typevl == '') {alertVal('pjaus_tp_solicitante') } else { pw(tranx, tran, this.id, 'no')};" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_id_solicitante_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_id_solicitante_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="pjaus_id_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_id_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="150" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_pj_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_sl_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_im_tt_tt}"/>
<td width="0"  >
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimgpj" tabindex="-1" immediate="true" action="#{cadObimgpjBean.doObternull}" onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;valor1=el('cadForm:pjaus_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaitpscad&tipo='+wtran+'&valor='+valor1;"  image="#{cadPjausPaaitpsBean.imag_im}" />
<%-- filler2 --%> &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_dc_tt_tt}"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docs_xsel" immediate="true" action="#{cadObdocpjBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaitpscad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"   image="#{cadPjausPaaitpsBean.obdocpj_im}" title="#{iimsg.obdocpj_TT}"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nm_title" for="pjaus_nm_title"  value="#{iimsg.PjausPaaitps_pjaus_nm_title_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nm_title" tabindex="12"  value="#{cadPjausPaaitpsBean.pjaus_nm_title}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nm_title','1',this.value);"/>
<ps:psGraphicImage id="pjaus_nm_title_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_nm_title_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_batch_id" for="batch_id"  value="#{iimsg.PjausPaaitps_batch_id_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="700" > <h:inputText id="batch_id" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.batch_id}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="950" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_car_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td  colspan ="2" width="1000" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaitps_pjaus_sus_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="pjaus_ds_caracteristicas" tabindex="14"  value="#{cadPjausPaaitpsBean.pjaus_ds_caracteristicas}" cols="65" rows="4" styleClass="pjaus_ds_caracteristicas_" onchange="bv('','pjaus_ds_caracteristicas','1',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_caracteristicas_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_ds_caracteristicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="pjaus_ds_suscinta" tabindex="15"  value="#{cadPjausPaaitpsBean.pjaus_ds_suscinta}" cols="65" rows="4" styleClass="pjaus_ds_suscinta_" onchange="bv('','pjaus_ds_suscinta','1',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_suscinta_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_ds_suscinta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_inicio" for="pjaus_dt_inicio"  value="#{iimsg.PjausPaaitps_pjaus_dt_inicio_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_inicio_str" tabindex="16"  value="#{cadPjausPaaitpsBean.pjaus_dt_inicio_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_inicio_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_inicio_str', 'cadForm:pjaus_dt_conclusao_prev', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_inicio_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_inicio_str', 'pjaus_dt_inicioCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_inicio_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dt_inicio_vc}" styleClass="btp"/>
<div id="pjaus_dt_inicioCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_conclusao_prev" for="pjaus_dt_conclusao_prev"  value="#{iimsg.PjausPaaitps_pjaus_dt_conclusao_prev_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_conclusao_prev_str" tabindex="17"  value="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_prev_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_conclusao_prev_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_conclusao_prev_str', 'cadForm:pjaus_dt_conclusao_eff', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_conclusao_prev_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_conclusao_prev_str', 'pjaus_dt_conclusao_prevCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_conclusao_prev_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_prev_vc}" styleClass="btp"/>
<div id="pjaus_dt_conclusao_prevCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_conclusao_eff" for="pjaus_dt_conclusao_eff"  value="#{iimsg.PjausPaaitps_pjaus_dt_conclusao_eff_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_conclusao_eff_str" tabindex="18"  value="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_eff_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_conclusao_eff_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_conclusao_eff_str', 'cadForm:pjaus_dt_conclusao_eff_nap', 8 , event);" onchange="clFields(2);validaDatas2(this);bv('','pjaus_dt_conclusao_eff_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_conclusao_eff_str', 'pjaus_dt_conclusao_effCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_conclusao_eff_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_eff_vc}" styleClass="btp"/>
<div id="pjaus_dt_conclusao_effCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_conclusao_eff_nap" for="pjaus_dt_conclusao_eff_nap"  value="#{iimsg.PjausPaaitps_pjaus_dt_conclusao_eff_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_conclusao_eff_nap" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_eff_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(3);cleSubSel_uv('pjaus_dt_conclusao_eff_str');bdcd('','pjaus_dt_conclusao_eff_nap','1','TPNNP',this.value);;" size="14" maxlength="12" tabindex="19" />
<h:commandButton id="pjaus_dt_conclusao_eff_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_conclusao_eff_nap_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_eff_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_conclusao_eff_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_dt_conclusao_eff_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dd_atraso" for="pjaus_dd_atraso"  value="#{iimsg.PjausPaaitps_pjaus_dd_atraso_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td colspan ="4"  width="250"  > <h:inputText id="pjaus_dd_atraso" tabindex="20"  value="#{cadPjausPaaitpsBean.pjaus_dd_atraso}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','pjaus_dd_atraso','1',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_dd_atraso_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_dd_atraso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_autorizado" for="pjaus_vl_autorizado"  value="#{iimsg.PjausPaaitps_pjaus_vl_autorizado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_vl_autorizado" tabindex="21"  value="#{cadPjausPaaitpsBean.pjaus_vl_autorizado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(4);bv('','pjaus_vl_autorizado','1',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_autorizado_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_vl_autorizado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_vl_autorizado_nap" for="pjaus_vl_autorizado_nap"  value="#{iimsg.PjausPaaitps_pjaus_vl_autorizado_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_vl_autorizado_nap" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_vl_autorizado_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(5);cleSubSel_uv('pjaus_vl_aval_tecnica');bdcd('','pjaus_vl_autorizado_nap','1','TPNNP',this.value);;" size="14" maxlength="12" tabindex="22" />
<h:commandButton id="pjaus_vl_autorizado_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_vl_autorizado_nap_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_vl_autorizado_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_vl_autorizado_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_vl_autorizado_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_realizado" for="pjaus_vl_realizado"  value="#{iimsg.PjausPaaitps_pjaus_vl_realizado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_vl_realizado" tabindex="23"  value="#{cadPjausPaaitpsBean.pjaus_vl_realizado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(6);bv('','pjaus_vl_realizado','1',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_realizado_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_vl_realizado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_vl_realizado_nap" for="pjaus_vl_realizado_nap"  value="#{iimsg.PjausPaaitps_pjaus_vl_realizado_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_vl_realizado_nap" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_vl_realizado_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(7);cleSubSel_uv('pjaus_vl_realizado');bdcd('','pjaus_vl_realizado_nap','1','TPNNP',this.value);;" size="14" maxlength="12" tabindex="24" />
<h:commandButton id="pjaus_vl_realizado_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_vl_realizado_nap_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_vl_realizado_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_vl_realizado_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_vl_realizado_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ar_ocup_em_areaop" for="pjaus_ar_ocup_em_areaop"  value="#{iimsg.PjausPaaitps_pjaus_ar_ocup_em_areaop_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_ar_ocup_em_areaop" tabindex="25"  value="#{cadPjausPaaitpsBean.pjaus_ar_ocup_em_areaop_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_ar_ocup_em_areaop','1',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_ar_ocup_em_areaop_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_ar_ocup_em_areaop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ar_unit_medida" for="pjaus_ar_unit_medida"  value="#{iimsg.PjausPaaitps_pjaus_ar_unit_medida_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_ar_unit_medida" onclick="clf(this);" value="#{cadPjausPaaitpsBean.pjaus_ar_unit_medida}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_ar_unit_medida','1','TPUNM',this.value);;" size="7" maxlength="5" tabindex="26" />
<h:commandButton id="pjaus_ar_unit_medida_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPUNM', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_ar_unit_medida_vc" flagType="val" flag="#{cadPjausPaaitpsBean.pjaus_ar_unit_medida_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_ar_unit_medida_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaitpsBean.pjaus_ar_unit_medida_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xxaa <last frame close> if no Frames--%>
