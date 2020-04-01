<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrq" rendered="#{cadPjausPaaopBean.canUpdate}" value="#{cadPjausPaaopBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrq" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaopBean.canUpdate}" action="#{cadPjausPaaopBean.doValidate}" onmousedown="msgw('aMessagepjtrq');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaop_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPaaopBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPaaopBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_request_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_carta_frrv_antt" for="pjaus_id_carta_frrv_antt"  value="#{iimsg.PjausPaaop_pjaus_id_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_id_carta_frrv_antt" tabindex="26"  value="#{cadPjausPaaopBean.pjaus_id_carta_frrv_antt}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_id_carta_frrv_antt','2',this.value);"/>
<ps:psGraphicImage id="pjaus_id_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_id_carta_frrv_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_carta_frrv_antt" for="pjaus_dt_carta_frrv_antt"  value="#{iimsg.PjausPaaop_pjaus_dt_carta_frrv_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_carta_frrv_antt_str" tabindex="27"  value="#{cadPjausPaaopBean.pjaus_dt_carta_frrv_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_carta_frrv_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_carta_frrv_antt_str', 'cadForm:procs_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_carta_frrv_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_carta_frrv_antt_str', 'pjaus_dt_carta_frrv_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_carta_frrv_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_carta_frrv_antt_vc}" styleClass="btp"/>
<div id="pjaus_dt_carta_frrv_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_procs_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_prss_antt" for="pjaus_nu_prss_antt"  value="#{iimsg.PjausPaaop_pjaus_nu_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_nu_prss_antt" tabindex="28"  value="#{cadPjausPaaopBean.pjaus_nu_prss_antt}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_prss_antt','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_prss_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_nu_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prss_antt_ptc" for="pjaus_dt_prss_antt_ptc"  value="#{iimsg.PjausPaaop_pjaus_dt_prss_antt_ptc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_prss_antt_ptc_str" tabindex="29"  value="#{cadPjausPaaopBean.pjaus_dt_prss_antt_ptc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prss_antt_ptc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prss_antt_ptc_str', 'cadForm:pjaus_pz_prss_antt', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prss_antt_ptc_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prss_antt_ptc_str', 'pjaus_dt_prss_antt_ptcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prss_antt_ptc_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prss_antt_ptc_vc}" styleClass="btp"/>
<div id="pjaus_dt_prss_antt_ptcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_prss_antt" for="pjaus_pz_prss_antt"  value="#{iimsg.PjausPaaop_pjaus_pz_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="900" > <h:inputText id="pjaus_pz_prss_antt" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_pz_prss_antt_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_pz_prss_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_pz_prss_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_df_prss_antt" for="pjaus_df_prss_antt"  value="#{iimsg.PjausPaaop_pjaus_df_prss_antt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_df_prss_antt_str" tabindex="31"  value="#{cadPjausPaaopBean.pjaus_df_prss_antt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_df_prss_antt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_df_prss_antt_str', 'cadForm:pjaus_dd_atraso', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_df_prss_antt_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_df_prss_antt_str', 'pjaus_df_prss_anttCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_df_prss_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_df_prss_antt_vc}" styleClass="btp"/>
<div id="pjaus_df_prss_anttCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dd_atraso" for="pjaus_dd_atraso"  value="#{iimsg.PjausPaaop_pjaus_dd_atraso_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="null" > <h:inputText id="pjaus_dd_atraso" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_dd_atraso}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pjaus_dd_atraso_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dd_atraso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_cancelamento" for="pjaus_ds_cancelamento"  value="#{iimsg.PjausPaaop_pjaus_ds_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_cancelamento" tabindex="33"  value="#{cadPjausPaaopBean.pjaus_ds_cancelamento}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_cancelamento','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_cancelamento_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_cancelamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_cancelamento" for="pjaus_dt_cancelamento"  value="#{iimsg.PjausPaaop_pjaus_dt_cancelamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_cancelamento_str" tabindex="34"  value="#{cadPjausPaaopBean.pjaus_dt_cancelamento_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_cancelamento_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_cancelamento_str', 'cadForm:approval_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_cancelamento_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_cancelamento_str', 'pjaus_dt_cancelamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_cancelamento_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_cancelamento_vc}" styleClass="btp"/>
<div id="pjaus_dt_cancelamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_approval_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_ato_autorizativo" for="pjaus_ds_ato_autorizativo"  value="#{iimsg.PjausPaaop_pjaus_ds_ato_autorizativo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_ds_ato_autorizativo" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_ds_ato_autorizativo}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_ds_ato_autorizativo','2','STAUT',this.value);;" size="7" maxlength="5" tabindex="35" />
<h:commandButton id="pjaus_ds_ato_autorizativo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STAUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_ds_ato_autorizativo_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_ato_autorizativo_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_ds_ato_autorizativo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_ds_ato_autorizativo_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_diario_oficial" for="pjaus_ds_diario_oficial"  value="#{iimsg.PjausPaaop_pjaus_ds_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="pjaus_ds_diario_oficial" tabindex="36"  value="#{cadPjausPaaopBean.pjaus_ds_diario_oficial}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_diario_oficial','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_diario_oficial_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_diario_oficial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_diario_oficial" for="pjaus_dt_diario_oficial"  value="#{iimsg.PjausPaaop_pjaus_dt_diario_oficial_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_diario_oficial_str" tabindex="37"  value="#{cadPjausPaaopBean.pjaus_dt_diario_oficial_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_diario_oficial_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_diario_oficial_str', 'cadForm:pjaus_vl_solicitado', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_diario_oficial_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_diario_oficial_str', 'pjaus_dt_diario_oficialCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_diario_oficial_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_diario_oficial_vc}" styleClass="btp"/>
<div id="pjaus_dt_diario_oficialCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_solicitado" for="pjaus_vl_solicitado"  value="#{iimsg.PjausPaaop_pjaus_vl_solicitado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="900" class="pr5"> <h:inputText id="pjaus_vl_solicitado" tabindex="38"  value="#{cadPjausPaaopBean.pjaus_vl_solicitado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_solicitado','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_solicitado_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_vl_solicitado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_autorizado" for="pjaus_vl_autorizado"  value="#{iimsg.PjausPaaop_pjaus_vl_autorizado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pjaus_vl_autorizado" tabindex="39"  value="#{cadPjausPaaopBean.pjaus_vl_autorizado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(1);bv('','pjaus_vl_autorizado','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_autorizado_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_vl_autorizado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_exectt_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ini_obra" for="pjaus_dt_ini_obra"  value="#{iimsg.PjausPaaop_pjaus_dt_ini_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_ini_obra_str" tabindex="40"  value="#{cadPjausPaaopBean.pjaus_dt_ini_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ini_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ini_obra_str', 'cadForm:pjaus_dt_fim_obra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_ini_obra_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ini_obra_str', 'pjaus_dt_ini_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ini_obra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_ini_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_ini_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_fim_obra" for="pjaus_dt_fim_obra"  value="#{iimsg.PjausPaaop_pjaus_dt_fim_obra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_fim_obra_str" tabindex="41"  value="#{cadPjausPaaopBean.pjaus_dt_fim_obra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_fim_obra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_fim_obra_str', 'cadForm:statussum_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_fim_obra_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_fim_obra_str', 'pjaus_dt_fim_obraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_fim_obra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_fim_obra_vc}" styleClass="btp"/>
<div id="pjaus_dt_fim_obraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_statussum_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_ds_sumacao" value="#{cadPjausPaaopBean.pjaus_ds_sumacao}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_sumacaox" for="pjaus_ds_sumacaox"  value="#{iimsg.PjausPaaop_pjaus_ds_sumacaox_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_ds_sumacaox" tabindex="42"  value="#{cadPjausPaaopBean.pjaus_ds_sumacaox}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_sumacaox','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_sumacaox_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_sumacaox_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
