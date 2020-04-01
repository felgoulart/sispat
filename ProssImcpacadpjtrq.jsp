<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrq" rendered="#{cadProssImcpaBean.canUpdate}" value="#{cadProssImcpaBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrq" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadProssImcpaBean.canUpdate}" action="#{cadProssImcpaBean.doValidate}" onmousedown="msgw('aMessagepjtrq');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pross_id2" >
<h:outputText styleClass="tip" value="#{iimsg.ProssImcpa_pross_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pross_id2" value="#{cadProssImcpaBean.pross_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.ProssImcpa_pross_nm_title_tt}"/>
<h:outputText id="pross_id_dsc2" value="#{cadProssImcpaBean.pross_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssImcpa_request_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_id_carta_frrv_antt" for="pross_id_carta_frrv_antt"  value="#{iimsg.ProssImcpa_pross_id_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pross_id_carta_frrv_antt" tabindex="26"  value="#{cadProssImcpaBean.pross_id_carta_frrv_antt}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pross_id_carta_frrv_antt','2',this.value);"/>
<ps:psGraphicImage id="pross_id_carta_frrv_antt_vc" flagType="val" flag="#{cadProssImcpaBean.pross_id_carta_frrv_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_carta_frrv_antt" for="pross_dt_carta_frrv_antt"  value="#{iimsg.ProssImcpa_pross_dt_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pross_dt_carta_frrv_antt_str" tabindex="27"  value="#{cadProssImcpaBean.pross_dt_carta_frrv_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_dt_carta_frrv_antt_str', event);" onkeyup="SaltaCampo('cadForm:pross_dt_carta_frrv_antt_str', 'cadForm:procs_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pross_dt_carta_frrv_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_dt_carta_frrv_antt_str', 'pross_dt_carta_frrv_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_dt_carta_frrv_antt_vc" flagType="val" flag="#{cadProssImcpaBean.pross_dt_carta_frrv_antt_vc}" styleClass="btp"/>
<div id="pross_dt_carta_frrv_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssImcpa_procs_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_nu_prss_antt" for="pross_nu_prss_antt"  value="#{iimsg.ProssImcpa_pross_nu_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pross_nu_prss_antt" tabindex="28"  value="#{cadProssImcpaBean.pross_nu_prss_antt}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pross_nu_prss_antt','2',this.value);"/>
<ps:psGraphicImage id="pross_nu_prss_antt_vc" flagType="val" flag="#{cadProssImcpaBean.pross_nu_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_prss_antt_ptc" for="pross_dt_prss_antt_ptc"  value="#{iimsg.ProssImcpa_pross_dt_prss_antt_ptc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pross_dt_prss_antt_ptc_str" tabindex="29"  value="#{cadProssImcpaBean.pross_dt_prss_antt_ptc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_dt_prss_antt_ptc_str', event);" onkeyup="SaltaCampo('cadForm:pross_dt_prss_antt_ptc_str', 'cadForm:pross_pz_prss_antt', 8 , event);" onchange="validaDatas2(this);bv('','pross_dt_prss_antt_ptc_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_dt_prss_antt_ptc_str', 'pross_dt_prss_antt_ptcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_dt_prss_antt_ptc_vc" flagType="val" flag="#{cadProssImcpaBean.pross_dt_prss_antt_ptc_vc}" styleClass="btp"/>
<div id="pross_dt_prss_antt_ptcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_pz_prss_antt" for="pross_pz_prss_antt"  value="#{iimsg.ProssImcpa_pross_pz_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="900" > <h:inputText id="pross_pz_prss_antt" tabindex="-1"  onfocus="this.blur()" value="#{cadProssImcpaBean.pross_pz_prss_antt_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pross_pz_prss_antt_vc" flagType="val" flag="#{cadProssImcpaBean.pross_pz_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_df_prss_antt" for="pross_df_prss_antt"  value="#{iimsg.ProssImcpa_pross_df_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pross_df_prss_antt_str" tabindex="31"  value="#{cadProssImcpaBean.pross_df_prss_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_df_prss_antt_str', event);" onkeyup="SaltaCampo('cadForm:pross_df_prss_antt_str', 'cadForm:pross_dd_atraso', 8 , event);" onchange="validaDatas2(this);bv('','pross_df_prss_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_df_prss_antt_str', 'pross_df_prss_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_df_prss_antt_vc" flagType="val" flag="#{cadProssImcpaBean.pross_df_prss_antt_vc}" styleClass="btp"/>
<div id="pross_df_prss_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dd_atraso" for="pross_dd_atraso"  value="#{iimsg.ProssImcpa_pross_dd_atraso_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="null" > <h:inputText id="pross_dd_atraso" tabindex="-1"  onfocus="this.blur()" value="#{cadProssImcpaBean.pross_dd_atraso}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pross_dd_atraso_vc" flagType="val" flag="#{cadProssImcpaBean.pross_dd_atraso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_cancelamento" for="pross_ds_cancelamento"  value="#{iimsg.ProssImcpa_pross_ds_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pross_ds_cancelamento" tabindex="33"  value="#{cadProssImcpaBean.pross_ds_cancelamento}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pross_ds_cancelamento','2',this.value);"/>
<ps:psGraphicImage id="pross_ds_cancelamento_vc" flagType="val" flag="#{cadProssImcpaBean.pross_ds_cancelamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_cancelamento" for="pross_dt_cancelamento"  value="#{iimsg.ProssImcpa_pross_dt_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pross_dt_cancelamento_str" tabindex="34"  value="#{cadProssImcpaBean.pross_dt_cancelamento_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_dt_cancelamento_str', event);" onkeyup="SaltaCampo('cadForm:pross_dt_cancelamento_str', 'cadForm:approval_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pross_dt_cancelamento_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_dt_cancelamento_str', 'pross_dt_cancelamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_dt_cancelamento_vc" flagType="val" flag="#{cadProssImcpaBean.pross_dt_cancelamento_vc}" styleClass="btp"/>
<div id="pross_dt_cancelamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssImcpa_approval_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_ato_autorizativo" for="pross_ds_ato_autorizativo"  value="#{iimsg.ProssImcpa_pross_ds_ato_autorizativo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pross_ds_ato_autorizativo" value="#{cadProssImcpaBean.pross_ds_ato_autorizativo}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pross_ds_ato_autorizativo','2','STAUT',this.value);;" size="7" maxlength="5" tabindex="35" />
<h:commandButton id="pross_ds_ato_autorizativo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STAUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_ds_ato_autorizativo_vc" flagType="val" flag="#{cadProssImcpaBean.pross_ds_ato_autorizativo_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_ds_ato_autorizativo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssImcpaBean.pross_ds_ato_autorizativo_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_diario_oficial" for="pross_ds_diario_oficial"  value="#{iimsg.ProssImcpa_pross_ds_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pross_ds_diario_oficial" tabindex="36"  value="#{cadProssImcpaBean.pross_ds_diario_oficial}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pross_ds_diario_oficial','2',this.value);"/>
<ps:psGraphicImage id="pross_ds_diario_oficial_vc" flagType="val" flag="#{cadProssImcpaBean.pross_ds_diario_oficial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_diario_oficial" for="pross_dt_diario_oficial"  value="#{iimsg.ProssImcpa_pross_dt_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pross_dt_diario_oficial_str" tabindex="37"  value="#{cadProssImcpaBean.pross_dt_diario_oficial_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_dt_diario_oficial_str', event);" onkeyup="SaltaCampo('cadForm:pross_dt_diario_oficial_str', 'cadForm:pross_vl_solicitado', 8 , event);" onchange="validaDatas2(this);bv('','pross_dt_diario_oficial_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_dt_diario_oficial_str', 'pross_dt_diario_oficialCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_dt_diario_oficial_vc" flagType="val" flag="#{cadProssImcpaBean.pross_dt_diario_oficial_vc}" styleClass="btp"/>
<div id="pross_dt_diario_oficialCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_vl_solicitado" for="pross_vl_solicitado"  value="#{iimsg.ProssImcpa_pross_vl_solicitado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="900" class="pr5"> <h:inputText id="pross_vl_solicitado" tabindex="38"  value="#{cadProssImcpaBean.pross_vl_solicitado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pross_vl_solicitado','2',valDec(this.value));"/>
<ps:psGraphicImage id="pross_vl_solicitado_vc" flagType="val" flag="#{cadProssImcpaBean.pross_vl_solicitado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_vl_autorizado" for="pross_vl_autorizado"  value="#{iimsg.ProssImcpa_pross_vl_autorizado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pross_vl_autorizado" tabindex="39"  value="#{cadProssImcpaBean.pross_vl_autorizado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(1);bv('','pross_vl_autorizado','2',valDec(this.value));"/>
<ps:psGraphicImage id="pross_vl_autorizado_vc" flagType="val" flag="#{cadProssImcpaBean.pross_vl_autorizado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
