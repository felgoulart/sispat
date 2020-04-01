<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetTunnlBean.canUpdate}" value="#{cadAssetTunnlBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastoc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetTunnlBean.canUpdate}" action="#{cadAssetTunnlBean.doValidate}" onmousedown="msgw('aMessageastoc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id5" >
<h:outputText styleClass="tip" value="#{iimsg.AssetTunnl_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id5" value="#{cadAssetTunnlBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetTunnl_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc5" value="#{cadAssetTunnlBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetTunnl_ocdc_tt_occ_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_arrendado" for="asset_in_arrendado"  value="#{iimsg.AssetTunnl_asset_in_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_arrendado_bol" value="#{cadAssetTunnlBean.asset_in_arrendado}"/>
<h:selectBooleanCheckbox id="asset_in_arrendado" tabindex="48"  value="#{cadAssetTunnlBean.asset_in_arrendado_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_arrendado_bol');"/>
<ps:psGraphicImage id="asset_in_arrendado_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_in_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_devolucao" for="asset_cd_termo_devolucao"  value="#{iimsg.AssetTunnl_asset_cd_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_devolucao" tabindex="49"  value="#{cadAssetTunnlBean.asset_cd_termo_devolucao}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(3);bv('','asset_cd_termo_devolucao','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_devolucao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_devolucao_ckb" value="#{cadAssetTunnlBean.asset_cd_termo_devolucao_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_termo_devolucao_nap" for="asset_cd_termo_devolucao_nap"  value="#{iimsg.AssetTunnl_asset_cd_termo_devolucao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_devolucao_nap" value="#{cadAssetTunnlBean.asset_cd_termo_devolucao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);bdcd('','asset_cd_termo_devolucao_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="50" />
<h:commandButton id="asset_cd_termo_devolucao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_devolucao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_devolucao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_termo_devolucao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_devolucao" for="asset_dt_termo_devolucao"  value="#{iimsg.AssetTunnl_asset_dt_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_devolucao_str" tabindex="51"  value="#{cadAssetTunnlBean.asset_dt_termo_devolucao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_devolucao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_devolucao_str', 'cadForm:asset_dt_termo_devolucao_nap', 8 , event);" onchange="clFields(5);validaDatas2(this);bv('','asset_dt_termo_devolucao_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_devolucao_str', 'asset_dt_termo_devolucaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_termo_devolucao_vc}" styleClass="btp"/>
<div id="asset_dt_termo_devolucaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_dt_termo_devolucao_nap" for="asset_dt_termo_devolucao_nap"  value="#{iimsg.AssetTunnl_asset_dt_termo_devolucao_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_termo_devolucao_nap" value="#{cadAssetTunnlBean.asset_dt_termo_devolucao_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);bdcd('','asset_dt_termo_devolucao_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="52" />
<h:commandButton id="asset_dt_termo_devolucao_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_termo_devolucao_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_termo_devolucao_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_dt_termo_devolucao_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_entrega" for="asset_cd_termo_entrega"  value="#{iimsg.AssetTunnl_asset_cd_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_entrega" tabindex="53"  value="#{cadAssetTunnlBean.asset_cd_termo_entrega}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(7);bv('','asset_cd_termo_entrega','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_entrega_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_entrega_ckb" value="#{cadAssetTunnlBean.asset_cd_termo_entrega_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_termo_entrega_nap" for="asset_cd_termo_entrega_nap"  value="#{iimsg.AssetTunnl_asset_cd_termo_entrega_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_entrega_nap" value="#{cadAssetTunnlBean.asset_cd_termo_entrega_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);bdcd('','asset_cd_termo_entrega_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="54" />
<h:commandButton id="asset_cd_termo_entrega_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_entrega_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_entrega_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_termo_entrega_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_entrega" for="asset_dt_termo_entrega"  value="#{iimsg.AssetTunnl_asset_dt_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_entrega_str" tabindex="55"  value="#{cadAssetTunnlBean.asset_dt_termo_entrega_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_entrega_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_entrega_str', 'cadForm:asset_in_own', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_entrega_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_entrega_str', 'asset_dt_termo_entregaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_entrega_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_termo_entrega_vc}" styleClass="btp"/>
<div id="asset_dt_termo_entregaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_own" for="asset_in_own"  value="#{iimsg.AssetTunnl_asset_in_own_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="6"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_own_bol" value="#{cadAssetTunnlBean.asset_in_own}"/>
<h:selectBooleanCheckbox id="asset_in_own" tabindex="56"  value="#{cadAssetTunnlBean.asset_in_own_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_own_bol');"/>
<ps:psGraphicImage id="asset_in_own_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_in_own_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tombamento" for="asset_tp_tombamento"  value="#{iimsg.AssetTunnl_asset_tp_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tombamento" value="#{cadAssetTunnlBean.asset_tp_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tombamento','5','TOMTP',this.value);;" size="7" maxlength="5" tabindex="57" />
<h:commandButton id="asset_tp_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOMTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tombamento_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_tp_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_tp_tombamento_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tombamento" for="asset_cd_tombamento"  value="#{iimsg.AssetTunnl_asset_cd_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_tombamento" tabindex="58"  value="#{cadAssetTunnlBean.asset_cd_tombamento}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tombamento','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_tombamento_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_tombamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_tombamento_ckb" value="#{cadAssetTunnlBean.asset_cd_tombamento_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_tombamento" for="asset_dt_tombamento"  value="#{iimsg.AssetTunnl_asset_dt_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_tombamento_str" tabindex="59"  value="#{cadAssetTunnlBean.asset_dt_tombamento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_tombamento_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_tombamento_str', 'cadForm:asset_cd_leg_amb_cfedlab', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_tombamento_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_tombamento_str', 'asset_dt_tombamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_tombamento_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_tombamento_vc}" styleClass="btp"/>
<div id="asset_dt_tombamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_leg_amb_cfedlab" for="asset_cd_leg_amb_cfedlab"  value="#{iimsg.AssetTunnl_asset_cd_leg_amb_cfedlab_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_leg_amb_cfedlab" value="#{cadAssetTunnlBean.asset_cd_leg_amb_cfedlab}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_leg_amb_cfedlab','5','RSTAB',this.value);;" size="5" maxlength="3" tabindex="60" />
<h:commandButton id="asset_cd_leg_amb_cfedlab_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RSTAB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_leg_amb_cfedlab_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_leg_amb_cfedlab_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_leg_amb_cfedlab_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_leg_amb_cfedlab_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_rst_amb" for="asset_cd_doc_rst_amb"  value="#{iimsg.AssetTunnl_asset_cd_doc_rst_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_cd_doc_rst_amb" tabindex="61"  value="#{cadAssetTunnlBean.asset_cd_doc_rst_amb}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_doc_rst_amb','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_rst_amb_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_doc_rst_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_receb" for="asset_cd_termo_receb"  value="#{iimsg.AssetTunnl_asset_cd_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_receb" tabindex="62"  value="#{cadAssetTunnlBean.asset_cd_termo_receb}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(9);bv('','asset_cd_termo_receb','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_receb_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_receb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_termo_receb_nap" for="asset_cd_termo_receb_nap"  value="#{iimsg.AssetTunnl_asset_cd_termo_receb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_termo_receb_nap" value="#{cadAssetTunnlBean.asset_cd_termo_receb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);cleSubSel_uv('asset_cd_termo_receb');bdcd('','asset_cd_termo_receb_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="63" />
<h:commandButton id="asset_cd_termo_receb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_termo_receb_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_termo_receb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_termo_receb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_termo_receb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_receb" for="asset_dt_termo_receb"  value="#{iimsg.AssetTunnl_asset_dt_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_termo_receb_str" tabindex="64"  value="#{cadAssetTunnlBean.asset_dt_termo_receb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_receb_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_receb_str', 'cadForm:asset_dt_termo_receb_nap', 8 , event);" onchange="clFields(11);validaDatas2(this);bv('','asset_dt_termo_receb_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_receb_str', 'asset_dt_termo_recebCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_receb_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_termo_receb_vc}" styleClass="btp"/>
<div id="asset_dt_termo_recebCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_dt_termo_receb_nap" for="asset_dt_termo_receb_nap"  value="#{iimsg.AssetTunnl_asset_dt_termo_receb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_termo_receb_nap" value="#{cadAssetTunnlBean.asset_dt_termo_receb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('asset_dt_termo_receb_str');bdcd('','asset_dt_termo_receb_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="65" />
<h:commandButton id="asset_dt_termo_receb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_termo_receb_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_termo_receb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_termo_receb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_dt_termo_receb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_doc_receb_prop" for="asset_ds_doc_receb_prop"  value="#{iimsg.AssetTunnl_asset_ds_doc_receb_prop_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_ds_doc_receb_prop" tabindex="66"  value="#{cadAssetTunnlBean.asset_ds_doc_receb_prop}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="clFields(13);bv('','asset_ds_doc_receb_prop','5',this.value);"/>
<ps:psGraphicImage id="asset_ds_doc_receb_prop_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_ds_doc_receb_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ds_doc_receb_prop_nap" for="asset_ds_doc_receb_prop_nap"  value="#{iimsg.AssetTunnl_asset_ds_doc_receb_prop_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ds_doc_receb_prop_nap" value="#{cadAssetTunnlBean.asset_ds_doc_receb_prop_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);cleSubSel_uv('asset_ds_doc_receb_prop');bdcd('','asset_ds_doc_receb_prop_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="67" />
<h:commandButton id="asset_ds_doc_receb_prop_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ds_doc_receb_prop_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_ds_doc_receb_prop_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ds_doc_receb_prop_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_ds_doc_receb_prop_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_vinc" for="asset_cd_doc_sol_vinc"  value="#{iimsg.AssetTunnl_asset_cd_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_doc_sol_vinc" tabindex="68"  value="#{cadAssetTunnlBean.asset_cd_doc_sol_vinc}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(15);bv('','asset_cd_doc_sol_vinc','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_doc_sol_vinc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_doc_sol_vinc_nap" for="asset_cd_doc_sol_vinc_nap"  value="#{iimsg.AssetTunnl_asset_cd_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_doc_sol_vinc_nap" value="#{cadAssetTunnlBean.asset_cd_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(16);cleSubSel_uv('asset_cd_doc_sol_vinc');bdcd('','asset_cd_doc_sol_vinc_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="69" />
<h:commandButton id="asset_cd_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_vinc" for="asset_dt_doc_sol_vinc"  value="#{iimsg.AssetTunnl_asset_dt_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_doc_sol_vinc_str" tabindex="70"  value="#{cadAssetTunnlBean.asset_dt_doc_sol_vinc_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_vinc_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_vinc_str', 'cadForm:asset_dt_doc_sol_vinc_nap', 8 , event);" onchange="clFields(17);validaDatas2(this);bv('','asset_dt_doc_sol_vinc_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_vinc_str', 'asset_dt_doc_sol_vincCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_doc_sol_vinc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_vincCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_dt_doc_sol_vinc_nap" for="asset_dt_doc_sol_vinc_nap"  value="#{iimsg.AssetTunnl_asset_dt_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_doc_sol_vinc_nap" value="#{cadAssetTunnlBean.asset_dt_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(18);cleSubSel_uv('asset_dt_doc_sol_vinc_str');bdcd('','asset_dt_doc_sol_vinc_nap','5','TPNAP',this.value);;" size="14" maxlength="12" tabindex="71" />
<h:commandButton id="asset_dt_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_dt_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_dt_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_existencia" for="asset_in_existencia"  value="#{iimsg.AssetTunnl_asset_in_existencia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_existencia" value="#{cadAssetTunnlBean.asset_in_existencia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_existencia','5','SNNAP',this.value);;" size="5" maxlength="3" tabindex="72" />
<h:commandButton id="asset_in_existencia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_existencia_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_in_existencia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_existencia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_in_existencia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetTunnl_comp_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_proprietaria" for="asset_cd_proprietaria"  value="#{iimsg.AssetTunnl_asset_cd_proprietaria_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_proprietaria" value="#{cadAssetTunnlBean.asset_cd_proprietaria}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_proprietaria','5','COMPN',this.value);;" size="10" maxlength="8" tabindex="73" />
<h:commandButton id="asset_cd_proprietaria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_proprietaria_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_proprietaria_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_proprietaria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_proprietaria_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_detentora" for="asset_cd_detentora"  value="#{iimsg.AssetTunnl_asset_cd_detentora_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_detentora" value="#{cadAssetTunnlBean.asset_cd_detentora}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_detentora','5','COMPN',this.value);;" size="12" maxlength="10" tabindex="74" />
<h:commandButton id="asset_cd_detentora_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_detentora_vc" flagType="val" flag="#{cadAssetTunnlBean.asset_cd_detentora_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_detentora_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetTunnlBean.asset_cd_detentora_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
