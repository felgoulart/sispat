<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjdet" rendered="#{cadPjausPaaittvBean.canUpdate}" value="#{cadPjausPaaittvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessagepjdet" rendered="#{cadPjausPaaittvBean.canUpdate}" action="#{cadPjausPaaittvBean.doValidate}" onmousedown="msgw('aMessagepjdet');">
<ps:psGraphicImage id="iMessagepjdet" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaittv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPaaittvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_id_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPaaittvBean.pjaus_id}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.PjausPaaittv_objct_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_objt" for="pjaus_tp_objt"  value="#{iimsg.PjausPaaittv_pjaus_tp_objt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_objt" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_objt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_objt','2','TPETM',this.value);;" size="7" maxlength="5" tabindex="26" />
<h:commandButton id="pjaus_tp_objt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPETM', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_objt_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_objt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_objt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_objt_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_objeto" tabindex="27"  value="#{cadPjausPaaittvBean.pjaus_ds_objeto}" cols="100" rows="8" styleClass="pjaus_ds_objeto_rtfFontChoice" onchange="bv('','pjaus_ds_objeto','2',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.PjausPaaittv_carac_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_infc_viaferrea" for="pjaus_tp_infc_viaferrea"  value="#{iimsg.PjausPaaittv_pjaus_tp_infc_viaferrea_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_infc_viaferrea" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);bdcd('','pjaus_tp_infc_viaferrea','2','TPMDL',this.value);;" size="7" maxlength="5" tabindex="28" />
<h:commandButton id="pjaus_tp_infc_viaferrea_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMDL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_infc_viaferrea_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_infc_viaferrea_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ps_km" for="pjaus_ps_km"  value="#{iimsg.PjausPaaittv_pjaus_ps_km_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_ps_km" tabindex="29"  value="#{cadPjausPaaittvBean.pjaus_ps_km_str}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','pjaus_ps_km','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_ps_km_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ps_km_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_ocup_area_terc" for="pjaus_in_ocup_area_terc"  value="#{iimsg.PjausPaaittv_pjaus_in_ocup_area_terc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_ocup_area_terc" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_ocup_area_terc','2','GENYN',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="pjaus_in_ocup_area_terc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_ocup_area_terc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_ocup_area_terc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_est_interf_sub" for="pjaus_ds_est_interf_sub"  value="#{iimsg.PjausPaaittv_pjaus_ds_est_interf_sub_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="pjaus_ds_est_interf_sub" tabindex="31"  value="#{cadPjausPaaittvBean.pjaus_ds_est_interf_sub}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_est_interf_sub','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_est_interf_sub_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_est_interf_sub_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.PjausPaaittv_envir_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_doc_linc_amb" for="pjaus_tp_doc_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_tp_doc_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_doc_linc_amb" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(5);cleSubSel_uv('pjaus_tp_doc_linc_amb_nap');bdcd('','pjaus_tp_doc_linc_amb','2','DCLCA',this.value);;" size="7" maxlength="5" tabindex="32" />
<h:commandButton id="pjaus_tp_doc_linc_amb_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'DCLCA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_doc_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_doc_linc_amb_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_pjaus_tp_doc_linc_amb_nap" for="pjaus_tp_doc_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_tp_doc_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_doc_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);cleSubSel_uv('pjaus_tp_doc_linc_amb');bdcd('','pjaus_tp_doc_linc_amb_nap','2','TPNAP',this.value);;" size="14" maxlength="12" tabindex="33" />
<h:commandButton id="pjaus_tp_doc_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_doc_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_doc_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_org_linc_amb" for="pjaus_id_org_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_id_org_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_id_org_linc_amb" tabindex="34"  value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="clFields(7);bv('','pjaus_id_org_linc_amb','2',this.value);"/>
<ps:psGraphicImage id="pjaus_id_org_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_pjaus_id_org_linc_amb_nap" for="pjaus_id_org_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_id_org_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_id_org_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);cleSubSel_uv('pjaus_id_org_linc_amb');bdcd('','pjaus_id_org_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="35" />
<h:commandButton id="pjaus_id_org_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_id_org_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_id_org_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_doc_linc_amb" for="pjaus_nu_doc_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_nu_doc_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_doc_linc_amb" tabindex="36"  value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="clFields(9);bv('','pjaus_nu_doc_linc_amb','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_doc_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_pjaus_nu_doc_linc_amb_nap" for="pjaus_nu_doc_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_nu_doc_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_nu_doc_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);cleSubSel_uv('pjaus_nu_doc_linc_amb');bdcd('','pjaus_nu_doc_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="37" />
<h:commandButton id="pjaus_nu_doc_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_nu_doc_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_nu_doc_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_exp_linc_amb" for="pjaus_dt_exp_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_dt_exp_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_exp_linc_amb" tabindex="38"  value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:pjaus_dt_exp_linc_amb', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_exp_linc_amb', 'cadForm:pjaus_dt_exp_linc_amb_nap', 8 , event);" onchange="clFields(11);validaDatas2(this);bv('','pjaus_dt_exp_linc_amb','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_exp_linc_amb', 'pjaus_dt_exp_linc_ambCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_exp_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_vc}" styleClass="btp"/>
<div id="pjaus_dt_exp_linc_ambCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_pjaus_dt_exp_linc_amb_nap" for="pjaus_dt_exp_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_exp_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_exp_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('pjaus_dt_exp_linc_amb');bdcd('','pjaus_dt_exp_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="39" />
<h:commandButton id="pjaus_dt_exp_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_exp_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_exp_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_val_linc_amb" for="pjaus_pz_val_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_pz_val_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="pjaus_pz_val_linc_amb" tabindex="40"  value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="clFields(13);bv('','pjaus_pz_val_linc_amb','2',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_pz_val_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_pjaus_pz_val_linc_amb_nap" for="pjaus_pz_val_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_pz_val_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_pz_val_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);cleSubSel_uv('pjaus_pz_val_linc_amb');bdcd('','pjaus_pz_val_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="41" />
<h:commandButton id="pjaus_pz_val_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_pz_val_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_pz_val_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
