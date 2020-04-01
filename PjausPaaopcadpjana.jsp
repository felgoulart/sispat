<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjana" rendered="#{cadPjausPaaopBean.canUpdate}" value="#{cadPjausPaaopBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjana" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaopBean.canUpdate}" action="#{cadPjausPaaopBean.doValidate}" onmousedown="msgw('aMessagepjana');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id3" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaop_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id3" value="#{cadPjausPaaopBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc3" value="#{cadPjausPaaopBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_docm_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_fonte_recursos" for="pjaus_tp_fonte_recursos"  value="#{iimsg.PjausPaaop_pjaus_tp_fonte_recursos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="800"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_fonte_recursos" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_tp_fonte_recursos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_fonte_recursos','3','TPFRS',this.value);;" size="7" maxlength="5" tabindex="43" />
<h:commandButton id="pjaus_tp_fonte_recursos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPFRS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_fonte_recursos_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_tp_fonte_recursos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_fonte_recursos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_tp_fonte_recursos_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_merc_dem_trans" for="pjaus_ds_merc_dem_trans"  value="#{iimsg.PjausPaaop_pjaus_ds_merc_dem_trans_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1950"   >
<h:inputText id="pjaus_ds_merc_dem_trans" tabindex="44"  value="#{cadPjausPaaopBean.pjaus_ds_merc_dem_trans}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_merc_dem_trans','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_merc_dem_trans_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_merc_dem_trans_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_materiais_util" for="pjaus_tp_materiais_util"  value="#{iimsg.PjausPaaop_pjaus_tp_materiais_util_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="800"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_materiais_util" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_tp_materiais_util}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_materiais_util','3','TPMUT',this.value);;" size="7" maxlength="5" tabindex="45" />
<h:commandButton id="pjaus_tp_materiais_util_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_materiais_util_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_tp_materiais_util_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_materiais_util_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_tp_materiais_util_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_proc_outros" for="pjaus_ds_proc_outros"  value="#{iimsg.PjausPaaop_pjaus_ds_proc_outros_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1950"   >
<h:inputText id="pjaus_ds_proc_outros" tabindex="46"  value="#{cadPjausPaaopBean.pjaus_ds_proc_outros}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_proc_outros','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_proc_outros_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_proc_outros_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_investimento" for="pjaus_vl_investimento"  value="#{iimsg.PjausPaaop_pjaus_vl_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="800" class="pr5"> <h:inputText id="pjaus_vl_investimento" tabindex="47"  value="#{cadPjausPaaopBean.pjaus_vl_investimento_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','pjaus_vl_investimento','3',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_investimento_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_vl_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_investimento_antt" for="pjaus_vl_investimento_antt"  value="#{iimsg.PjausPaaop_pjaus_vl_investimento_antt_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="pjaus_vl_investimento_antt" tabindex="48"  value="#{cadPjausPaaopBean.pjaus_vl_investimento_antt_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','pjaus_vl_investimento_antt','3',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_investimento_antt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_vl_investimento_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pc_investimento" for="pjaus_pc_investimento"  value="#{iimsg.PjausPaaop_pjaus_pc_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="750" > <h:inputText id="pjaus_pc_investimento" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_pc_investimento}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pjaus_pc_investimento_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_pc_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
