<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjana" rendered="#{cadPjausPaaittvBean.canUpdate}" value="#{cadPjausPaaittvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjana" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaittvBean.canUpdate}" action="#{cadPjausPaaittvBean.doValidate}" onmousedown="msgw('aMessagepjana');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id3" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaittv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id3" value="#{cadPjausPaaittvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc3" value="#{cadPjausPaaittvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_checklist_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_dados_cadastrais" for="pjaus_in_dados_cadastrais"  value="#{iimsg.PjausPaaittv_pjaus_in_dados_cadastrais_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_dados_cadastrais_bol" value="#{cadPjausPaaittvBean.pjaus_in_dados_cadastrais}"/>
<h:selectBooleanCheckbox id="pjaus_in_dados_cadastrais" tabindex="63"  value="#{cadPjausPaaittvBean.pjaus_in_dados_cadastrais_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_dados_cadastrais_bol');"/>
<ps:psGraphicImage id="pjaus_in_dados_cadastrais_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_dados_cadastrais_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_projeto_executivo" for="pjaus_in_projeto_executivo"  value="#{iimsg.PjausPaaittv_pjaus_in_projeto_executivo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_projeto_executivo_bol" value="#{cadPjausPaaittvBean.pjaus_in_projeto_executivo}"/>
<h:selectBooleanCheckbox id="pjaus_in_projeto_executivo" tabindex="64"  value="#{cadPjausPaaittvBean.pjaus_in_projeto_executivo_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_projeto_executivo_bol');"/>
<ps:psGraphicImage id="pjaus_in_projeto_executivo_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_projeto_executivo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_memo_projeto" for="pjaus_in_memo_projeto"  value="#{iimsg.PjausPaaittv_pjaus_in_memo_projeto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_memo_projeto_bol" value="#{cadPjausPaaittvBean.pjaus_in_memo_projeto}"/>
<h:selectBooleanCheckbox id="pjaus_in_memo_projeto" tabindex="65"  value="#{cadPjausPaaittvBean.pjaus_in_memo_projeto_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_memo_projeto_bol');"/>
<ps:psGraphicImage id="pjaus_in_memo_projeto_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_memo_projeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cost_estimates" for="pjaus_in_cost_estimates"  value="#{iimsg.PjausPaaittv_pjaus_in_cost_estimates_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cost_estimates_bol" value="#{cadPjausPaaittvBean.pjaus_in_cost_estimates}"/>
<h:selectBooleanCheckbox id="pjaus_in_cost_estimates" tabindex="66"  value="#{cadPjausPaaittvBean.pjaus_in_cost_estimates_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cost_estimates_bol');"/>
<ps:psGraphicImage id="pjaus_in_cost_estimates_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_cost_estimates_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cron_fis" for="pjaus_in_cron_fis"  value="#{iimsg.PjausPaaittv_pjaus_in_cron_fis_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cron_fis_bol" value="#{cadPjausPaaittvBean.pjaus_in_cron_fis}"/>
<h:selectBooleanCheckbox id="pjaus_in_cron_fis" tabindex="67"  value="#{cadPjausPaaittvBean.pjaus_in_cron_fis_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cron_fis_bol');"/>
<ps:psGraphicImage id="pjaus_in_cron_fis_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_cron_fis_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_cron_fin" for="pjaus_in_cron_fin"  value="#{iimsg.PjausPaaittv_pjaus_in_cron_fin_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_cron_fin_bol" value="#{cadPjausPaaittvBean.pjaus_in_cron_fin}"/>
<h:selectBooleanCheckbox id="pjaus_in_cron_fin" tabindex="68"  value="#{cadPjausPaaittvBean.pjaus_in_cron_fin_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_cron_fin_bol');"/>
<ps:psGraphicImage id="pjaus_in_cron_fin_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_cron_fin_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_proj" for="pjaus_in_art_proj"  value="#{iimsg.PjausPaaittv_pjaus_in_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_proj_bol" value="#{cadPjausPaaittvBean.pjaus_in_art_proj}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_proj" tabindex="69"  value="#{cadPjausPaaittvBean.pjaus_in_art_proj_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_proj_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_proj_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_art_proj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_exe" for="pjaus_in_art_exe"  value="#{iimsg.PjausPaaittv_pjaus_in_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="450"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_exe_bol" value="#{cadPjausPaaittvBean.pjaus_in_art_exe}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_exe" tabindex="70"  value="#{cadPjausPaaittvBean.pjaus_in_art_exe_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_exe_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_exe_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_art_exe_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_art_fisc" for="pjaus_in_art_fisc"  value="#{iimsg.PjausPaaittv_pjaus_in_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_art_fisc_bol" value="#{cadPjausPaaittvBean.pjaus_in_art_fisc}"/>
<h:selectBooleanCheckbox id="pjaus_in_art_fisc" tabindex="71"  value="#{cadPjausPaaittvBean.pjaus_in_art_fisc_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_art_fisc_bol');"/>
<ps:psGraphicImage id="pjaus_in_art_fisc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_art_fisc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_lincencas" for="pjaus_in_lincencas"  value="#{iimsg.PjausPaaittv_pjaus_in_lincencas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="6" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjaus_in_lincencas_bol" value="#{cadPjausPaaittvBean.pjaus_in_lincencas}"/>
<h:selectBooleanCheckbox id="pjaus_in_lincencas" tabindex="72"  value="#{cadPjausPaaittvBean.pjaus_in_lincencas_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_lincencas_bol');"/>
<ps:psGraphicImage id="pjaus_in_lincencas_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_lincencas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_art_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_proj" for="pjaus_nu_art_proj"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_nu_art_proj" tabindex="73"  value="#{cadPjausPaaittvBean.pjaus_nu_art_proj}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(22);bv('','pjaus_nu_art_proj','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_proj_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_proj_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_nu_art_proj_nap" for="pjaus_nu_art_proj_nap"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_proj_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_nu_art_proj_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_nu_art_proj_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(23);cleSubSel_uv('pjaus_nu_art_proj');bdcd('','pjaus_nu_art_proj_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="74" />
<h:commandButton id="pjaus_nu_art_proj_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_nu_art_proj_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_proj_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_nu_art_proj_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_nu_art_proj_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_proj" for="pjaus_dt_art_proj"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_proj_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_art_proj_str" tabindex="75"  value="#{cadPjausPaaittvBean.pjaus_dt_art_proj_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_proj_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_proj_str', 'cadForm:pjaus_dt_art_proj_nap', 8 , event);" onchange="clFields(24);validaDatas2(this);bv('','pjaus_dt_art_proj_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_proj_str', 'pjaus_dt_art_projCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_proj_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_proj_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_projCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_art_proj_nap" for="pjaus_dt_art_proj_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_proj_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_art_proj_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_art_proj_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(25);cleSubSel_uv('pjaus_dt_art_proj_str');bdcd('','pjaus_dt_art_proj_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="76" />
<h:commandButton id="pjaus_dt_art_proj_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_art_proj_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_proj_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_art_proj_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_art_proj_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_exe" for="pjaus_nu_art_exe"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_nu_art_exe" tabindex="77"  value="#{cadPjausPaaittvBean.pjaus_nu_art_exe}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(26);bv('','pjaus_nu_art_exe','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_exe_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_exe_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_nu_art_exe_nap" for="pjaus_nu_art_exe_nap"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_exe_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_nu_art_exe_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_nu_art_exe_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(27);cleSubSel_uv('pjaus_nu_art_exe');bdcd('','pjaus_nu_art_exe_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="78" />
<h:commandButton id="pjaus_nu_art_exe_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_nu_art_exe_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_exe_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_nu_art_exe_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_nu_art_exe_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_exe" for="pjaus_dt_art_exe"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_exe_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_art_exe_str" tabindex="79"  value="#{cadPjausPaaittvBean.pjaus_dt_art_exe_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_exe_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_exe_str', 'cadForm:pjaus_dt_art_exe_nap', 8 , event);" onchange="clFields(28);validaDatas2(this);bv('','pjaus_dt_art_exe_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_exe_str', 'pjaus_dt_art_exeCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_exe_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_exe_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_exeCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_art_exe_nap" for="pjaus_dt_art_exe_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_exe_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_art_exe_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_art_exe_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(29);cleSubSel_uv('pjaus_dt_art_exe_str');bdcd('','pjaus_dt_art_exe_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="80" />
<h:commandButton id="pjaus_dt_art_exe_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_art_exe_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_exe_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_art_exe_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_art_exe_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_art_fisc" for="pjaus_nu_art_fisc"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_nu_art_fisc" tabindex="81"  value="#{cadPjausPaaittvBean.pjaus_nu_art_fisc}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(30);bv('','pjaus_nu_art_fisc','3',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_art_fisc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_fisc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_nu_art_fisc_nap" for="pjaus_nu_art_fisc_nap"  value="#{iimsg.PjausPaaittv_pjaus_nu_art_fisc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_nu_art_fisc_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_nu_art_fisc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(31);cleSubSel_uv('pjaus_nu_art_fisc');bdcd('','pjaus_nu_art_fisc_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="82" />
<h:commandButton id="pjaus_nu_art_fisc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_nu_art_fisc_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_art_fisc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_nu_art_fisc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_nu_art_fisc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_art_fisc" for="pjaus_dt_art_fisc"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_fisc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_art_fisc_str" tabindex="83"  value="#{cadPjausPaaittvBean.pjaus_dt_art_fisc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_art_fisc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_art_fisc_str', 'cadForm:pjaus_dt_art_fisc_nap', 8 , event);" onchange="clFields(32);validaDatas2(this);bv('','pjaus_dt_art_fisc_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_art_fisc_str', 'pjaus_dt_art_fiscCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_art_fisc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_fisc_vc}" styleClass="btp"/>
<div id="pjaus_dt_art_fiscCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_art_fisc_nap" for="pjaus_dt_art_fisc_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_art_fisc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="1600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_art_fisc_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_art_fisc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(33);cleSubSel_uv('pjaus_dt_art_fisc_str');bdcd('','pjaus_dt_art_fisc_nap','3','TPNNP',this.value);;" size="14" maxlength="12" tabindex="84" />
<h:commandButton id="pjaus_dt_art_fisc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_art_fisc_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_art_fisc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_art_fisc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_art_fisc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_ipagt_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_ipa" for="pjaus_dt_envio_ipa"  value="#{iimsg.PjausPaaittv_pjaus_dt_envio_ipa_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="pjaus_dt_envio_ipa_str" tabindex="85"  value="#{cadPjausPaaittvBean.pjaus_dt_envio_ipa_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_ipa_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_ipa_str', 'cadForm:pjaus_dt_vencimento_ipa', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_ipa_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_ipa_str', 'pjaus_dt_envio_ipaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_ipa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_envio_ipa_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_ipaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_vencimento_ipa" for="pjaus_dt_vencimento_ipa"  value="#{iimsg.PjausPaaittv_pjaus_dt_vencimento_ipa_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_vencimento_ipa_str" tabindex="86"  value="#{cadPjausPaaittvBean.pjaus_dt_vencimento_ipa_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_vencimento_ipa_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_vencimento_ipa_str', 'cadForm:pjaus_dt_pgto_ipa', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_vencimento_ipa_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_vencimento_ipa_str', 'pjaus_dt_vencimento_ipaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_vencimento_ipa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_vencimento_ipa_vc}" styleClass="btp"/>
<div id="pjaus_dt_vencimento_ipaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_pgto_ipa" for="pjaus_dt_pgto_ipa"  value="#{iimsg.PjausPaaittv_pjaus_dt_pgto_ipa_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_pgto_ipa_str" tabindex="87"  value="#{cadPjausPaaittvBean.pjaus_dt_pgto_ipa_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_pgto_ipa_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_pgto_ipa_str', 'cadForm:iappv_id_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_pgto_ipa_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_pgto_ipa_str', 'pjaus_dt_pgto_ipaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_pgto_ipa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_pgto_ipa_vc}" styleClass="btp"/>
<div id="pjaus_dt_pgto_ipaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_iappv_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_aprov_tec_mrs" for="pjaus_ds_aprov_tec_mrs"  value="#{iimsg.PjausPaaittv_pjaus_ds_aprov_tec_mrs_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_ds_aprov_tec_mrs" tabindex="88"  value="#{cadPjausPaaittvBean.pjaus_ds_aprov_tec_mrs}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_aprov_tec_mrs','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_aprov_tec_mrs_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_aprov_tec_mrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov_int" for="pjaus_dt_aprov_int"  value="#{iimsg.PjausPaaittv_pjaus_dt_aprov_int_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_aprov_int_str" tabindex="89"  value="#{cadPjausPaaittvBean.pjaus_dt_aprov_int_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_int_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_int_str', 'cadForm:pjaus_ds_inst_contratual', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_int_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_int_str', 'pjaus_dt_aprov_intCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_int_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_aprov_int_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprov_intCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_inst_contratual" for="pjaus_ds_inst_contratual"  value="#{iimsg.PjausPaaittv_pjaus_ds_inst_contratual_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="pjaus_ds_inst_contratual" tabindex="90"  value="#{cadPjausPaaittvBean.pjaus_ds_inst_contratual}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_inst_contratual','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_inst_contratual_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_inst_contratual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_aprov" for="pjaus_dt_aprov"  value="#{iimsg.PjausPaaittv_pjaus_dt_aprov_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="1600"   >
<h:inputText id="pjaus_dt_aprov_str" tabindex="91"  value="#{cadPjausPaaittvBean.pjaus_dt_aprov_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_aprov_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_aprov_str', 'cadForm:cont_frame__4x21', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_aprov_str','3',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_aprov_str', 'pjaus_dt_aprovCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_aprov_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_aprov_vc}" styleClass="btp"/>
<div id="pjaus_dt_aprovCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
