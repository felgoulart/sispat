<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastev" rendered="#{cadAssetViadtBean.canUpdate}" value="#{cadAssetViadtBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastev" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetViadtBean.canUpdate}" action="#{cadAssetViadtBean.doValidate}" onmousedown="msgw('aMessageastev');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id6" >
<h:outputText styleClass="tip" value="#{iimsg.AssetViadt_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id6" value="#{cadAssetViadtBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetViadt_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc6" value="#{cadAssetViadtBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetViadt_eval_vl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_arrendado" for="asset_vl_arrendado"  value="#{iimsg.AssetViadt_asset_vl_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="450" class="pr5"> <h:inputText id="asset_vl_arrendado" tabindex="66"  value="#{cadAssetViadtBean.asset_vl_arrendado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_arrendado','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_arrendado_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_investimento" for="asset_vl_investimento"  value="#{iimsg.AssetViadt_asset_vl_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="450" class="pr5"> <h:inputText id="asset_vl_investimento" tabindex="67"  value="#{cadAssetViadtBean.asset_vl_investimento_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_investimento','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_investimento_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_investimento" for="asset_tp_investimento"  value="#{iimsg.AssetViadt_asset_tp_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_investimento" value="#{cadAssetViadtBean.asset_tp_investimento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_investimento','6','IVPSN',this.value);;" size="7" maxlength="5" tabindex="68" />
<h:commandButton id="asset_tp_investimento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'IVPSN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_investimento_vc" flagType="val" flag="#{cadAssetViadtBean.asset_tp_investimento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_investimento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetViadtBean.asset_tp_investimento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_investimento" for="asset_dt_investimento"  value="#{iimsg.AssetViadt_asset_dt_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_investimento_str" tabindex="69"  value="#{cadAssetViadtBean.asset_dt_investimento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_investimento_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_investimento_str', 'cadForm:asset_vl_total', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_investimento_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_investimento_str', 'asset_dt_investimentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_investimento_vc" flagType="val" flag="#{cadAssetViadtBean.asset_dt_investimento_vc}" styleClass="btp"/>
<div id="asset_dt_investimentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_total" for="asset_vl_total"  value="#{iimsg.AssetViadt_asset_vl_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_total" tabindex="70"  value="#{cadAssetViadtBean.asset_vl_total_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_total','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_total_vc" flagType="val" flag="#{cadAssetViadtBean.asset_vl_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_laudo_avaliacao" for="asset_dt_laudo_avaliacao"  value="#{iimsg.AssetViadt_asset_dt_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_laudo_avaliacao_str" tabindex="71"  value="#{cadAssetViadtBean.asset_dt_laudo_avaliacao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_laudo_avaliacao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_laudo_avaliacao_str', 'cadForm:eval_ap_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_laudo_avaliacao_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_laudo_avaliacao_str', 'asset_dt_laudo_avaliacaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetViadtBean.asset_dt_laudo_avaliacao_vc}" styleClass="btp"/>
<div id="asset_dt_laudo_avaliacaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetViadt_eval_ap_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_laudo_avaliacao" for="asset_ds_laudo_avaliacao"  value="#{iimsg.AssetViadt_asset_ds_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="asset_ds_laudo_avaliacao" tabindex="72"  value="#{cadAssetViadtBean.asset_ds_laudo_avaliacao}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_laudo_avaliacao','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetViadtBean.asset_ds_laudo_avaliacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_finalidade_laudo" for="asset_ds_finalidade_laudo"  value="#{iimsg.AssetViadt_asset_ds_finalidade_laudo_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="asset_ds_finalidade_laudo" tabindex="73"  value="#{cadAssetViadtBean.asset_ds_finalidade_laudo}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_finalidade_laudo','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_finalidade_laudo_vc" flagType="val" flag="#{cadAssetViadtBean.asset_ds_finalidade_laudo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
