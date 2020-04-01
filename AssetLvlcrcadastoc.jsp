<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetLvlcrBean.canUpdate}" value="#{cadAssetLvlcrBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastoc" rendered="#{cadAssetLvlcrBean.canUpdate}" action="#{cadAssetLvlcrBean.doValidate}" onmousedown="msgw('aMessageastoc');">
<ps:psGraphicImage id="iMessageastoc" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id5" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLvlcr_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id5" value="#{cadAssetLvlcrBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc5" value="#{cadAssetLvlcrBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetLvlcr_ocdc_tt_doc_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_arrendado" for="asset_in_arrendado"  value="#{iimsg.AssetLvlcr_asset_in_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_arrendado_bol" value="#{cadAssetLvlcrBean.asset_in_arrendado}"/>
<h:selectBooleanCheckbox id="asset_in_arrendado" tabindex="70"  value="#{cadAssetLvlcrBean.asset_in_arrendado_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_arrendado_bol');"/>
<ps:psGraphicImage id="asset_in_arrendado_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_devolucao" for="asset_cd_termo_devolucao"  value="#{iimsg.AssetLvlcr_asset_cd_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_devolucao" tabindex="71"  value="#{cadAssetLvlcrBean.asset_cd_termo_devolucao}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(7);bv('','asset_cd_termo_devolucao','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_devolucao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_devolucao_ckb" value="#{cadAssetLvlcrBean.asset_cd_termo_devolucao_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_termo_devolucao_nap" for="asset_cd_termo_devolucao_nap"  value="#{iimsg.AssetLvlcr_asset_cd_termo_devolucao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_devolucao_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_termo_devolucao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);bdcd('','asset_cd_termo_devolucao_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="72" />
<h:commandButton id="asset_cd_termo_devolucao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_devolucao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_devolucao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_termo_devolucao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_devolucao" for="asset_dt_termo_devolucao"  value="#{iimsg.AssetLvlcr_asset_dt_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_devolucao" tabindex="73"  value="#{cadAssetLvlcrBean.asset_dt_termo_devolucao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_devolucao', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_devolucao', 'cadForm:asset_dt_termo_devolucao_nap', 8 , event);" onchange="clFields(9);validaDatas2(this);bv('','asset_dt_termo_devolucao','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_devolucao', 'asset_dt_termo_devolucaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_termo_devolucao_vc}" styleClass="btp"/>
<div id="asset_dt_termo_devolucaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_dt_termo_devolucao_nap" for="asset_dt_termo_devolucao_nap"  value="#{iimsg.AssetLvlcr_asset_dt_termo_devolucao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_termo_devolucao_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_dt_termo_devolucao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);bdcd('','asset_dt_termo_devolucao_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="74" />
<h:commandButton id="asset_dt_termo_devolucao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_termo_devolucao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_termo_devolucao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_dt_termo_devolucao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_entrega" for="asset_cd_termo_entrega"  value="#{iimsg.AssetLvlcr_asset_cd_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_entrega" tabindex="75"  value="#{cadAssetLvlcrBean.asset_cd_termo_entrega}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(11);bv('','asset_cd_termo_entrega','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_entrega_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_entrega_ckb" value="#{cadAssetLvlcrBean.asset_cd_termo_entrega_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_termo_entrega_nap" for="asset_cd_termo_entrega_nap"  value="#{iimsg.AssetLvlcr_asset_cd_termo_entrega_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_entrega_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_termo_entrega_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);bdcd('','asset_cd_termo_entrega_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="76" />
<h:commandButton id="asset_cd_termo_entrega_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_entrega_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_entrega_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_termo_entrega_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_entrega" for="asset_dt_termo_entrega"  value="#{iimsg.AssetLvlcr_asset_dt_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_entrega" tabindex="77"  value="#{cadAssetLvlcrBean.asset_dt_termo_entrega_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_entrega', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_entrega', 'cadForm:asset_in_own', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_entrega','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_entrega', 'asset_dt_termo_entregaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_entrega_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_termo_entrega_vc}" styleClass="btp"/>
<div id="asset_dt_termo_entregaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_own" for="asset_in_own"  value="#{iimsg.AssetLvlcr_asset_in_own_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="6"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_own_bol" value="#{cadAssetLvlcrBean.asset_in_own}"/>
<h:selectBooleanCheckbox id="asset_in_own" tabindex="78"  value="#{cadAssetLvlcrBean.asset_in_own_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_own_bol');"/>
<ps:psGraphicImage id="asset_in_own_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_own_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_receb" for="asset_cd_termo_receb"  value="#{iimsg.AssetLvlcr_asset_cd_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_receb" tabindex="79"  value="#{cadAssetLvlcrBean.asset_cd_termo_receb}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(13);bv('','asset_cd_termo_receb','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_receb_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_receb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_termo_receb_nap" for="asset_cd_termo_receb_nap"  value="#{iimsg.AssetLvlcr_asset_cd_termo_receb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_receb_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_termo_receb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);bdcd('','asset_cd_termo_receb_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="80" />
<h:commandButton id="asset_cd_termo_receb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_receb_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_termo_receb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_receb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_termo_receb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_receb" for="asset_dt_termo_receb"  value="#{iimsg.AssetLvlcr_asset_dt_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_receb" tabindex="81"  value="#{cadAssetLvlcrBean.asset_dt_termo_receb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_receb', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_receb', 'cadForm:asset_dt_termo_receb_nap', 8 , event);" onchange="clFields(15);validaDatas2(this);bv('','asset_dt_termo_receb','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_receb', 'asset_dt_termo_recebCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_receb_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_termo_receb_vc}" styleClass="btp"/>
<div id="asset_dt_termo_recebCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_dt_termo_receb_nap" for="asset_dt_termo_receb_nap"  value="#{iimsg.AssetLvlcr_asset_dt_termo_receb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_termo_receb_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_dt_termo_receb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(16);cleSubSel_uv('asset_dt_termo_receb');bdcd('','asset_dt_termo_receb_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="82" />
<h:commandButton id="asset_dt_termo_receb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_termo_receb_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_termo_receb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_termo_receb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_dt_termo_receb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tombamento" for="asset_tp_tombamento"  value="#{iimsg.AssetLvlcr_asset_tp_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tombamento" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_tp_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tombamento','5','TOMTP',this.value);;" size="7" maxlength="5" tabindex="83" />
<h:commandButton id="asset_tp_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOMTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tombamento_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_tombamento_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tombamento" for="asset_cd_tombamento"  value="#{iimsg.AssetLvlcr_asset_cd_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_tombamento" tabindex="84"  value="#{cadAssetLvlcrBean.asset_cd_tombamento}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(17);bv('','asset_cd_tombamento','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_tombamento_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_tombamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_tombamento_ckb" value="#{cadAssetLvlcrBean.asset_cd_tombamento_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_tombamento_nap" for="asset_cd_tombamento_nap"  value="#{iimsg.AssetLvlcr_asset_cd_tombamento_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_tombamento_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_tombamento_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(18);bdcd('','asset_cd_tombamento_nap','5','TPNPI',this.value);;" size="14" maxlength="12" tabindex="85" />
<h:commandButton id="asset_cd_tombamento_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_tombamento_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_tombamento_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_tombamento_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_tombamento_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_tombamento" for="asset_dt_tombamento"  value="#{iimsg.AssetLvlcr_asset_dt_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_tombamento" tabindex="86"  value="#{cadAssetLvlcrBean.asset_dt_tombamento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_tombamento', event);" onkeyup="SaltaCampo('cadForm:asset_dt_tombamento', 'cadForm:asset_dt_tombamento_nap', 8 , event);" onchange="clFields(19);validaDatas2(this);bv('','asset_dt_tombamento','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_tombamento', 'asset_dt_tombamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_tombamento_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_tombamento_vc}" styleClass="btp"/>
<div id="asset_dt_tombamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_dt_tombamento_nap" for="asset_dt_tombamento_nap"  value="#{iimsg.AssetLvlcr_asset_dt_tombamento_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_tombamento_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_dt_tombamento_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(20);bdcd('','asset_dt_tombamento_nap','5','TPNPI',this.value);;" size="14" maxlength="12" tabindex="87" />
<h:commandButton id="asset_dt_tombamento_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_tombamento_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_tombamento_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_tombamento_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_dt_tombamento_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_rcb_prop" for="asset_cd_doc_rcb_prop"  value="#{iimsg.AssetLvlcr_asset_cd_doc_rcb_prop_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_doc_rcb_prop" tabindex="88"  value="#{cadAssetLvlcrBean.asset_cd_doc_rcb_prop}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(21);bv('','asset_cd_doc_rcb_prop','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_rcb_prop_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_doc_rcb_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_doc_rcb_prop_nap" for="asset_cd_doc_rcb_prop_nap"  value="#{iimsg.AssetLvlcr_asset_cd_doc_rcb_prop_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_doc_rcb_prop_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_doc_rcb_prop_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(22);bdcd('','asset_cd_doc_rcb_prop_nap','5','TPNPI',this.value);;" size="14" maxlength="12" tabindex="89" />
<h:commandButton id="asset_cd_doc_rcb_prop_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_doc_rcb_prop_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_doc_rcb_prop_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_doc_rcb_prop_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_doc_rcb_prop_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_vinc" for="asset_cd_doc_sol_vinc"  value="#{iimsg.AssetLvlcr_asset_cd_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_doc_sol_vinc" tabindex="90"  value="#{cadAssetLvlcrBean.asset_cd_doc_sol_vinc}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(23);bv('','asset_cd_doc_sol_vinc','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_doc_sol_vinc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_cd_doc_sol_vinc_nap" for="asset_cd_doc_sol_vinc_nap"  value="#{iimsg.AssetLvlcr_asset_cd_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_doc_sol_vinc_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(24);cleSubSel_uv('asset_cd_doc_sol_vinc');bdcd('','asset_cd_doc_sol_vinc_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="91" />
<h:commandButton id="asset_cd_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_vinc" for="asset_dt_doc_sol_vinc"  value="#{iimsg.AssetLvlcr_asset_dt_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_doc_sol_vinc" tabindex="92"  value="#{cadAssetLvlcrBean.asset_dt_doc_sol_vinc_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_vinc', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_vinc', 'cadForm:asset_dt_doc_sol_vinc_nap', 8 , event);" onchange="clFields(25);validaDatas2(this);bv('','asset_dt_doc_sol_vinc','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_vinc', 'asset_dt_doc_sol_vincCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_doc_sol_vinc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_vincCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipr txl pl0"  id="lbl_asset_dt_doc_sol_vinc_nap" for="asset_dt_doc_sol_vinc_nap"  value="#{iimsg.AssetLvlcr_asset_dt_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_doc_sol_vinc_nap" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_dt_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(26);cleSubSel_uv('asset_dt_doc_sol_vinc');bdcd('','asset_dt_doc_sol_vinc_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="93" />
<h:commandButton id="asset_dt_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_dt_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_tombamento" for="asset_in_tombamento"  value="#{iimsg.AssetLvlcr_asset_in_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_tombamento" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_in_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_tombamento','5','SNNPI',this.value);;" size="5" maxlength="3" tabindex="94" />
<h:commandButton id="asset_in_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_tombamento_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_tombamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetLvlcr_comp_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_proprietaria" for="asset_cd_proprietaria"  value="#{iimsg.AssetLvlcr_asset_cd_proprietaria_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_proprietaria" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_proprietaria}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_proprietaria','5','COMPN',this.value);;" size="10" maxlength="8" tabindex="95" />
<h:commandButton id="asset_cd_proprietaria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_proprietaria_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_proprietaria_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_proprietaria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_proprietaria_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_detentora" for="asset_cd_detentora"  value="#{iimsg.AssetLvlcr_asset_cd_detentora_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_detentora" onclick="clf(this);" value="#{cadAssetLvlcrBean.asset_cd_detentora}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_detentora','5','COMPN',this.value);;" size="12" maxlength="10" tabindex="96" />
<h:commandButton id="asset_cd_detentora_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_detentora_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_cd_detentora_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_detentora_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_cd_detentora_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
