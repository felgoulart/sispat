<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrq" rendered="#{cadPjausPpaobtvBean.canUpdate}" value="#{cadPjausPpaobtvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrq" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPpaobtvBean.canUpdate}" action="#{cadPjausPpaobtvBean.doValidate}" onmousedown="msgw('aMessagepjtrq');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id6" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPpaobtv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id6" value="#{cadPjausPpaobtvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc6" value="#{cadPjausPpaobtvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_request_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_carta_frrv_antt" for="pjaus_id_carta_frrv_antt"  value="#{iimsg.PjausPpaobtv_pjaus_id_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_id_carta_frrv_antt" tabindex="104"  value="#{cadPjausPpaobtvBean.pjaus_id_carta_frrv_antt}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_id_carta_frrv_antt','6',this.value);"/>
<ps:psGraphicImage id="pjaus_id_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_id_carta_frrv_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_carta_frrv_antt" for="pjaus_dt_carta_frrv_antt"  value="#{iimsg.PjausPpaobtv_pjaus_dt_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_carta_frrv_antt_str" tabindex="105"  value="#{cadPjausPpaobtvBean.pjaus_dt_carta_frrv_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_carta_frrv_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_carta_frrv_antt_str', 'cadForm:pjaus_ds_doc_formaliz', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_carta_frrv_antt_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_carta_frrv_antt_str', 'pjaus_dt_carta_frrv_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_carta_frrv_antt_vc}" styleClass="btp"/>
<div id="pjaus_dt_carta_frrv_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_doc_formaliz" for="pjaus_ds_doc_formaliz"  value="#{iimsg.PjausPpaobtv_pjaus_ds_doc_formaliz_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="pjaus_ds_doc_formaliz" tabindex="106"  value="#{cadPjausPpaobtvBean.pjaus_ds_doc_formaliz}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_doc_formaliz','6',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_doc_formaliz_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_doc_formaliz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_procs_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_prss_antt" for="pjaus_nu_prss_antt"  value="#{iimsg.PjausPpaobtv_pjaus_nu_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_nu_prss_antt" tabindex="107"  value="#{cadPjausPpaobtvBean.pjaus_nu_prss_antt}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_prss_antt','6',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_prss_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prss_antt_ptc" for="pjaus_dt_prss_antt_ptc"  value="#{iimsg.PjausPpaobtv_pjaus_dt_prss_antt_ptc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_prss_antt_ptc_str" tabindex="108"  value="#{cadPjausPpaobtvBean.pjaus_dt_prss_antt_ptc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prss_antt_ptc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prss_antt_ptc_str', 'cadForm:pjaus_pz_prss_antt', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prss_antt_ptc_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prss_antt_ptc_str', 'pjaus_dt_prss_antt_ptcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prss_antt_ptc_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_prss_antt_ptc_vc}" styleClass="btp"/>
<div id="pjaus_dt_prss_antt_ptcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_prss_antt" for="pjaus_pz_prss_antt"  value="#{iimsg.PjausPpaobtv_pjaus_pz_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_pz_prss_antt_str" tabindex="109"  value="#{cadPjausPpaobtvBean.pjaus_pz_prss_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_pz_prss_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_pz_prss_antt_str', 'cadForm:pjaus_dt_inicio', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_pz_prss_antt_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_pz_prss_antt_str', 'pjaus_pz_prss_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_pz_prss_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_pz_prss_antt_vc}" styleClass="btp"/>
<div id="pjaus_pz_prss_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_inicio" for="pjaus_dt_inicio"  value="#{iimsg.PjausPpaobtv_pjaus_dt_inicio_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_inicio_str" tabindex="110"  value="#{cadPjausPpaobtvBean.pjaus_dt_inicio_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_inicio_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_inicio_str', 'cadForm:pjaus_dt_conclusao_prev', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_inicio_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_inicio_str', 'pjaus_dt_inicioCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_inicio_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_inicio_vc}" styleClass="btp"/>
<div id="pjaus_dt_inicioCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_conclusao_prev" for="pjaus_dt_conclusao_prev"  value="#{iimsg.PjausPpaobtv_pjaus_dt_conclusao_prev_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_conclusao_prev_str" tabindex="111"  value="#{cadPjausPpaobtvBean.pjaus_dt_conclusao_prev_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_conclusao_prev_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_conclusao_prev_str', 'cadForm:pjaus_dt_conclusao_eff', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_conclusao_prev_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_conclusao_prev_str', 'pjaus_dt_conclusao_prevCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_conclusao_prev_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_conclusao_prev_vc}" styleClass="btp"/>
<div id="pjaus_dt_conclusao_prevCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_conclusao_eff" for="pjaus_dt_conclusao_eff"  value="#{iimsg.PjausPpaobtv_pjaus_dt_conclusao_eff_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_conclusao_eff_str" tabindex="112"  value="#{cadPjausPpaobtvBean.pjaus_dt_conclusao_eff_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_conclusao_eff_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_conclusao_eff_str', 'cadForm:followup_toolbar__1_a', 8 , event);" onchange="clFields(10);validaDatas2(this);bv('','pjaus_dt_conclusao_eff_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_conclusao_eff_str', 'pjaus_dt_conclusao_effCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_conclusao_eff_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_conclusao_eff_vc}" styleClass="btp"/>
<div id="pjaus_dt_conclusao_effCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_followup_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_sol_obra" for="pjaus_st_sol_obra"  value="#{iimsg.PjausPpaobtv_pjaus_st_sol_obra_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_sol_obra" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_st_sol_obra}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_sol_obra','6','STSOL',this.value);;" size="7" maxlength="5" tabindex="113" />
<h:commandButton id="pjaus_st_sol_obra_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STSOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_sol_obra_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_st_sol_obra_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_sol_obra_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_st_sol_obra_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_pend_ferr" for="pjaus_pz_pend_ferr"  value="#{iimsg.PjausPpaobtv_pjaus_pz_pend_ferr_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_pz_pend_ferr_str" tabindex="114"  value="#{cadPjausPpaobtvBean.pjaus_pz_pend_ferr_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_pz_pend_ferr_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_pz_pend_ferr_str', 'cadForm:pjaus_ds_pend_frrv', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_pz_pend_ferr_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_pz_pend_ferr_str', 'pjaus_pz_pend_ferrCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_pz_pend_ferr_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_pz_pend_ferr_vc}" styleClass="btp"/>
<div id="pjaus_pz_pend_ferrCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_pend_frrv" for="pjaus_ds_pend_frrv"  value="#{iimsg.PjausPpaobtv_pjaus_ds_pend_frrv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_pend_frrv" tabindex="115"  value="#{cadPjausPpaobtvBean.pjaus_ds_pend_frrv}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_pend_frrv','6',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_pend_frrv_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_pend_frrv_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_pend_ferr_resp" for="pjaus_ds_pend_ferr_resp"  value="#{iimsg.PjausPpaobtv_pjaus_ds_pend_ferr_resp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_ds_pend_ferr_resp" tabindex="116"  value="#{cadPjausPpaobtvBean.pjaus_ds_pend_ferr_resp}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_pend_ferr_resp','6',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_pend_ferr_resp_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_pend_ferr_resp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhsp" for="pjaus_pjhsp"  value="#{iimsg.PjausPpaobtv_pjaus_pjhsp_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_approval_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_ato_autorizativo" for="pjaus_ds_ato_autorizativo"  value="#{iimsg.PjausPpaobtv_pjaus_ds_ato_autorizativo_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_ato_autorizativo" tabindex="118"  value="#{cadPjausPpaobtvBean.pjaus_ds_ato_autorizativo}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_ato_autorizativo','6',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_ato_autorizativo_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_ato_autorizativo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ato_autorizativo" for="pjaus_dt_ato_autorizativo"  value="#{iimsg.PjausPpaobtv_pjaus_dt_ato_autorizativo_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_ato_autorizativo_str" tabindex="119"  value="#{cadPjausPpaobtvBean.pjaus_dt_ato_autorizativo_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ato_autorizativo_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ato_autorizativo_str', 'cadForm:pjaus_ds_diario_oficial', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_ato_autorizativo_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ato_autorizativo_str', 'pjaus_dt_ato_autorizativoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ato_autorizativo_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_ato_autorizativo_vc}" styleClass="btp"/>
<div id="pjaus_dt_ato_autorizativoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_diario_oficial" for="pjaus_ds_diario_oficial"  value="#{iimsg.PjausPpaobtv_pjaus_ds_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_diario_oficial" tabindex="120"  value="#{cadPjausPpaobtvBean.pjaus_ds_diario_oficial}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_diario_oficial','6',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_diario_oficial_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_diario_oficial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_diario_oficial" for="pjaus_dt_diario_oficial"  value="#{iimsg.PjausPpaobtv_pjaus_dt_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_diario_oficial_str" tabindex="121"  value="#{cadPjausPpaobtvBean.pjaus_dt_diario_oficial_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_diario_oficial_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_diario_oficial_str', 'cadForm:pjaus_vl_solicitado', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_diario_oficial_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_diario_oficial_str', 'pjaus_dt_diario_oficialCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_diario_oficial_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_diario_oficial_vc}" styleClass="btp"/>
<div id="pjaus_dt_diario_oficialCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_solicitado" for="pjaus_vl_solicitado"  value="#{iimsg.PjausPpaobtv_pjaus_vl_solicitado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="900" class="pr5"> <h:inputText id="pjaus_vl_solicitado" tabindex="122"  value="#{cadPjausPpaobtvBean.pjaus_vl_solicitado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_solicitado','6',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_solicitado_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_vl_solicitado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_autorizado" for="pjaus_vl_autorizado"  value="#{iimsg.PjausPpaobtv_pjaus_vl_autorizado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="pjaus_vl_autorizado" tabindex="123"  value="#{cadPjausPpaobtvBean.pjaus_vl_autorizado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(11);bv('','pjaus_vl_autorizado','6',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_autorizado_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_vl_autorizado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ini_obra" for="pjaus_dt_ini_obra"  value="#{iimsg.PjausPpaobtv_pjaus_dt_ini_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_ini_obra_str" tabindex="124"  value="#{cadPjausPpaobtvBean.pjaus_dt_ini_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ini_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ini_obra_str', 'cadForm:pjaus_dt_fim_obra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_ini_obra_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ini_obra_str', 'pjaus_dt_ini_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ini_obra_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_ini_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_ini_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_fim_obra" for="pjaus_dt_fim_obra"  value="#{iimsg.PjausPpaobtv_pjaus_dt_fim_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_fim_obra_str" tabindex="125"  value="#{cadPjausPpaobtvBean.pjaus_dt_fim_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_fim_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_fim_obra_str', 'cadForm:pjaus_images_ongrid', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_fim_obra_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_fim_obra_str', 'pjaus_dt_fim_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_fim_obra_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_fim_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_fim_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
