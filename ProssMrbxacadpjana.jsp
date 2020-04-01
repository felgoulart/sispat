<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjana" rendered="#{cadProssMrbxaBean.canUpdate}" value="#{cadProssMrbxaBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjana" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadProssMrbxaBean.canUpdate}" action="#{cadProssMrbxaBean.doValidate}" onmousedown="msgw('aMessagepjana');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pross_id3" >
<h:outputText styleClass="tip" value="#{iimsg.ProssMrbxa_pross_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pross_id3" value="#{cadProssMrbxaBean.pross_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.ProssMrbxa_pross_nm_title_tt}"/>
<h:outputText id="pross_id_dsc3" value="#{cadProssMrbxaBean.pross_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssMrbxa_docm_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_tp_fonte_recursos" for="pross_tp_fonte_recursos"  value="#{iimsg.ProssMrbxa_pross_tp_fonte_recursos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="800"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pross_tp_fonte_recursos" value="#{cadProssMrbxaBean.pross_tp_fonte_recursos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pross_tp_fonte_recursos','3','TPFRS',this.value);;" size="7" maxlength="5" tabindex="40" />
<h:commandButton id="pross_tp_fonte_recursos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPFRS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_tp_fonte_recursos_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_tp_fonte_recursos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_tp_fonte_recursos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssMrbxaBean.pross_tp_fonte_recursos_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_merc_dem_trans" for="pross_ds_merc_dem_trans"  value="#{iimsg.ProssMrbxa_pross_ds_merc_dem_trans_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1950"   >
<h:inputText id="pross_ds_merc_dem_trans" tabindex="41"  value="#{cadProssMrbxaBean.pross_ds_merc_dem_trans}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pross_ds_merc_dem_trans','3',this.value);"/>
<ps:psGraphicImage id="pross_ds_merc_dem_trans_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_ds_merc_dem_trans_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_tp_materiais_util" for="pross_tp_materiais_util"  value="#{iimsg.ProssMrbxa_pross_tp_materiais_util_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="800"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pross_tp_materiais_util" value="#{cadProssMrbxaBean.pross_tp_materiais_util}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pross_tp_materiais_util','3','TPMUT',this.value);;" size="7" maxlength="5" tabindex="42" />
<h:commandButton id="pross_tp_materiais_util_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMUT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_tp_materiais_util_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_tp_materiais_util_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_tp_materiais_util_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssMrbxaBean.pross_tp_materiais_util_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_proc_outros" for="pross_ds_proc_outros"  value="#{iimsg.ProssMrbxa_pross_ds_proc_outros_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1950"   >
<h:inputText id="pross_ds_proc_outros" tabindex="43"  value="#{cadProssMrbxaBean.pross_ds_proc_outros}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','pross_ds_proc_outros','3',this.value);"/>
<ps:psGraphicImage id="pross_ds_proc_outros_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_ds_proc_outros_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_vl_investimento" for="pross_vl_investimento"  value="#{iimsg.ProssMrbxa_pross_vl_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="800" class="pr5"> <h:inputText id="pross_vl_investimento" tabindex="44"  value="#{cadProssMrbxaBean.pross_vl_investimento_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','pross_vl_investimento','3',valDec(this.value));"/>
<ps:psGraphicImage id="pross_vl_investimento_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_vl_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_vl_investimento_antt" for="pross_vl_investimento_antt"  value="#{iimsg.ProssMrbxa_pross_vl_investimento_antt_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="pross_vl_investimento_antt" tabindex="45"  value="#{cadProssMrbxaBean.pross_vl_investimento_antt_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','pross_vl_investimento_antt','3',valDec(this.value));"/>
<ps:psGraphicImage id="pross_vl_investimento_antt_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_vl_investimento_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_pc_investimento" for="pross_pc_investimento"  value="#{iimsg.ProssMrbxa_pross_pc_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="750" > <h:inputText id="pross_pc_investimento" tabindex="-1"  onfocus="this.blur()" value="#{cadProssMrbxaBean.pross_pc_investimento}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pross_pc_investimento_vc" flagType="val" flag="#{cadProssMrbxaBean.pross_pc_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
