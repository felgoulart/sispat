<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrq" rendered="#{cadPjausPaaotBean.canUpdate}" value="#{cadPjausPaaotBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrq" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaotBean.canUpdate}" action="#{cadPjausPaaotBean.doValidate}" onmousedown="msgw('aMessagepjtrq');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPaaotBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPaaotBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_inst_contratual" for="pjaus_ds_inst_contratual"  value="#{iimsg.PjausPaaot_pjaus_ds_inst_contratual_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_inst_contratual" tabindex="39"  value="#{cadPjausPaaotBean.pjaus_ds_inst_contratual}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_inst_contratual','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_inst_contratual_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_inst_contratual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov_int" for="pjaus_dt_aprov_int"  value="#{iimsg.PjausPaaot_pjaus_dt_aprov_int_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_aprov_int_str" tabindex="40"  value="#{cadPjausPaaotBean.pjaus_dt_aprov_int_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_int_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_int_str', 'cadForm:request_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_int_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_int_str', 'pjaus_dt_aprov_intCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_int_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_aprov_int_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprov_intCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_request_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_carta_frrv_antt" for="pjaus_id_carta_frrv_antt"  value="#{iimsg.PjausPaaot_pjaus_id_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_id_carta_frrv_antt" tabindex="41"  value="#{cadPjausPaaotBean.pjaus_id_carta_frrv_antt}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_id_carta_frrv_antt','2',this.value);"/>
<ps:psGraphicImage id="pjaus_id_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_id_carta_frrv_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_carta_frrv_antt" for="pjaus_dt_carta_frrv_antt"  value="#{iimsg.PjausPaaot_pjaus_dt_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_carta_frrv_antt_str" tabindex="42"  value="#{cadPjausPaaotBean.pjaus_dt_carta_frrv_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_carta_frrv_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_carta_frrv_antt_str', 'cadForm:pjaus_ds_doc_formaliz', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_carta_frrv_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_carta_frrv_antt_str', 'pjaus_dt_carta_frrv_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_carta_frrv_antt_vc}" styleClass="btp"/>
<div id="pjaus_dt_carta_frrv_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_doc_formaliz" for="pjaus_ds_doc_formaliz"  value="#{iimsg.PjausPaaot_pjaus_ds_doc_formaliz_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_ds_doc_formaliz" tabindex="43"  value="#{cadPjausPaaotBean.pjaus_ds_doc_formaliz}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_doc_formaliz','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_doc_formaliz_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_doc_formaliz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_typol_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_investimento1" for="pjaus_tp_investimento1"  value="#{iimsg.PjausPaaot_pjaus_tp_investimento1_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_investimento1" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_investimento1}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_investimento1','2','TPINV',this.value);;" size="7" maxlength="5" tabindex="44" />
<h:commandButton id="pjaus_tp_investimento1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPINV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_investimento1_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_investimento1_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_investimento1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_investimento1_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_contrapartida_fin" for="pjaus_tp_contrapartida_fin"  value="#{iimsg.PjausPaaot_pjaus_tp_contrapartida_fin_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_contrapartida_fin" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_contrapartida_fin}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_contrapartida_fin','2','GENYN',this.value);;" size="7" maxlength="5" tabindex="45" />
<h:commandButton id="pjaus_tp_contrapartida_fin_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_contrapartida_fin_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_contrapartida_fin_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_contrapartida_fin_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_contrapartida_fin_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_prcantt_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_prss_antt" for="pjaus_nu_prss_antt"  value="#{iimsg.PjausPaaot_pjaus_nu_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_nu_prss_antt" tabindex="46"  value="#{cadPjausPaaotBean.pjaus_nu_prss_antt}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_prss_antt','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_prss_antt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_nu_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prss_antt_ptc" for="pjaus_dt_prss_antt_ptc"  value="#{iimsg.PjausPaaot_pjaus_dt_prss_antt_ptc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_prss_antt_ptc_str" tabindex="47"  value="#{cadPjausPaaotBean.pjaus_dt_prss_antt_ptc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prss_antt_ptc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prss_antt_ptc_str', 'cadForm:pjaus_pz_prss_antt', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prss_antt_ptc_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prss_antt_ptc_str', 'pjaus_dt_prss_antt_ptcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prss_antt_ptc_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_prss_antt_ptc_vc}" styleClass="btp"/>
<div id="pjaus_dt_prss_antt_ptcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_prss_antt" for="pjaus_pz_prss_antt"  value="#{iimsg.PjausPaaot_pjaus_pz_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="900" > <h:inputText id="pjaus_pz_prss_antt" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_pz_prss_antt_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_pz_prss_antt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_pz_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_df_prss_antt" for="pjaus_df_prss_antt"  value="#{iimsg.PjausPaaot_pjaus_df_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_df_prss_antt_str" tabindex="49"  value="#{cadPjausPaaotBean.pjaus_df_prss_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_df_prss_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_df_prss_antt_str', 'cadForm:pjaus_dd_atraso', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_df_prss_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_df_prss_antt_str', 'pjaus_df_prss_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_df_prss_antt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_df_prss_antt_vc}" styleClass="btp"/>
<div id="pjaus_df_prss_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dd_atraso" for="pjaus_dd_atraso"  value="#{iimsg.PjausPaaot_pjaus_dd_atraso_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="null" > <h:inputText id="pjaus_dd_atraso" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_dd_atraso}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pjaus_dd_atraso_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dd_atraso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_cancelamento" for="pjaus_ds_cancelamento"  value="#{iimsg.PjausPaaot_pjaus_ds_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_cancelamento" tabindex="51"  value="#{cadPjausPaaotBean.pjaus_ds_cancelamento}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_cancelamento','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_cancelamento_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_cancelamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_cancelamento" for="pjaus_dt_cancelamento"  value="#{iimsg.PjausPaaot_pjaus_dt_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_cancelamento_str" tabindex="52"  value="#{cadPjausPaaotBean.pjaus_dt_cancelamento_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_cancelamento_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_cancelamento_str', 'cadForm:exectt_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_cancelamento_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_cancelamento_str', 'pjaus_dt_cancelamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_cancelamento_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_cancelamento_vc}" styleClass="btp"/>
<div id="pjaus_dt_cancelamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_exectt_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov" for="pjaus_dt_aprov"  value="#{iimsg.PjausPaaot_pjaus_dt_aprov_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_aprov_str" tabindex="53"  value="#{cadPjausPaaotBean.pjaus_dt_aprov_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_str', 'cadForm:pjaus_cd_porte_fisc_obra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_str', 'pjaus_dt_aprovCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_aprov_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprovCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_porte_fisc_obra" for="pjaus_cd_porte_fisc_obra"  value="#{iimsg.PjausPaaot_pjaus_cd_porte_fisc_obra_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_porte_fisc_obra" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_cd_porte_fisc_obra}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_porte_fisc_obra','2','PFOBR',this.value);;" size="7" maxlength="5" tabindex="54" />
<h:commandButton id="pjaus_cd_porte_fisc_obra_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PFOBR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_porte_fisc_obra_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_porte_fisc_obra_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_porte_fisc_obra_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_porte_fisc_obra_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ini_obra" for="pjaus_dt_ini_obra"  value="#{iimsg.PjausPaaot_pjaus_dt_ini_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_ini_obra_str" tabindex="55"  value="#{cadPjausPaaotBean.pjaus_dt_ini_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ini_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ini_obra_str', 'cadForm:pjaus_dt_fim_obra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_ini_obra_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ini_obra_str', 'pjaus_dt_ini_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ini_obra_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_ini_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_ini_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_fim_obra" for="pjaus_dt_fim_obra"  value="#{iimsg.PjausPaaot_pjaus_dt_fim_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_fim_obra_str" tabindex="56"  value="#{cadPjausPaaotBean.pjaus_dt_fim_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_fim_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_fim_obra_str', 'cadForm:statussum_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_fim_obra_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_fim_obra_str', 'pjaus_dt_fim_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_fim_obra_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_fim_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_fim_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_statussum_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_ds_sumacao" value="#{cadPjausPaaotBean.pjaus_ds_sumacao}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_sumacaox" for="pjaus_ds_sumacaox"  value="#{iimsg.PjausPaaot_pjaus_ds_sumacaox_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_ds_sumacaox" tabindex="57"  value="#{cadPjausPaaotBean.pjaus_ds_sumacaox}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_sumacaox','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_sumacaox_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_sumacaox_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
