<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetViadtBean.canUpdate}" value="#{cadAssetViadtBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetViadtBean.canUpdate}" action="#{cadAssetViadtBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetViadt_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetViadtBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetViadt_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetViadtBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetViadt_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetViadt_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acessibilidade" value="#{cadAssetViadtBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acessibilidade','3','SN',this.value);;" size="7" maxlength="5" tabindex="32" />
<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acessibilidade_vc" flagType="val" flag="#{cadAssetViadtBean.asset_tp_acessibilidade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_tp_acessibilidade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_passagem" for="asset_tp_passagem"  value="#{iimsg.AssetViadt_asset_tp_passagem_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_passagem" value="#{cadAssetViadtBean.asset_tp_passagem}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_passagem','3','TIDPN',this.value);;" size="7" maxlength="5" tabindex="33" />
<h:commandButton id="asset_tp_passagem_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIDPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_passagem_vc" flagType="val" flag="#{cadAssetViadtBean.asset_tp_passagem_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_passagem_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_tp_passagem_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_pos_rel_via" for="asset_cd_pos_rel_via"  value="#{iimsg.AssetViadt_asset_cd_pos_rel_via_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_pos_rel_via" value="#{cadAssetViadtBean.asset_cd_pos_rel_via}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_pos_rel_via','3','POSRV',this.value);;" size="5" maxlength="3" tabindex="34" />
<h:commandButton id="asset_cd_pos_rel_via_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'POSRV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_pos_rel_via_vc" flagType="val" flag="#{cadAssetViadtBean.asset_cd_pos_rel_via_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_pos_rel_via_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_cd_pos_rel_via_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetViadt_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_total" tabindex="35"  value="#{cadAssetViadtBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetViadtBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetViadt_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="36"  value="#{cadAssetViadtBean.asset_vl_gabarito_horz_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(1);bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_horz_nap" for="asset_vl_gabarito_horz_nap"  value="#{iimsg.AssetViadt_asset_vl_gabarito_horz_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_horz_nap" value="#{cadAssetViadtBean.asset_vl_gabarito_horz_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);bdcd('','asset_vl_gabarito_horz_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="37" />
<h:commandButton id="asset_vl_gabarito_horz_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_nap_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_gabarito_horz_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_horz_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_vl_gabarito_horz_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetViadt_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="38"  value="#{cadAssetViadtBean.asset_vl_gabarito_vert_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(3);bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_vert_nap" for="asset_vl_gabarito_vert_nap"  value="#{iimsg.AssetViadt_asset_vl_gabarito_vert_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_vert_nap" value="#{cadAssetViadtBean.asset_vl_gabarito_vert_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('asset_vl_gabarito_vert');bdcd('','asset_vl_gabarito_vert_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="39" />
<h:commandButton id="asset_vl_gabarito_vert_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_nap_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_gabarito_vert_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_vert_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_vl_gabarito_vert_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetViadt_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetViadtBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="40" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetViadtBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_mat_est" for="asset_tp_mat_est"  value="#{iimsg.AssetViadt_asset_tp_mat_est_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_mat_est" value="#{cadAssetViadtBean.asset_tp_mat_est}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_mat_est','3','TIMAE',this.value);;" size="5" maxlength="3" tabindex="41" />
<h:commandButton id="asset_tp_mat_est_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIMAE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_mat_est_vc" flagType="val" flag="#{cadAssetViadtBean.asset_tp_mat_est_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_mat_est_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_tp_mat_est_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetViadt_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="42"  value="#{cadAssetViadtBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="clFields(5);bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetViadtBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_aa_construcao_nap" for="asset_aa_construcao_nap"  value="#{iimsg.AssetViadt_asset_aa_construcao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_aa_construcao_nap" value="#{cadAssetViadtBean.asset_aa_construcao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);cleSubSel_uv('asset_aa_construcao');bdcd('','asset_aa_construcao_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="43" />
<h:commandButton id="asset_aa_construcao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_aa_construcao_nap_vc" flagType="val" flag="#{cadAssetViadtBean.asset_aa_construcao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_aa_construcao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_aa_construcao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_vaos" for="asset_qt_vaos"  value="#{iimsg.AssetViadt_asset_qt_vaos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos" value="#{cadAssetViadtBean.asset_qt_vaos}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(7);cleSubSel_uv('asset_qt_vaos_nap');bdcd('','asset_qt_vaos','3','NUVAO',this.value);;" size="5" maxlength="3" tabindex="44" />
<h:commandButton id="asset_qt_vaos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUVAO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_vc" flagType="val" flag="#{cadAssetViadtBean.asset_qt_vaos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_qt_vaos_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_qt_vaos_nap" for="asset_qt_vaos_nap"  value="#{iimsg.AssetViadt_asset_qt_vaos_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos_nap" value="#{cadAssetViadtBean.asset_qt_vaos_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);bdcd('','asset_qt_vaos_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="45" />
<h:commandButton id="asset_qt_vaos_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_nap_vc" flagType="val" flag="#{cadAssetViadtBean.asset_qt_vaos_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_qt_vaos_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
