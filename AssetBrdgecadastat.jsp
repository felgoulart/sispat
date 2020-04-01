<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetBrdgeBean.canUpdate}" value="#{cadAssetBrdgeBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetBrdgeBean.canUpdate}" action="#{cadAssetBrdgeBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetBrdge_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetBrdgeBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetBrdge_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetBrdgeBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetBrdge_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esconsidade" for="asset_in_esconsidade"  value="#{iimsg.AssetBrdge_asset_in_esconsidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_esconsidade" value="#{cadAssetBrdgeBean.asset_in_esconsidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_esconsidade','3','SNNPI',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_in_esconsidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_esconsidade_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_in_esconsidade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nt_transposicao" for="asset_nt_transposicao"  value="#{iimsg.AssetBrdge_asset_nt_transposicao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nt_transposicao" value="#{cadAssetBrdgeBean.asset_nt_transposicao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_nt_transposicao','3','TRPNT',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="asset_nt_transposicao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRPNT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nt_transposicao_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_nt_transposicao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nt_transposicao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_nt_transposicao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetBrdge_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_total" tabindex="31"  value="#{cadAssetBrdgeBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetBrdge_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="32"  value="#{cadAssetBrdgeBean.asset_vl_gabarito_vert_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(3);bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_vert_nap" for="asset_vl_gabarito_vert_nap"  value="#{iimsg.AssetBrdge_asset_vl_gabarito_vert_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_vert_nap" value="#{cadAssetBrdgeBean.asset_vl_gabarito_vert_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('asset_vl_gabarito_vert');bdcd('','asset_vl_gabarito_vert_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="33" />
<h:commandButton id="asset_vl_gabarito_vert_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_gabarito_vert_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_vert_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_vl_gabarito_vert_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_mat_est" for="asset_tp_mat_est"  value="#{iimsg.AssetBrdge_asset_tp_mat_est_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_mat_est" value="#{cadAssetBrdgeBean.asset_tp_mat_est}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_mat_est','3','TIMAE',this.value);;" size="5" maxlength="3" tabindex="34" />
<h:commandButton id="asset_tp_mat_est_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIMAE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_mat_est_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_mat_est_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_mat_est_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_mat_est_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetBrdge_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="35"  value="#{cadAssetBrdgeBean.asset_vl_gabarito_horz_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(5);bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_horz_nap" for="asset_vl_gabarito_horz_nap"  value="#{iimsg.AssetBrdge_asset_vl_gabarito_horz_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_horz_nap" value="#{cadAssetBrdgeBean.asset_vl_gabarito_horz_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);bdcd('','asset_vl_gabarito_horz_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="36" />
<h:commandButton id="asset_vl_gabarito_horz_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_gabarito_horz_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_horz_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_vl_gabarito_horz_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pilares" for="asset_qt_pilares"  value="#{iimsg.AssetBrdge_asset_qt_pilares_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_qt_pilares" tabindex="37"  value="#{cadAssetBrdgeBean.asset_qt_pilares}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_qt_pilares','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_pilares_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_qt_pilares_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pistas" for="asset_qt_pistas"  value="#{iimsg.AssetBrdge_asset_qt_pistas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_pistas" value="#{cadAssetBrdgeBean.asset_qt_pistas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_qt_pistas','3','NUPIS',this.value);;" size="5" maxlength="3" tabindex="38" />
<h:commandButton id="asset_qt_pistas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUPIS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_pistas_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_qt_pistas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_pistas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_qt_pistas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_vaos" for="asset_qt_vaos"  value="#{iimsg.AssetBrdge_asset_qt_vaos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos" value="#{cadAssetBrdgeBean.asset_qt_vaos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(7);cleSubSel_uv('asset_qt_vaos_nap');bdcd('','asset_qt_vaos','3','NUVAO',this.value);;" size="5" maxlength="3" tabindex="39" />
<h:commandButton id="asset_qt_vaos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUVAO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_qt_vaos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_qt_vaos_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_qt_vaos_nap" for="asset_qt_vaos_nap"  value="#{iimsg.AssetBrdge_asset_qt_vaos_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos_nap" value="#{cadAssetBrdgeBean.asset_qt_vaos_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);bdcd('','asset_qt_vaos_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="40" />
<h:commandButton id="asset_qt_vaos_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_qt_vaos_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_qt_vaos_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bitola" for="asset_tp_bitola"  value="#{iimsg.AssetBrdge_asset_tp_bitola_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bitola" value="#{cadAssetBrdgeBean.asset_tp_bitola}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_bitola','3','BITOL',this.value);;" size="5" maxlength="3" tabindex="41" />
<h:commandButton id="asset_tp_bitola_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'BITOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bitola_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_bitola_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bitola_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_bitola_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_ramp" for="asset_in_ramp"  value="#{iimsg.AssetBrdge_asset_in_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_ramp_bol" value="#{cadAssetBrdgeBean.asset_in_ramp}"/>
<h:selectBooleanCheckbox id="asset_in_ramp" tabindex="42"  value="#{cadAssetBrdgeBean.asset_in_ramp_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ramp_bol');"/>
<ps:psGraphicImage id="asset_in_ramp_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_in_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pc_ramp" for="asset_pc_ramp"  value="#{iimsg.AssetBrdge_asset_pc_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_pc_ramp" tabindex="43"  value="#{cadAssetBrdgeBean.asset_pc_ramp_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(9);bv('','asset_pc_ramp','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_pc_ramp_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_pc_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_pc_ramp_nap" for="asset_pc_ramp_nap"  value="#{iimsg.AssetBrdge_asset_pc_ramp_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_pc_ramp_nap" value="#{cadAssetBrdgeBean.asset_pc_ramp_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);bdcd('','asset_pc_ramp_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="44" />
<h:commandButton id="asset_pc_ramp_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_pc_ramp_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_pc_ramp_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_pc_ramp_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_pc_ramp_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tracado_planta" for="asset_tp_tracado_planta"  value="#{iimsg.AssetBrdge_asset_tp_tracado_planta_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tracado_planta" value="#{cadAssetBrdgeBean.asset_tp_tracado_planta}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tracado_planta','3','TCPLA',this.value);;" size="5" maxlength="3" tabindex="45" />
<h:commandButton id="asset_tp_tracado_planta_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TCPLA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tracado_planta_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_tracado_planta_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tracado_planta_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_tracado_planta_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ctt" for="asset_tp_ctt"  value="#{iimsg.AssetBrdge_asset_tp_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ctt" value="#{cadAssetBrdgeBean.asset_tp_ctt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ctt','3','TICON',this.value);;" size="5" maxlength="3" tabindex="46" />
<h:commandButton id="asset_tp_ctt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TICON', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ctt_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_ctt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ctt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_ctt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt" for="asset_ex_ctt"  value="#{iimsg.AssetBrdge_asset_ex_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt" tabindex="47"  value="#{cadAssetBrdgeBean.asset_ex_ctt_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(11);bv('','asset_ex_ctt','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_nap" for="asset_ex_ctt_nap"  value="#{iimsg.AssetBrdge_asset_ex_ctt_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_nap" value="#{cadAssetBrdgeBean.asset_ex_ctt_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('asset_ex_ctt');bdcd('','asset_ex_ctt_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="48" />
<h:commandButton id="asset_ex_ctt_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ex_ctt_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_ent" for="asset_ex_ctt_ent"  value="#{iimsg.AssetBrdge_asset_ex_ctt_ent_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt_ent" tabindex="49"  value="#{cadAssetBrdgeBean.asset_ex_ctt_ent_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(13);bv('','asset_ex_ctt_ent','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_ent_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_ent_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_ent_nap" for="asset_ex_ctt_ent_nap"  value="#{iimsg.AssetBrdge_asset_ex_ctt_ent_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_ent_nap" value="#{cadAssetBrdgeBean.asset_ex_ctt_ent_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);bdcd('','asset_ex_ctt_ent_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="50" />
<h:commandButton id="asset_ex_ctt_ent_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_ent_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_ent_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_ent_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ex_ctt_ent_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_sai" for="asset_ex_ctt_sai"  value="#{iimsg.AssetBrdge_asset_ex_ctt_sai_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt_sai" tabindex="51"  value="#{cadAssetBrdgeBean.asset_ex_ctt_sai_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(15);bv('','asset_ex_ctt_sai','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_sai_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_sai_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_sai_nap" for="asset_ex_ctt_sai_nap"  value="#{iimsg.AssetBrdge_asset_ex_ctt_sai_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_sai_nap" value="#{cadAssetBrdgeBean.asset_ex_ctt_sai_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(16);bdcd('','asset_ex_ctt_sai_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="52" />
<h:commandButton id="asset_ex_ctt_sai_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_sai_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_sai_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_sai_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ex_ctt_sai_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_fix" for="asset_ex_ctt_fix"  value="#{iimsg.AssetBrdge_asset_ex_ctt_fix_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_fix" value="#{cadAssetBrdgeBean.asset_ex_ctt_fix}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(17);cleSubSel_uv('asset_ex_ctt_fix_nap');bdcd('','asset_ex_ctt_fix','3','CONTF',this.value);;" size="5" maxlength="3" tabindex="53" />
<h:commandButton id="asset_ex_ctt_fix_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONTF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_fix_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_fix_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_fix_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ex_ctt_fix_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_fix_nap" for="asset_ex_ctt_fix_nap"  value="#{iimsg.AssetBrdge_asset_ex_ctt_fix_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_fix_nap" value="#{cadAssetBrdgeBean.asset_ex_ctt_fix_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(18);bdcd('','asset_ex_ctt_fix_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="54" />
<h:commandButton id="asset_ex_ctt_fix_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_fix_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ex_ctt_fix_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_fix_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ex_ctt_fix_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trilho" for="asset_tp_trilho"  value="#{iimsg.AssetBrdge_asset_tp_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trilho" value="#{cadAssetBrdgeBean.asset_tp_trilho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trilho','3','TRTPA',this.value);;" size="5" maxlength="3" tabindex="55" />
<h:commandButton id="asset_tp_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRTPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trilho_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_dormente" for="asset_tp_dormente"  value="#{iimsg.AssetBrdge_asset_tp_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_dormente" value="#{cadAssetBrdgeBean.asset_tp_dormente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_dormente','3','TPDOR',this.value);;" size="5" maxlength="3" tabindex="56" />
<h:commandButton id="asset_tp_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDOR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_dormente_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fixacao" for="asset_tp_fixacao"  value="#{iimsg.AssetBrdge_asset_tp_fixacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fixacao" value="#{cadAssetBrdgeBean.asset_tp_fixacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fixacao','3','TRITF',this.value);;" size="5" maxlength="3" tabindex="57" />
<h:commandButton id="asset_tp_fixacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fixacao_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_fixacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fixacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_fixacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_lastro" for="asset_tp_lastro"  value="#{iimsg.AssetBrdge_asset_tp_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_lastro" value="#{cadAssetBrdgeBean.asset_tp_lastro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_lastro','3','TPLST',this.value);;" size="5" maxlength="3" tabindex="58" />
<h:commandButton id="asset_tp_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPLST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_lastro_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_tp_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_tp_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_altura_lastro" for="asset_vl_altura_lastro"  value="#{iimsg.AssetBrdge_asset_vl_altura_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_altura_lastro" tabindex="59"  value="#{cadAssetBrdgeBean.asset_vl_altura_lastro_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(19);bv('','asset_vl_altura_lastro','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_altura_lastro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_altura_lastro_nap" for="asset_vl_altura_lastro_nap"  value="#{iimsg.AssetBrdge_asset_vl_altura_lastro_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_altura_lastro_nap" value="#{cadAssetBrdgeBean.asset_vl_altura_lastro_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(20);bdcd('','asset_vl_altura_lastro_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="60" />
<h:commandButton id="asset_vl_altura_lastro_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_vl_altura_lastro_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_altura_lastro_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_vl_altura_lastro_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_refugios" for="asset_nr_refugios"  value="#{iimsg.AssetBrdge_asset_nr_refugios_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_refugios" value="#{cadAssetBrdgeBean.asset_nr_refugios}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(21);cleSubSel_uv('asset_nr_refugios_nap');bdcd('','asset_nr_refugios','3','QTRFG',this.value);;" size="5" maxlength="3" tabindex="61" />
<h:commandButton id="asset_nr_refugios_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'QTRFG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_refugios_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_nr_refugios_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_refugios_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_nr_refugios_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_nr_refugios_nap" for="asset_nr_refugios_nap"  value="#{iimsg.AssetBrdge_asset_nr_refugios_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_refugios_nap" value="#{cadAssetBrdgeBean.asset_nr_refugios_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(22);bdcd('','asset_nr_refugios_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="62" />
<h:commandButton id="asset_nr_refugios_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_refugios_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_nr_refugios_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_refugios_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_nr_refugios_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetBrdge_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="63"  value="#{cadAssetBrdgeBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="clFields(23);bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_aa_construcao_nap" for="asset_aa_construcao_nap"  value="#{iimsg.AssetBrdge_asset_aa_construcao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_aa_construcao_nap" value="#{cadAssetBrdgeBean.asset_aa_construcao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(24);cleSubSel_uv('asset_aa_construcao');bdcd('','asset_aa_construcao_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="64" />
<h:commandButton id="asset_aa_construcao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_aa_construcao_nap_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_aa_construcao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_aa_construcao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_aa_construcao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetBrdge_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetBrdgeBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="65" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_suporte" for="asset_cp_suporte"  value="#{iimsg.AssetBrdge_asset_cp_suporte_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_cp_suporte" tabindex="66"  value="#{cadAssetBrdgeBean.asset_cp_suporte}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_cp_suporte','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_suporte_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_cp_suporte_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
