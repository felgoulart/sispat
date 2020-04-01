<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtct" rendered="#{cadPjausPaaittvBean.canUpdate}" value="#{cadPjausPaaittvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtct" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaittvBean.canUpdate}" action="#{cadPjausPaaittvBean.doValidate}" onmousedown="msgw('aMessagepjtct');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id4" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaittv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id4" value="#{cadPjausPaaittvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc4" value="#{cadPjausPaaittvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_cont_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_investimento" for="pjaus_tp_investimento"  value="#{iimsg.PjausPaaittv_pjaus_tp_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_investimento" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_investimento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(34);cleSubSel_uv('pjaus_vl_investimento');cleSubSel_uv('pjaus_pc_investimento');cleSubSel_uv('pjaus_qt_part_lucros');bdcd('','pjaus_tp_investimento','4','TPIVT',this.value);PjausPaaittv_pjtct_hl();" size="7" maxlength="5" tabindex="92" />
<h:commandButton id="pjaus_tp_investimento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIVT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_investimento_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_investimento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_investimento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_investimento_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_contract" for="pjaus_nu_contract"  value="#{iimsg.PjausPaaittv_pjaus_nu_contract_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_nu_contract" tabindex="96"  value="#{cadPjausPaaittvBean.pjaus_nu_contract}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_nu_contract','4',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_contract_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_contract_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_investimento" for="pjaus_vl_investimento"  value="#{iimsg.PjausPaaittv_pjaus_vl_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pjaus_vl_investimento" tabindex="97"  value="#{cadPjausPaaittvBean.pjaus_vl_investimento_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="clFields(35);bv('','pjaus_vl_investimento','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_investimento_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_vl_investimento_nap" for="pjaus_vl_investimento_nap"  value="#{iimsg.PjausPaaittv_pjaus_vl_investimento_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_vl_investimento_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_vl_investimento_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(36);cleSubSel_uv('pjaus_vl_investimento');bdcd('','pjaus_vl_investimento_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="98" />
<h:commandButton id="pjaus_vl_investimento_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_vl_investimento_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_investimento_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_vl_investimento_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_vl_investimento_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pc_investimento" for="pjaus_pc_investimento"  value="#{iimsg.PjausPaaittv_pjaus_pc_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="pjaus_pc_investimento" tabindex="99"  value="#{cadPjausPaaittvBean.pjaus_pc_investimento}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="clFields(37);bv('','pjaus_pc_investimento','4',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_pc_investimento_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pc_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_pc_investimento_nap" for="pjaus_pc_investimento_nap"  value="#{iimsg.PjausPaaittv_pjaus_pc_investimento_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_pc_investimento_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_pc_investimento_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(38);cleSubSel_uv('pjaus_pc_investimento');bdcd('','pjaus_pc_investimento_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="100" />
<h:commandButton id="pjaus_pc_investimento_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_pc_investimento_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pc_investimento_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_pc_investimento_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_pc_investimento_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_qt_part_lucros" for="pjaus_qt_part_lucros"  value="#{iimsg.PjausPaaittv_pjaus_qt_part_lucros_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="pjaus_qt_part_lucros" tabindex="101"  value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="clFields(39);bv('','pjaus_qt_part_lucros','4',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_qt_part_lucros_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_qt_part_lucros_nap" for="pjaus_qt_part_lucros_nap"  value="#{iimsg.PjausPaaittv_pjaus_qt_part_lucros_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_qt_part_lucros_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(40);cleSubSel_uv('pjaus_qt_part_lucros');bdcd('','pjaus_qt_part_lucros_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="102" />
<h:commandButton id="pjaus_qt_part_lucros_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_qt_part_lucros_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_qt_part_lucros_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_assin_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_assinatura_ctr" for="pjaus_dt_assinatura_ctr"  value="#{iimsg.PjausPaaittv_pjaus_dt_assinatura_ctr_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_assinatura_ctr_str" tabindex="103"  value="#{cadPjausPaaittvBean.pjaus_dt_assinatura_ctr_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_assinatura_ctr_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_assinatura_ctr_str', 'cadForm:pjaus_dt_assinatura_ctr_nap', 8 , event);" onchange="clFields(41);validaDatas2(this);bv('','pjaus_dt_assinatura_ctr_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_assinatura_ctr_str', 'pjaus_dt_assinatura_ctrCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_assinatura_ctr_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_assinatura_ctr_vc}" styleClass="btp"/>
<div id="pjaus_dt_assinatura_ctrCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_assinatura_ctr_nap" for="pjaus_dt_assinatura_ctr_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_assinatura_ctr_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_assinatura_ctr_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_assinatura_ctr_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(42);cleSubSel_uv('pjaus_dt_assinatura_ctr_str');bdcd('','pjaus_dt_assinatura_ctr_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="104" />
<h:commandButton id="pjaus_dt_assinatura_ctr_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_assinatura_ctr_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_assinatura_ctr_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_assinatura_ctr_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_assinatura_ctr_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ini_vigencia" for="pjaus_dt_ini_vigencia"  value="#{iimsg.PjausPaaittv_pjaus_dt_ini_vigencia_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_ini_vigencia_str" tabindex="105"  value="#{cadPjausPaaittvBean.pjaus_dt_ini_vigencia_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ini_vigencia_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ini_vigencia_str', 'cadForm:pjaus_dt_ini_vigencia_nap', 8 , event);" onchange="clFields(43);validaDatas2(this);bv('','pjaus_dt_ini_vigencia_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ini_vigencia_str', 'pjaus_dt_ini_vigenciaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ini_vigencia_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_ini_vigencia_vc}" styleClass="btp"/>
<div id="pjaus_dt_ini_vigenciaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_ini_vigencia_nap" for="pjaus_dt_ini_vigencia_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_ini_vigencia_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_ini_vigencia_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_ini_vigencia_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(44);cleSubSel_uv('pjaus_dt_ini_vigencia_str');bdcd('','pjaus_dt_ini_vigencia_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="106" />
<h:commandButton id="pjaus_dt_ini_vigencia_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_ini_vigencia_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_ini_vigencia_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_ini_vigencia_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_ini_vigencia_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_trm_contrato" for="pjaus_dt_trm_contrato"  value="#{iimsg.PjausPaaittv_pjaus_dt_trm_contrato_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_trm_contrato_str" tabindex="107"  value="#{cadPjausPaaittvBean.pjaus_dt_trm_contrato_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_trm_contrato_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_trm_contrato_str', 'cadForm:pjaus_dt_trm_contrato_nap', 8 , event);" onchange="clFields(45);validaDatas2(this);bv('','pjaus_dt_trm_contrato_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_trm_contrato_str', 'pjaus_dt_trm_contratoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_trm_contrato_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_trm_contrato_vc}" styleClass="btp"/>
<div id="pjaus_dt_trm_contratoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_trm_contrato_nap" for="pjaus_dt_trm_contrato_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_trm_contrato_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_trm_contrato_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_trm_contrato_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(46);cleSubSel_uv('pjaus_dt_trm_contrato_str');bdcd('','pjaus_dt_trm_contrato_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="108" />
<h:commandButton id="pjaus_dt_trm_contrato_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_trm_contrato_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_trm_contrato_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_trm_contrato_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_trm_contrato_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_coll_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_du_contrato" for="pjaus_du_contrato"  value="#{iimsg.PjausPaaittv_pjaus_du_contrato_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="pjaus_du_contrato" tabindex="109"  value="#{cadPjausPaaittvBean.pjaus_du_contrato}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','pjaus_du_contrato','4',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_du_contrato_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_du_contrato_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pd_arrecadacao" for="pjaus_pd_arrecadacao"  value="#{iimsg.PjausPaaittv_pjaus_pd_arrecadacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_pd_arrecadacao" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_pd_arrecadacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_pd_arrecadacao','4','PDARR',this.value);;" size="7" maxlength="5" tabindex="110" />
<h:commandButton id="pjaus_pd_arrecadacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PDARR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_pd_arrecadacao_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pd_arrecadacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_pd_arrecadacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_pd_arrecadacao_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_arrecadacao" for="pjaus_tp_arrecadacao"  value="#{iimsg.PjausPaaittv_pjaus_tp_arrecadacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_arrecadacao" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_arrecadacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(47);cleSubSel_uv('pjaus_vl_contrato');cleSubSel_uv('pjaus_vl_aval_tecnica');cleSubSel_uv('pjaus_vl_fiscalizacao');cleSubSel_uv('pjaus_vl_uso_faixa_dominio');cleSubSel_uv('pjaus_vl_parc_arrc');cleSubSel_uv('pjaus_qt_parc_arrc');cleSubSel_uv('pjaus_vl_prim_parc');bdcd('','pjaus_tp_arrecadacao','4','TPARR',this.value);PjausPaaittv_pjtct_hl();" size="7" maxlength="5" tabindex="111" />
<h:commandButton id="pjaus_tp_arrecadacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPARR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_arrecadacao_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_arrecadacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_arrecadacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_arrecadacao_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_just_arr_nao_onerosa" for="pjaus_ds_just_arr_nao_onerosa"  value="#{iimsg.PjausPaaittv_pjaus_ds_just_arr_nao_onerosa_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_ds_just_arr_nao_onerosa" tabindex="116"  value="#{cadPjausPaaittvBean.pjaus_ds_just_arr_nao_onerosa}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_just_arr_nao_onerosa','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_just_arr_nao_onerosa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_just_arr_nao_onerosa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_aa_sol_cliente" for="pjaus_aa_sol_cliente"  value="#{iimsg.PjausPaaittv_pjaus_aa_sol_cliente_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="pjaus_aa_sol_cliente" tabindex="117"  value="#{cadPjausPaaittvBean.pjaus_aa_sol_cliente}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_aa_sol_cliente','4',this.value);"/>
<ps:psGraphicImage id="pjaus_aa_sol_cliente_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_aa_sol_cliente_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_lei_isencao" for="pjaus_ds_lei_isencao"  value="#{iimsg.PjausPaaittv_pjaus_ds_lei_isencao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjaus_ds_lei_isencao" tabindex="118"  value="#{cadPjausPaaittvBean.pjaus_ds_lei_isencao}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_lei_isencao','4',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_lei_isencao_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_lei_isencao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_contrato" for="pjaus_vl_contrato"  value="#{iimsg.PjausPaaittv_pjaus_vl_contrato_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pjaus_vl_contrato" tabindex="119"  value="#{cadPjausPaaittvBean.pjaus_vl_contrato_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_contrato','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_contrato_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_contrato_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_aval_tecnica" for="pjaus_vl_aval_tecnica"  value="#{iimsg.PjausPaaittv_pjaus_vl_aval_tecnica_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="pjaus_vl_aval_tecnica" tabindex="120"  value="#{cadPjausPaaittvBean.pjaus_vl_aval_tecnica_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_aval_tecnica','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_aval_tecnica_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_aval_tecnica_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_fiscalizacao" for="pjaus_vl_fiscalizacao"  value="#{iimsg.PjausPaaittv_pjaus_vl_fiscalizacao_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pjaus_vl_fiscalizacao" tabindex="121"  value="#{cadPjausPaaittvBean.pjaus_vl_fiscalizacao_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_fiscalizacao','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_fiscalizacao_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_fiscalizacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_uso_faixa_dominio" for="pjaus_vl_uso_faixa_dominio"  value="#{iimsg.PjausPaaittv_pjaus_vl_uso_faixa_dominio_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="pjaus_vl_uso_faixa_dominio" tabindex="122"  value="#{cadPjausPaaittvBean.pjaus_vl_uso_faixa_dominio_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_uso_faixa_dominio','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_uso_faixa_dominio_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_uso_faixa_dominio_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_parc_arrc" for="pjaus_vl_parc_arrc"  value="#{iimsg.PjausPaaittv_pjaus_vl_parc_arrc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="pjaus_vl_parc_arrc" tabindex="123"  value="#{cadPjausPaaittvBean.pjaus_vl_parc_arrc_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_parc_arrc','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_parc_arrc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_parc_arrc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_qt_parc_arrc" for="pjaus_qt_parc_arrc"  value="#{iimsg.PjausPaaittv_pjaus_qt_parc_arrc_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="pjaus_qt_parc_arrc" tabindex="124"  value="#{cadPjausPaaittvBean.pjaus_qt_parc_arrc}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','pjaus_qt_parc_arrc','4',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_qt_parc_arrc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_qt_parc_arrc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_parc_fixa" for="pjaus_in_parc_fixa"  value="#{iimsg.PjausPaaittv_pjaus_in_parc_fixa_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_parc_fixa" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_in_parc_fixa}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_parc_fixa','4','SNNAP',this.value);;" size="5" maxlength="3" tabindex="125" />
<h:commandButton id="pjaus_in_parc_fixa_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_parc_fixa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_parc_fixa_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_parc_fixa_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_in_parc_fixa_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_prim_parc" for="pjaus_vl_prim_parc"  value="#{iimsg.PjausPaaittv_pjaus_vl_prim_parc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="pjaus_vl_prim_parc" tabindex="126"  value="#{cadPjausPaaittvBean.pjaus_vl_prim_parc_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_prim_parc','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_prim_parc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_prim_parc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_invest_arr" for="pjaus_vl_invest_arr"  value="#{iimsg.PjausPaaittv_pjaus_vl_invest_arr_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="400" class="pr5"> <h:inputText id="pjaus_vl_invest_arr" tabindex="127"  value="#{cadPjausPaaittvBean.pjaus_vl_invest_arr_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_vl_invest_arr','4',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_invest_arr_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_invest_arr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_qt_part_lucros_arr" for="pjaus_qt_part_lucros_arr"  value="#{iimsg.PjausPaaittv_pjaus_qt_part_lucros_arr_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="pjaus_qt_part_lucros_arr" tabindex="128"  value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_arr}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="clFields(48);bv('','pjaus_qt_part_lucros_arr','4',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_qt_part_lucros_arr_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_arr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_qt_part_lucros_arr_nap" for="pjaus_qt_part_lucros_arr_nap"  value="#{iimsg.PjausPaaittv_pjaus_qt_part_lucros_arr_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_qt_part_lucros_arr_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_arr_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(49);cleSubSel_uv('pjaus_qt_part_lucros_arr');bdcd('','pjaus_qt_part_lucros_arr_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="129" />
<h:commandButton id="pjaus_qt_part_lucros_arr_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_qt_part_lucros_arr_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_arr_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_qt_part_lucros_arr_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_qt_part_lucros_arr_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ini_arr" for="pjaus_dt_ini_arr"  value="#{iimsg.PjausPaaittv_pjaus_dt_ini_arr_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_ini_arr_str" tabindex="130"  value="#{cadPjausPaaittvBean.pjaus_dt_ini_arr_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_ini_arr_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_ini_arr_str', 'cadForm:pjaus_dt_ini_arr_nap', 8 , event);" onchange="clFields(50);validaDatas2(this);bv('','pjaus_dt_ini_arr_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_ini_arr_str', 'pjaus_dt_ini_arrCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_ini_arr_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_ini_arr_vc}" styleClass="btp"/>
<div id="pjaus_dt_ini_arrCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_ini_arr_nap" for="pjaus_dt_ini_arr_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_ini_arr_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_ini_arr_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_ini_arr_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(51);cleSubSel_uv('pjaus_dt_ini_arr_str');bdcd('','pjaus_dt_ini_arr_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="131" />
<h:commandButton id="pjaus_dt_ini_arr_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_ini_arr_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_ini_arr_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_ini_arr_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_ini_arr_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_trm_arr" for="pjaus_dt_trm_arr"  value="#{iimsg.PjausPaaittv_pjaus_dt_trm_arr_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_trm_arr_str" tabindex="132"  value="#{cadPjausPaaittvBean.pjaus_dt_trm_arr_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_trm_arr_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_trm_arr_str', 'cadForm:pjaus_dt_trm_arr_nap', 8 , event);" onchange="clFields(52);validaDatas2(this);bv('','pjaus_dt_trm_arr_str','4',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_trm_arr_str', 'pjaus_dt_trm_arrCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_trm_arr_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_trm_arr_vc}" styleClass="btp"/>
<div id="pjaus_dt_trm_arrCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_trm_arr_nap" for="pjaus_dt_trm_arr_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_trm_arr_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_trm_arr_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_trm_arr_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(53);cleSubSel_uv('pjaus_dt_trm_arr_str');bdcd('','pjaus_dt_trm_arr_nap','4','TPNNP',this.value);;" size="14" maxlength="12" tabindex="133" />
<h:commandButton id="pjaus_dt_trm_arr_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_trm_arr_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_trm_arr_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_trm_arr_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_trm_arr_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
