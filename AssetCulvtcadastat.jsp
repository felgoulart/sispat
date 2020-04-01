<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetCulvtBean.canUpdate}" value="#{cadAssetCulvtBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetCulvtBean.canUpdate}" action="#{cadAssetCulvtBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetCulvt_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetCulvtBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetCulvt_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetCulvtBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetCulvt_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esconsidade" for="asset_in_esconsidade"  value="#{iimsg.AssetCulvt_asset_in_esconsidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_esconsidade" value="#{cadAssetCulvtBean.asset_in_esconsidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_esconsidade','3','SNNPI',this.value);;" size="5" maxlength="3" tabindex="24" />
<h:commandButton id="asset_in_esconsidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_esconsidade_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_in_esconsidade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetCulvt_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_total" tabindex="25"  value="#{cadAssetCulvtBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_padrao_construtivo" for="asset_cd_padrao_construtivo"  value="#{iimsg.AssetCulvt_asset_cd_padrao_construtivo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_padrao_construtivo" value="#{cadAssetCulvtBean.asset_cd_padrao_construtivo}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_padrao_construtivo','3','EDPCT',this.value);;" size="5" maxlength="3" tabindex="26" />
<h:commandButton id="asset_cd_padrao_construtivo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDPCT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_padrao_construtivo_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_padrao_construtivo_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_padrao_construtivo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_cd_padrao_construtivo_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetCulvt_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="27"  value="#{cadAssetCulvtBean.asset_vl_gabarito_vert_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetCulvt_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="28"  value="#{cadAssetCulvtBean.asset_vl_gabarito_horz_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_pos_amontante" for="asset_tp_pos_amontante"  value="#{iimsg.AssetCulvt_asset_tp_pos_amontante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_pos_amontante" value="#{cadAssetCulvtBean.asset_tp_pos_amontante}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_pos_amontante','3','PSMNT',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_tp_pos_amontante_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PSMNT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_pos_amontante_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_tp_pos_amontante_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_pos_amontante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_tp_pos_amontante_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_ala_amontante" for="asset_in_ala_amontante"  value="#{iimsg.AssetCulvt_asset_in_ala_amontante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_ala_amontante_bol" value="#{cadAssetCulvtBean.asset_in_ala_amontante}"/>
<h:selectBooleanCheckbox id="asset_in_ala_amontante" tabindex="30"  value="#{cadAssetCulvtBean.asset_in_ala_amontante_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ala_amontante_bol');"/>
<ps:psGraphicImage id="asset_in_ala_amontante_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_in_ala_amontante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_existencia" for="asset_in_existencia"  value="#{iimsg.AssetCulvt_asset_in_existencia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_existencia" value="#{cadAssetCulvtBean.asset_in_existencia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_existencia','3','SNNAP',this.value);;" size="5" maxlength="3" tabindex="31" />
<h:commandButton id="asset_in_existencia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_existencia_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_in_existencia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_existencia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_in_existencia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_contido" for="asset_in_contido"  value="#{iimsg.AssetCulvt_asset_in_contido_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_contido_bol" value="#{cadAssetCulvtBean.asset_in_contido}"/>
<h:selectBooleanCheckbox id="asset_in_contido" tabindex="32"  value="#{cadAssetCulvtBean.asset_in_contido_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_contido_bol');"/>
<ps:psGraphicImage id="asset_in_contido_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_in_contido_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_contido_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_in_contido_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bueiro" for="asset_tp_bueiro"  value="#{iimsg.AssetCulvt_asset_tp_bueiro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bueiro" value="#{cadAssetCulvtBean.asset_tp_bueiro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_bueiro','3','TPBUE',this.value);;" size="7" maxlength="5" tabindex="33" />
<h:commandButton id="asset_tp_bueiro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPBUE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bueiro_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_tp_bueiro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bueiro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_tp_bueiro_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bueiro_outro" for="asset_tp_bueiro_outro"  value="#{iimsg.AssetCulvt_asset_tp_bueiro_outro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_tp_bueiro_outro" tabindex="34"  value="#{cadAssetCulvtBean.asset_tp_bueiro_outro}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(1);bv('','asset_tp_bueiro_outro','3',this.value);"/>
<ps:psGraphicImage id="asset_tp_bueiro_outro_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_tp_bueiro_outro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_tp_bueiro_outro_nap" for="asset_tp_bueiro_outro_nap"  value="#{iimsg.AssetCulvt_asset_tp_bueiro_outro_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bueiro_outro_nap" value="#{cadAssetCulvtBean.asset_tp_bueiro_outro_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);cleSubSel_uv('asset_tp_bueiro_outro');bdcd('','asset_tp_bueiro_outro_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="35" />
<h:commandButton id="asset_tp_bueiro_outro_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bueiro_outro_nap_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_tp_bueiro_outro_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bueiro_outro_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.asset_tp_bueiro_outro_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_assegt_ds_identificador" for="assegt_ds_identificador"  value="#{iimsg.AssetCulvt_assegt_ds_identificador_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="assegt_ds_identificador" tabindex="36"  value="#{cadAssetCulvtBean.assegt_ds_identificador}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(3);bv('','assegt_ds_identificador','3',this.value);"/>
<ps:psGraphicImage id="assegt_ds_identificador_vc" flagType="val" flag="#{cadAssetCulvtBean.assegt_ds_identificador_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_assegt_ds_identificador_nap" for="assegt_ds_identificador_nap"  value="#{iimsg.AssetCulvt_assegt_ds_identificador_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="assegt_ds_identificador_nap" value="#{cadAssetCulvtBean.assegt_ds_identificador_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('assegt_ds_identificador');bdcd('','assegt_ds_identificador_nap','3','TPNAP',this.value);;" size="14" maxlength="12" tabindex="37" />
<h:commandButton id="assegt_ds_identificador_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="assegt_ds_identificador_nap_vc" flagType="val" flag="#{cadAssetCulvtBean.assegt_ds_identificador_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="assegt_ds_identificador_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetCulvtBean.assegt_ds_identificador_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
