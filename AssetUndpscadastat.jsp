<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetUndpsBean.canUpdate}" value="#{cadAssetUndpsBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetUndpsBean.canUpdate}" action="#{cadAssetUndpsBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetUndps_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetUndpsBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetUndps_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetUndpsBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetUndps_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esconsidade" for="asset_in_esconsidade"  value="#{iimsg.AssetUndps_asset_in_esconsidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_esconsidade" value="#{cadAssetUndpsBean.asset_in_esconsidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_esconsidade','3','SNNPI',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_in_esconsidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_esconsidade_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_in_esconsidade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nt_transposicao" for="asset_nt_transposicao"  value="#{iimsg.AssetUndps_asset_nt_transposicao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nt_transposicao" value="#{cadAssetUndpsBean.asset_nt_transposicao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_nt_transposicao','3','TRPNT',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="asset_nt_transposicao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRPNT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nt_transposicao_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_nt_transposicao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nt_transposicao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_nt_transposicao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetUndps_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_total" tabindex="31"  value="#{cadAssetUndpsBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetUndps_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="32"  value="#{cadAssetUndpsBean.asset_vl_gabarito_vert_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_mat_est" for="asset_tp_mat_est"  value="#{iimsg.AssetUndps_asset_tp_mat_est_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_mat_est" value="#{cadAssetUndpsBean.asset_tp_mat_est}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_mat_est','3','TIMAE',this.value);;" size="5" maxlength="3" tabindex="33" />
<h:commandButton id="asset_tp_mat_est_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIMAE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_mat_est_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_mat_est_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_mat_est_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_mat_est_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetUndps_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="34"  value="#{cadAssetUndpsBean.asset_vl_gabarito_horz_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pilares" for="asset_qt_pilares"  value="#{iimsg.AssetUndps_asset_qt_pilares_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_qt_pilares" tabindex="35"  value="#{cadAssetUndpsBean.asset_qt_pilares}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_qt_pilares','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_pilares_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_qt_pilares_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pistas" for="asset_qt_pistas"  value="#{iimsg.AssetUndps_asset_qt_pistas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_pistas" value="#{cadAssetUndpsBean.asset_qt_pistas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_qt_pistas','3','NUPIS',this.value);;" size="5" maxlength="3" tabindex="36" />
<h:commandButton id="asset_qt_pistas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUPIS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_pistas_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_qt_pistas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_pistas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_qt_pistas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_vaos" for="asset_qt_vaos"  value="#{iimsg.AssetUndps_asset_qt_vaos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos" value="#{cadAssetUndpsBean.asset_qt_vaos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_qt_vaos','3','NUVAO',this.value);;" size="5" maxlength="3" tabindex="37" />
<h:commandButton id="asset_qt_vaos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUVAO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_qt_vaos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_qt_vaos_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bitola" for="asset_tp_bitola"  value="#{iimsg.AssetUndps_asset_tp_bitola_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bitola" value="#{cadAssetUndpsBean.asset_tp_bitola}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_bitola','3','BITOL',this.value);;" size="5" maxlength="3" tabindex="38" />
<h:commandButton id="asset_tp_bitola_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'BITOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bitola_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_bitola_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bitola_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_bitola_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_ramp" for="asset_in_ramp"  value="#{iimsg.AssetUndps_asset_in_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_ramp_bol" value="#{cadAssetUndpsBean.asset_in_ramp}"/>
<h:selectBooleanCheckbox id="asset_in_ramp" tabindex="39"  value="#{cadAssetUndpsBean.asset_in_ramp_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ramp_bol');"/>
<ps:psGraphicImage id="asset_in_ramp_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_in_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pc_ramp" for="asset_pc_ramp"  value="#{iimsg.AssetUndps_asset_pc_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_pc_ramp" tabindex="40"  value="#{cadAssetUndpsBean.asset_pc_ramp_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(1);bv('','asset_pc_ramp','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_pc_ramp_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_pc_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_pc_ramp_nap" for="asset_pc_ramp_nap"  value="#{iimsg.AssetUndps_asset_pc_ramp_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_pc_ramp_nap" value="#{cadAssetUndpsBean.asset_pc_ramp_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);bdcd('','asset_pc_ramp_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="41" />
<h:commandButton id="asset_pc_ramp_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_pc_ramp_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_pc_ramp_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_pc_ramp_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_pc_ramp_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tracado_planta" for="asset_tp_tracado_planta"  value="#{iimsg.AssetUndps_asset_tp_tracado_planta_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tracado_planta" value="#{cadAssetUndpsBean.asset_tp_tracado_planta}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tracado_planta','3','TCPLA',this.value);;" size="5" maxlength="3" tabindex="42" />
<h:commandButton id="asset_tp_tracado_planta_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TCPLA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tracado_planta_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_tracado_planta_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tracado_planta_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_tracado_planta_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ctt" for="asset_tp_ctt"  value="#{iimsg.AssetUndps_asset_tp_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ctt" value="#{cadAssetUndpsBean.asset_tp_ctt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ctt','3','TICON',this.value);;" size="5" maxlength="3" tabindex="43" />
<h:commandButton id="asset_tp_ctt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TICON', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ctt_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_ctt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ctt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_ctt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt" for="asset_ex_ctt"  value="#{iimsg.AssetUndps_asset_ex_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt" tabindex="44"  value="#{cadAssetUndpsBean.asset_ex_ctt_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(3);bv('','asset_ex_ctt','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_nap" for="asset_ex_ctt_nap"  value="#{iimsg.AssetUndps_asset_ex_ctt_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_nap" value="#{cadAssetUndpsBean.asset_ex_ctt_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('asset_ex_ctt');bdcd('','asset_ex_ctt_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="45" />
<h:commandButton id="asset_ex_ctt_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ex_ctt_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_ent" for="asset_ex_ctt_ent"  value="#{iimsg.AssetUndps_asset_ex_ctt_ent_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt_ent" tabindex="46"  value="#{cadAssetUndpsBean.asset_ex_ctt_ent_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(5);bv('','asset_ex_ctt_ent','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_ent_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_ent_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_ent_nap" for="asset_ex_ctt_ent_nap"  value="#{iimsg.AssetUndps_asset_ex_ctt_ent_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_ent_nap" value="#{cadAssetUndpsBean.asset_ex_ctt_ent_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);bdcd('','asset_ex_ctt_ent_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="47" />
<h:commandButton id="asset_ex_ctt_ent_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_ent_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_ent_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_ent_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ex_ctt_ent_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_sai" for="asset_ex_ctt_sai"  value="#{iimsg.AssetUndps_asset_ex_ctt_sai_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_ctt_sai" tabindex="48"  value="#{cadAssetUndpsBean.asset_ex_ctt_sai_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(7);bv('','asset_ex_ctt_sai','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_sai_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_sai_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_sai_nap" for="asset_ex_ctt_sai_nap"  value="#{iimsg.AssetUndps_asset_ex_ctt_sai_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_sai_nap" value="#{cadAssetUndpsBean.asset_ex_ctt_sai_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);bdcd('','asset_ex_ctt_sai_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="49" />
<h:commandButton id="asset_ex_ctt_sai_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_sai_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_sai_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_sai_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ex_ctt_sai_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_fix" for="asset_ex_ctt_fix"  value="#{iimsg.AssetUndps_asset_ex_ctt_fix_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_fix" value="#{cadAssetUndpsBean.asset_ex_ctt_fix}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(9);cleSubSel_uv('asset_ex_ctt_fix_nap');bdcd('','asset_ex_ctt_fix','3','CONTF',this.value);;" size="5" maxlength="3" tabindex="50" />
<h:commandButton id="asset_ex_ctt_fix_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONTF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_fix_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_fix_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_fix_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ex_ctt_fix_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ex_ctt_fix_nap" for="asset_ex_ctt_fix_nap"  value="#{iimsg.AssetUndps_asset_ex_ctt_fix_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_fix_nap" value="#{cadAssetUndpsBean.asset_ex_ctt_fix_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);bdcd('','asset_ex_ctt_fix_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="51" />
<h:commandButton id="asset_ex_ctt_fix_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_fix_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ex_ctt_fix_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_fix_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ex_ctt_fix_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trilho" for="asset_tp_trilho"  value="#{iimsg.AssetUndps_asset_tp_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trilho" value="#{cadAssetUndpsBean.asset_tp_trilho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trilho','3','TRTPA',this.value);;" size="5" maxlength="3" tabindex="52" />
<h:commandButton id="asset_tp_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRTPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trilho_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_dormente" for="asset_tp_dormente"  value="#{iimsg.AssetUndps_asset_tp_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_dormente" value="#{cadAssetUndpsBean.asset_tp_dormente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_dormente','3','TPDOR',this.value);;" size="5" maxlength="3" tabindex="53" />
<h:commandButton id="asset_tp_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDOR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_dormente_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fixacao" for="asset_tp_fixacao"  value="#{iimsg.AssetUndps_asset_tp_fixacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fixacao" value="#{cadAssetUndpsBean.asset_tp_fixacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fixacao','3','TRITF',this.value);;" size="5" maxlength="3" tabindex="54" />
<h:commandButton id="asset_tp_fixacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fixacao_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_fixacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fixacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_fixacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_lastro" for="asset_tp_lastro"  value="#{iimsg.AssetUndps_asset_tp_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_lastro" value="#{cadAssetUndpsBean.asset_tp_lastro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_lastro','3','TPLST',this.value);;" size="5" maxlength="3" tabindex="55" />
<h:commandButton id="asset_tp_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPLST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_lastro_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_tp_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_tp_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_altura_lastro" for="asset_vl_altura_lastro"  value="#{iimsg.AssetUndps_asset_vl_altura_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_altura_lastro" tabindex="56"  value="#{cadAssetUndpsBean.asset_vl_altura_lastro_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(11);bv('','asset_vl_altura_lastro','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_vl_altura_lastro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_altura_lastro_nap" for="asset_vl_altura_lastro_nap"  value="#{iimsg.AssetUndps_asset_vl_altura_lastro_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_altura_lastro_nap" value="#{cadAssetUndpsBean.asset_vl_altura_lastro_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);bdcd('','asset_vl_altura_lastro_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="57" />
<h:commandButton id="asset_vl_altura_lastro_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_vl_altura_lastro_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_altura_lastro_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_vl_altura_lastro_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_refugios" for="asset_nr_refugios"  value="#{iimsg.AssetUndps_asset_nr_refugios_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_refugios" value="#{cadAssetUndpsBean.asset_nr_refugios}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(13);cleSubSel_uv('asset_nr_refugios_nap');bdcd('','asset_nr_refugios','3','QTRFG',this.value);;" size="5" maxlength="3" tabindex="58" />
<h:commandButton id="asset_nr_refugios_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'QTRFG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_refugios_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_nr_refugios_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_refugios_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_nr_refugios_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_nr_refugios_nap" for="asset_nr_refugios_nap"  value="#{iimsg.AssetUndps_asset_nr_refugios_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_refugios_nap" value="#{cadAssetUndpsBean.asset_nr_refugios_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);bdcd('','asset_nr_refugios_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="59" />
<h:commandButton id="asset_nr_refugios_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_refugios_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_nr_refugios_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_refugios_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_nr_refugios_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetUndps_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="60"  value="#{cadAssetUndpsBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="clFields(15);bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_aa_construcao_nap" for="asset_aa_construcao_nap"  value="#{iimsg.AssetUndps_asset_aa_construcao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_aa_construcao_nap" value="#{cadAssetUndpsBean.asset_aa_construcao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(16);cleSubSel_uv('asset_aa_construcao');bdcd('','asset_aa_construcao_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="61" />
<h:commandButton id="asset_aa_construcao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_aa_construcao_nap_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_aa_construcao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_aa_construcao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_aa_construcao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetUndps_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetUndpsBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="62" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetUndpsBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_suporte" for="asset_cp_suporte"  value="#{iimsg.AssetUndps_asset_cp_suporte_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_cp_suporte" tabindex="63"  value="#{cadAssetUndpsBean.asset_cp_suporte}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_cp_suporte','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_suporte_vc" flagType="val" flag="#{cadAssetUndpsBean.asset_cp_suporte_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
