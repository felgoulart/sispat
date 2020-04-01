<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjana" rendered="#{cadPjausPaaotBean.canUpdate}" value="#{cadPjausPaaotBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjana" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaotBean.canUpdate}" action="#{cadPjausPaaotBean.doValidate}" onmousedown="msgw('aMessagepjana');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id3" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id3" value="#{cadPjausPaaotBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc3" value="#{cadPjausPaaotBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_docm_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_fonte_recursos" for="pjaus_tp_fonte_recursos"  value="#{iimsg.PjausPaaot_pjaus_tp_fonte_recursos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_fonte_recursos" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_fonte_recursos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_fonte_recursos','3','TPFRS',this.value);;" size="7" maxlength="5" tabindex="33" />
<h:commandButton id="pjaus_tp_fonte_recursos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPFRS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_fonte_recursos_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_fonte_recursos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_fonte_recursos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_fonte_recursos_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_materiais_util" for="pjaus_tp_materiais_util"  value="#{iimsg.PjausPaaot_pjaus_tp_materiais_util_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_materiais_util" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_materiais_util}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_materiais_util','3','TPMUT',this.value);;" size="7" maxlength="5" tabindex="34" />
<h:commandButton id="pjaus_tp_materiais_util_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_materiais_util_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_materiais_util_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_materiais_util_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_materiais_util_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_art_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_proj" for="pjaus_nu_art_proj"  value="#{iimsg.PjausPaaot_pjaus_nu_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_proj" tabindex="35"  value="#{cadPjausPaaotBean.pjaus_nu_art_proj}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(3);bv('','pjaus_nu_art_proj','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_proj_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_nu_art_proj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_proj" for="pjaus_dt_art_proj"  value="#{iimsg.PjausPaaot_pjaus_dt_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_proj_str" tabindex="36"  value="#{cadPjausPaaotBean.pjaus_dt_art_proj_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_proj_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_proj_str', 'cadForm:pjaus_nu_art_exe', 8 , event);" onchange="clFields(4);validaDatas2(this);bv('','pjaus_dt_art_proj_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_proj_str', 'pjaus_dt_art_projCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_proj_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_art_proj_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_projCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_exe" for="pjaus_nu_art_exe"  value="#{iimsg.PjausPaaot_pjaus_nu_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_exe" tabindex="37"  value="#{cadPjausPaaotBean.pjaus_nu_art_exe}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(5);bv('','pjaus_nu_art_exe','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_exe_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_nu_art_exe_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_exe" for="pjaus_dt_art_exe"  value="#{iimsg.PjausPaaot_pjaus_dt_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_exe_str" tabindex="38"  value="#{cadPjausPaaotBean.pjaus_dt_art_exe_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_exe_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_exe_str', 'cadForm:pjaus_nu_art_fisc', 8 , event);" onchange="clFields(6);validaDatas2(this);bv('','pjaus_dt_art_exe_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_exe_str', 'pjaus_dt_art_exeCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_exe_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_art_exe_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_exeCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_fisc" for="pjaus_nu_art_fisc"  value="#{iimsg.PjausPaaot_pjaus_nu_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_fisc" tabindex="39"  value="#{cadPjausPaaotBean.pjaus_nu_art_fisc}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(7);bv('','pjaus_nu_art_fisc','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_fisc_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_nu_art_fisc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_fisc" for="pjaus_dt_art_fisc"  value="#{iimsg.PjausPaaot_pjaus_dt_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_fisc_str" tabindex="40"  value="#{cadPjausPaaotBean.pjaus_dt_art_fisc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_fisc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_fisc_str', 'cadForm:iappv_id_toolbar__1_a', 8 , event);" onchange="clFields(8);validaDatas2(this);bv('','pjaus_dt_art_fisc_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_fisc_str', 'pjaus_dt_art_fiscCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_fisc_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_art_fisc_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_fiscCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_iappv_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_aprov_tec_mrs" for="pjaus_ds_aprov_tec_mrs"  value="#{iimsg.PjausPaaot_pjaus_ds_aprov_tec_mrs_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_ds_aprov_tec_mrs" tabindex="41"  value="#{cadPjausPaaotBean.pjaus_ds_aprov_tec_mrs}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_aprov_tec_mrs','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_aprov_tec_mrs_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_aprov_tec_mrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_inst_contratual" for="pjaus_ds_inst_contratual"  value="#{iimsg.PjausPaaot_pjaus_ds_inst_contratual_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_inst_contratual" tabindex="42"  value="#{cadPjausPaaotBean.pjaus_ds_inst_contratual}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_inst_contratual','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_inst_contratual_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_inst_contratual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov_int" for="pjaus_dt_aprov_int"  value="#{iimsg.PjausPaaot_pjaus_dt_aprov_int_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="pjaus_dt_aprov_int_str" tabindex="43"  value="#{cadPjausPaaotBean.pjaus_dt_aprov_int_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_int_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_int_str', 'cadForm:pjaus_dt_aprov', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_int_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_int_str', 'pjaus_dt_aprov_intCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_int_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_aprov_int_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprov_intCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov" for="pjaus_dt_aprov"  value="#{iimsg.PjausPaaot_pjaus_dt_aprov_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_aprov_str" tabindex="44"  value="#{cadPjausPaaotBean.pjaus_dt_aprov_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_str', 'cadForm:request_bd_frame__4x7', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_str', 'pjaus_dt_aprovCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_aprov_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprovCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
