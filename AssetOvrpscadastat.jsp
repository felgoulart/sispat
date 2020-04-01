<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetOvrpsBean.canUpdate}" value="#{cadAssetOvrpsBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetOvrpsBean.canUpdate}" action="#{cadAssetOvrpsBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetOvrps_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetOvrpsBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetOvrps_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetOvrpsBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetOvrps_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esconsidade" for="asset_in_esconsidade"  value="#{iimsg.AssetOvrps_asset_in_esconsidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_esconsidade" value="#{cadAssetOvrpsBean.asset_in_esconsidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_esconsidade','3','SNNPI',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_in_esconsidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_esconsidade_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_in_esconsidade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetOvrps_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acessibilidade" value="#{cadAssetOvrpsBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acessibilidade','3','SN',this.value);;" size="7" maxlength="5" tabindex="30" />
<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acessibilidade_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_tp_acessibilidade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_tp_acessibilidade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_passagem" for="asset_tp_passagem"  value="#{iimsg.AssetOvrps_asset_tp_passagem_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_passagem" value="#{cadAssetOvrpsBean.asset_tp_passagem}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_passagem','3','TIDPN',this.value);;" size="7" maxlength="5" tabindex="31" />
<h:commandButton id="asset_tp_passagem_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIDPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_passagem_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_tp_passagem_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_passagem_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_tp_passagem_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_pass_rodov" for="asset_in_pass_rodov"  value="#{iimsg.AssetOvrps_asset_in_pass_rodov_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_pass_rodov_bol" value="#{cadAssetOvrpsBean.asset_in_pass_rodov}"/>
<h:selectBooleanCheckbox id="asset_in_pass_rodov" tabindex="32"  value="#{cadAssetOvrpsBean.asset_in_pass_rodov_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_pass_rodov_bol');"/>
<ps:psGraphicImage id="asset_in_pass_rodov_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_in_pass_rodov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_transp_rodov" for="asset_tp_transp_rodov"  value="#{iimsg.AssetOvrps_asset_tp_transp_rodov_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_transp_rodov" value="#{cadAssetOvrpsBean.asset_tp_transp_rodov}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_transp_rodov','3','TPTPR',this.value);;" size="5" maxlength="3" tabindex="33" />
<h:commandButton id="asset_tp_transp_rodov_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPTPR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_transp_rodov_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_tp_transp_rodov_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_transp_rodov_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_tp_transp_rodov_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetOvrps_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="350" class="pr5"> <h:inputText id="asset_ex_total" tabindex="34"  value="#{cadAssetOvrpsBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetOvrps_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="35"  value="#{cadAssetOvrpsBean.asset_vl_gabarito_horz_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(2);bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_horz_nap" for="asset_vl_gabarito_horz_nap"  value="#{iimsg.AssetOvrps_asset_vl_gabarito_horz_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_horz_nap" value="#{cadAssetOvrpsBean.asset_vl_gabarito_horz_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(3);cleSubSel_uv('asset_vl_gabarito_horz');bdcd('','asset_vl_gabarito_horz_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="36" />
<h:commandButton id="asset_vl_gabarito_horz_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_nap_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_vl_gabarito_horz_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_horz_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_vl_gabarito_horz_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_mat_est" for="asset_tp_mat_est"  value="#{iimsg.AssetOvrps_asset_tp_mat_est_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_mat_est" value="#{cadAssetOvrpsBean.asset_tp_mat_est}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_mat_est','3','TIMAE',this.value);;" size="5" maxlength="3" tabindex="37" />
<h:commandButton id="asset_tp_mat_est_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIMAE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_mat_est_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_tp_mat_est_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_mat_est_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_tp_mat_est_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetOvrps_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="38"  value="#{cadAssetOvrpsBean.asset_vl_gabarito_vert_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="clFields(4);bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_gabarito_vert_nap" for="asset_vl_gabarito_vert_nap"  value="#{iimsg.AssetOvrps_asset_vl_gabarito_vert_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_gabarito_vert_nap" value="#{cadAssetOvrpsBean.asset_vl_gabarito_vert_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(5);cleSubSel_uv('asset_vl_gabarito_vert');bdcd('','asset_vl_gabarito_vert_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="39" />
<h:commandButton id="asset_vl_gabarito_vert_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_nap_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_vl_gabarito_vert_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_gabarito_vert_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_vl_gabarito_vert_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetOvrps_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="40"  value="#{cadAssetOvrpsBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="clFields(6);bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_aa_construcao_nap" for="asset_aa_construcao_nap"  value="#{iimsg.AssetOvrps_asset_aa_construcao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_aa_construcao_nap" value="#{cadAssetOvrpsBean.asset_aa_construcao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(7);cleSubSel_uv('asset_aa_construcao');bdcd('','asset_aa_construcao_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="41" />
<h:commandButton id="asset_aa_construcao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_aa_construcao_nap_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_aa_construcao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_aa_construcao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_aa_construcao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetOvrps_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetOvrpsBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="42" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetOvrpsBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetOvrpsBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
