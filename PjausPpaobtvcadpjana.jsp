<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjana" rendered="#{cadPjausPpaobtvBean.canUpdate}" value="#{cadPjausPpaobtvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjana" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPpaobtvBean.canUpdate}" action="#{cadPjausPpaobtvBean.doValidate}" onmousedown="msgw('aMessagepjana');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id4" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPpaobtv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id4" value="#{cadPjausPpaobtvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc4" value="#{cadPjausPpaobtvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_docm_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_fonte_recursos" for="pjaus_tp_fonte_recursos"  value="#{iimsg.PjausPpaobtv_pjaus_tp_fonte_recursos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_fonte_recursos" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_tp_fonte_recursos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_fonte_recursos','4','TPFRS',this.value);;" size="7" maxlength="5" tabindex="40" />
<h:commandButton id="pjaus_tp_fonte_recursos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPFRS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_fonte_recursos_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_tp_fonte_recursos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_fonte_recursos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_tp_fonte_recursos_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_merc_dem_trans" for="pjaus_ds_merc_dem_trans"  value="#{iimsg.PjausPpaobtv_pjaus_ds_merc_dem_trans_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_merc_dem_trans" tabindex="41"  value="#{cadPjausPpaobtvBean.pjaus_ds_merc_dem_trans}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_merc_dem_trans','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_merc_dem_trans_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_merc_dem_trans_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_materiais_util" for="pjaus_tp_materiais_util"  value="#{iimsg.PjausPpaobtv_pjaus_tp_materiais_util_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_materiais_util" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_tp_materiais_util}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_materiais_util','4','TPMUT',this.value);;" size="7" maxlength="5" tabindex="42" />
<h:commandButton id="pjaus_tp_materiais_util_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_materiais_util_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_tp_materiais_util_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_materiais_util_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_tp_materiais_util_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_proc_outros" for="pjaus_ds_proc_outros"  value="#{iimsg.PjausPpaobtv_pjaus_ds_proc_outros_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_proc_outros" tabindex="43"  value="#{cadPjausPpaobtvBean.pjaus_ds_proc_outros}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_proc_outros','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_proc_outros_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_proc_outros_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_checklist_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_projeto_basico" for="pjaus_in_projeto_basico"  value="#{iimsg.PjausPpaobtv_pjaus_in_projeto_basico_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_projeto_basico_bol" value="#{cadPjausPpaobtvBean.pjaus_in_projeto_basico}"/>
<h:selectBooleanCheckbox id="pjaus_in_projeto_basico" tabindex="44"  value="#{cadPjausPpaobtvBean.pjaus_in_projeto_basico_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_projeto_basico_bol');"/>
<ps:psGraphicImage id="pjaus_in_projeto_basico_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_projeto_basico_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_projeto_executivo" for="pjaus_in_projeto_executivo"  value="#{iimsg.PjausPpaobtv_pjaus_in_projeto_executivo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_projeto_executivo_bol" value="#{cadPjausPpaobtvBean.pjaus_in_projeto_executivo}"/>
<h:selectBooleanCheckbox id="pjaus_in_projeto_executivo" tabindex="45"  value="#{cadPjausPpaobtvBean.pjaus_in_projeto_executivo_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_projeto_executivo_bol');"/>
<ps:psGraphicImage id="pjaus_in_projeto_executivo_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_projeto_executivo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_memo_projeto" for="pjaus_in_memo_projeto"  value="#{iimsg.PjausPpaobtv_pjaus_in_memo_projeto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_memo_projeto_bol" value="#{cadPjausPpaobtvBean.pjaus_in_memo_projeto}"/>
<h:selectBooleanCheckbox id="pjaus_in_memo_projeto" tabindex="46"  value="#{cadPjausPpaobtvBean.pjaus_in_memo_projeto_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_memo_projeto_bol');"/>
<ps:psGraphicImage id="pjaus_in_memo_projeto_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_memo_projeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cron_fis" for="pjaus_in_cron_fis"  value="#{iimsg.PjausPpaobtv_pjaus_in_cron_fis_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cron_fis_bol" value="#{cadPjausPpaobtvBean.pjaus_in_cron_fis}"/>
<h:selectBooleanCheckbox id="pjaus_in_cron_fis" tabindex="47"  value="#{cadPjausPpaobtvBean.pjaus_in_cron_fis_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cron_fis_bol');"/>
<ps:psGraphicImage id="pjaus_in_cron_fis_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_cron_fis_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cron_fin" for="pjaus_in_cron_fin"  value="#{iimsg.PjausPpaobtv_pjaus_in_cron_fin_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cron_fin_bol" value="#{cadPjausPpaobtvBean.pjaus_in_cron_fin}"/>
<h:selectBooleanCheckbox id="pjaus_in_cron_fin" tabindex="48"  value="#{cadPjausPpaobtvBean.pjaus_in_cron_fin_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cron_fin_bol');"/>
<ps:psGraphicImage id="pjaus_in_cron_fin_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_cron_fin_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cost_estimates" for="pjaus_in_cost_estimates"  value="#{iimsg.PjausPpaobtv_pjaus_in_cost_estimates_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cost_estimates_bol" value="#{cadPjausPpaobtvBean.pjaus_in_cost_estimates}"/>
<h:selectBooleanCheckbox id="pjaus_in_cost_estimates" tabindex="49"  value="#{cadPjausPpaobtvBean.pjaus_in_cost_estimates_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cost_estimates_bol');"/>
<ps:psGraphicImage id="pjaus_in_cost_estimates_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_cost_estimates_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_lincencas" for="pjaus_in_lincencas"  value="#{iimsg.PjausPpaobtv_pjaus_in_lincencas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_lincencas_bol" value="#{cadPjausPpaobtvBean.pjaus_in_lincencas}"/>
<h:selectBooleanCheckbox id="pjaus_in_lincencas" tabindex="50"  value="#{cadPjausPpaobtvBean.pjaus_in_lincencas_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_lincencas_bol');"/>
<ps:psGraphicImage id="pjaus_in_lincencas_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_lincencas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_lincenca_mrs" for="pjaus_in_lincenca_mrs"  value="#{iimsg.PjausPpaobtv_pjaus_in_lincenca_mrs_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_lincenca_mrs_bol" value="#{cadPjausPpaobtvBean.pjaus_in_lincenca_mrs}"/>
<h:selectBooleanCheckbox id="pjaus_in_lincenca_mrs" tabindex="51"  value="#{cadPjausPpaobtvBean.pjaus_in_lincenca_mrs_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_lincenca_mrs_bol');"/>
<ps:psGraphicImage id="pjaus_in_lincenca_mrs_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_lincenca_mrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_proj" for="pjaus_in_art_proj"  value="#{iimsg.PjausPpaobtv_pjaus_in_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_proj_bol" value="#{cadPjausPpaobtvBean.pjaus_in_art_proj}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_proj" tabindex="52"  value="#{cadPjausPpaobtvBean.pjaus_in_art_proj_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_proj_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_proj_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_art_proj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_exe" for="pjaus_in_art_exe"  value="#{iimsg.PjausPpaobtv_pjaus_in_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_exe_bol" value="#{cadPjausPpaobtvBean.pjaus_in_art_exe}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_exe" tabindex="53"  value="#{cadPjausPpaobtvBean.pjaus_in_art_exe_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_exe_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_exe_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_art_exe_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_fisc" for="pjaus_in_art_fisc"  value="#{iimsg.PjausPpaobtv_pjaus_in_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_fisc_bol" value="#{cadPjausPpaobtvBean.pjaus_in_art_fisc}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_fisc" tabindex="54"  value="#{cadPjausPpaobtvBean.pjaus_in_art_fisc_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_fisc_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_fisc_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_art_fisc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_aprov_tec_mrs" for="pjaus_in_aprov_tec_mrs"  value="#{iimsg.PjausPpaobtv_pjaus_in_aprov_tec_mrs_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_aprov_tec_mrs_bol" value="#{cadPjausPpaobtvBean.pjaus_in_aprov_tec_mrs}"/>
<h:selectBooleanCheckbox id="pjaus_in_aprov_tec_mrs" tabindex="55"  value="#{cadPjausPpaobtvBean.pjaus_in_aprov_tec_mrs_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_aprov_tec_mrs_bol');"/>
<ps:psGraphicImage id="pjaus_in_aprov_tec_mrs_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_aprov_tec_mrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_inst_contratual" for="pjaus_in_inst_contratual"  value="#{iimsg.PjausPpaobtv_pjaus_in_inst_contratual_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_inst_contratual_bol" value="#{cadPjausPpaobtvBean.pjaus_in_inst_contratual}"/>
<h:selectBooleanCheckbox id="pjaus_in_inst_contratual" tabindex="56"  value="#{cadPjausPpaobtvBean.pjaus_in_inst_contratual_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_inst_contratual_bol');"/>
<ps:psGraphicImage id="pjaus_in_inst_contratual_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_inst_contratual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_carta_frrv_antt" for="pjaus_in_carta_frrv_antt"  value="#{iimsg.PjausPpaobtv_pjaus_in_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_carta_frrv_antt_bol" value="#{cadPjausPpaobtvBean.pjaus_in_carta_frrv_antt}"/>
<h:selectBooleanCheckbox id="pjaus_in_carta_frrv_antt" tabindex="57"  value="#{cadPjausPpaobtvBean.pjaus_in_carta_frrv_antt_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_carta_frrv_antt_bol');"/>
<ps:psGraphicImage id="pjaus_in_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_carta_frrv_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_prss_antt" for="pjaus_in_prss_antt"  value="#{iimsg.PjausPpaobtv_pjaus_in_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="6" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_prss_antt_bol" value="#{cadPjausPpaobtvBean.pjaus_in_prss_antt}"/>
<h:selectBooleanCheckbox id="pjaus_in_prss_antt" tabindex="58"  value="#{cadPjausPpaobtvBean.pjaus_in_prss_antt_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_prss_antt_bol');"/>
<ps:psGraphicImage id="pjaus_in_prss_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_art_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_proj" for="pjaus_nu_art_proj"  value="#{iimsg.PjausPpaobtv_pjaus_nu_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_proj" tabindex="59"  value="#{cadPjausPpaobtvBean.pjaus_nu_art_proj}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(4);bv('','pjaus_nu_art_proj','4',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_proj_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_art_proj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_proj" for="pjaus_dt_art_proj"  value="#{iimsg.PjausPpaobtv_pjaus_dt_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_proj_str" tabindex="60"  value="#{cadPjausPpaobtvBean.pjaus_dt_art_proj_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_proj_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_proj_str', 'cadForm:pjaus_nu_art_exe', 8 , event);" onchange="clFields(5);validaDatas2(this);bv('','pjaus_dt_art_proj_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_proj_str', 'pjaus_dt_art_projCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_proj_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_art_proj_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_projCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_exe" for="pjaus_nu_art_exe"  value="#{iimsg.PjausPpaobtv_pjaus_nu_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_exe" tabindex="61"  value="#{cadPjausPpaobtvBean.pjaus_nu_art_exe}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(6);bv('','pjaus_nu_art_exe','4',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_exe_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_art_exe_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_exe" for="pjaus_dt_art_exe"  value="#{iimsg.PjausPpaobtv_pjaus_dt_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_exe_str" tabindex="62"  value="#{cadPjausPpaobtvBean.pjaus_dt_art_exe_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_exe_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_exe_str', 'cadForm:pjaus_nu_art_fisc', 8 , event);" onchange="clFields(7);validaDatas2(this);bv('','pjaus_dt_art_exe_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_exe_str', 'pjaus_dt_art_exeCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_exe_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_art_exe_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_exeCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_fisc" for="pjaus_nu_art_fisc"  value="#{iimsg.PjausPpaobtv_pjaus_nu_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_art_fisc" tabindex="63"  value="#{cadPjausPpaobtvBean.pjaus_nu_art_fisc}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(8);bv('','pjaus_nu_art_fisc','4',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_fisc_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_nu_art_fisc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_fisc" for="pjaus_dt_art_fisc"  value="#{iimsg.PjausPpaobtv_pjaus_dt_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_art_fisc_str" tabindex="64"  value="#{cadPjausPpaobtvBean.pjaus_dt_art_fisc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_fisc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_fisc_str', 'cadForm:iappv_id_toolbar__1_a', 8 , event);" onchange="clFields(9);validaDatas2(this);bv('','pjaus_dt_art_fisc_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_fisc_str', 'pjaus_dt_art_fiscCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_fisc_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_art_fisc_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_fiscCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_iappv_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_aprov_tec_mrs" for="pjaus_ds_aprov_tec_mrs"  value="#{iimsg.PjausPpaobtv_pjaus_ds_aprov_tec_mrs_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_ds_aprov_tec_mrs" tabindex="65"  value="#{cadPjausPpaobtvBean.pjaus_ds_aprov_tec_mrs}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_aprov_tec_mrs','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_aprov_tec_mrs_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_aprov_tec_mrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_inst_contratual" for="pjaus_ds_inst_contratual"  value="#{iimsg.PjausPpaobtv_pjaus_ds_inst_contratual_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_inst_contratual" tabindex="66"  value="#{cadPjausPpaobtvBean.pjaus_ds_inst_contratual}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_inst_contratual','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_inst_contratual_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_ds_inst_contratual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov_int" for="pjaus_dt_aprov_int"  value="#{iimsg.PjausPpaobtv_pjaus_dt_aprov_int_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="pjaus_dt_aprov_int_str" tabindex="67"  value="#{cadPjausPpaobtvBean.pjaus_dt_aprov_int_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_int_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_int_str', 'cadForm:pjaus_dt_aprov', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_int_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_int_str', 'pjaus_dt_aprov_intCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_int_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_aprov_int_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprov_intCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov" for="pjaus_dt_aprov"  value="#{iimsg.PjausPpaobtv_pjaus_dt_aprov_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_aprov_str" tabindex="68"  value="#{cadPjausPpaobtvBean.pjaus_dt_aprov_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_str', 'cadForm:analysish_an_frame__6x15', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_str', 'pjaus_dt_aprovCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_aprov_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprovCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
