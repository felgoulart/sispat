<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetSidngBean.canUpdate}" value="#{cadAssetSidngBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastoc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSidngBean.canUpdate}" action="#{cadAssetSidngBean.doValidate}" onmousedown="msgw('aMessageastoc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id5" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSidng_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id5" value="#{cadAssetSidngBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSidng_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc5" value="#{cadAssetSidngBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSidng_ocdc_tt_doc_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_arrendado" for="asset_in_arrendado"  value="#{iimsg.AssetSidng_asset_in_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_arrendado_bol" value="#{cadAssetSidngBean.asset_in_arrendado}"/>
<h:selectBooleanCheckbox id="asset_in_arrendado" tabindex="53"  value="#{cadAssetSidngBean.asset_in_arrendado_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_arrendado_bol');"/>
<ps:psGraphicImage id="asset_in_arrendado_vc" flagType="val" flag="#{cadAssetSidngBean.asset_in_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_devolucao" for="asset_cd_termo_devolucao"  value="#{iimsg.AssetSidng_asset_cd_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_devolucao" tabindex="54"  value="#{cadAssetSidngBean.asset_cd_termo_devolucao}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_devolucao','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_termo_devolucao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_devolucao_ckb" value="#{cadAssetSidngBean.asset_cd_termo_devolucao_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_devolucao" for="asset_dt_termo_devolucao"  value="#{iimsg.AssetSidng_asset_dt_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_devolucao_str" tabindex="55"  value="#{cadAssetSidngBean.asset_dt_termo_devolucao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_devolucao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_devolucao_str', 'cadForm:asset_cd_termo_entrega', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_devolucao_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_devolucao_str', 'asset_dt_termo_devolucaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_vc" flagType="val" flag="#{cadAssetSidngBean.asset_dt_termo_devolucao_vc}" styleClass="btp"/>
<div id="asset_dt_termo_devolucaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_entrega" for="asset_cd_termo_entrega"  value="#{iimsg.AssetSidng_asset_cd_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_entrega" tabindex="56"  value="#{cadAssetSidngBean.asset_cd_termo_entrega}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_entrega','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_termo_entrega_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_entrega_ckb" value="#{cadAssetSidngBean.asset_cd_termo_entrega_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_entrega" for="asset_dt_termo_entrega"  value="#{iimsg.AssetSidng_asset_dt_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_entrega_str" tabindex="57"  value="#{cadAssetSidngBean.asset_dt_termo_entrega_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_entrega_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_entrega_str', 'cadForm:asset_in_own', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_entrega_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_entrega_str', 'asset_dt_termo_entregaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_entrega_vc" flagType="val" flag="#{cadAssetSidngBean.asset_dt_termo_entrega_vc}" styleClass="btp"/>
<div id="asset_dt_termo_entregaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_own" for="asset_in_own"  value="#{iimsg.AssetSidng_asset_in_own_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_own_bol" value="#{cadAssetSidngBean.asset_in_own}"/>
<h:selectBooleanCheckbox id="asset_in_own" tabindex="58"  value="#{cadAssetSidngBean.asset_in_own_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_own_bol');"/>
<ps:psGraphicImage id="asset_in_own_vc" flagType="val" flag="#{cadAssetSidngBean.asset_in_own_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_receb" for="asset_cd_termo_receb"  value="#{iimsg.AssetSidng_asset_cd_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_receb" tabindex="59"  value="#{cadAssetSidngBean.asset_cd_termo_receb}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_receb','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_receb_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_termo_receb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_receb" for="asset_dt_termo_receb"  value="#{iimsg.AssetSidng_asset_dt_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_receb_str" tabindex="60"  value="#{cadAssetSidngBean.asset_dt_termo_receb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_receb_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_receb_str', 'cadForm:asset_tp_tombamento', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_receb_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_receb_str', 'asset_dt_termo_recebCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_receb_vc" flagType="val" flag="#{cadAssetSidngBean.asset_dt_termo_receb_vc}" styleClass="btp"/>
<div id="asset_dt_termo_recebCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tombamento" for="asset_tp_tombamento"  value="#{iimsg.AssetSidng_asset_tp_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tombamento" value="#{cadAssetSidngBean.asset_tp_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tombamento','5','TOMTP',this.value);;" size="7" maxlength="5" tabindex="61" />
<h:commandButton id="asset_tp_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOMTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tombamento_vc" flagType="val" flag="#{cadAssetSidngBean.asset_tp_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_tp_tombamento_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tombamento" for="asset_cd_tombamento"  value="#{iimsg.AssetSidng_asset_cd_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_tombamento" tabindex="62"  value="#{cadAssetSidngBean.asset_cd_tombamento}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tombamento','5',this.value);"/>
<ps:psGraphicImage id="asset_cd_tombamento_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_tombamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_tombamento_ckb" value="#{cadAssetSidngBean.asset_cd_tombamento_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_tombamento" for="asset_dt_tombamento"  value="#{iimsg.AssetSidng_asset_dt_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_tombamento_str" tabindex="63"  value="#{cadAssetSidngBean.asset_dt_tombamento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_tombamento_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_tombamento_str', 'cadForm:comp_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_tombamento_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_tombamento_str', 'asset_dt_tombamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_tombamento_vc" flagType="val" flag="#{cadAssetSidngBean.asset_dt_tombamento_vc}" styleClass="btp"/>
<div id="asset_dt_tombamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSidng_comp_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_proprietaria" for="asset_cd_proprietaria"  value="#{iimsg.AssetSidng_asset_cd_proprietaria_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_proprietaria" value="#{cadAssetSidngBean.asset_cd_proprietaria}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_proprietaria','5','COMPN',this.value);;" size="10" maxlength="8" tabindex="64" />
<h:commandButton id="asset_cd_proprietaria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_proprietaria_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_proprietaria_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_proprietaria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_cd_proprietaria_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_detentora" for="asset_cd_detentora"  value="#{iimsg.AssetSidng_asset_cd_detentora_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_detentora" value="#{cadAssetSidngBean.asset_cd_detentora}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_detentora','5','COMPN',this.value);;" size="12" maxlength="10" tabindex="65" />
<h:commandButton id="asset_cd_detentora_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_detentora_vc" flagType="val" flag="#{cadAssetSidngBean.asset_cd_detentora_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_detentora_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSidngBean.asset_cd_detentora_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
