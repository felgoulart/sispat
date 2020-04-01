<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastev" rendered="#{cadAssetLvlcrBean.canUpdate}" value="#{cadAssetLvlcrBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastev" rendered="#{cadAssetLvlcrBean.canUpdate}" action="#{cadAssetLvlcrBean.doValidate}" onmousedown="msgw('aMessageastev');">
<ps:psGraphicImage id="iMessageastev" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id6" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLvlcr_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id6" value="#{cadAssetLvlcrBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc6" value="#{cadAssetLvlcrBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetLvlcr_eval_vl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_imovel" for="asset_vl_imovel"  value="#{iimsg.AssetLvlcr_asset_vl_imovel_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_imovel" tabindex="97"  value="#{cadAssetLvlcrBean.asset_vl_imovel_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_imovel','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_imovel_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_vl_imovel_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_edificacao" for="asset_vl_edificacao"  value="#{iimsg.AssetLvlcr_asset_vl_edificacao_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_edificacao" tabindex="98"  value="#{cadAssetLvlcrBean.asset_vl_edificacao_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_edificacao','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_edificacao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_vl_edificacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_terreno" for="asset_vl_terreno"  value="#{iimsg.AssetLvlcr_asset_vl_terreno_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_terreno" tabindex="99"  value="#{cadAssetLvlcrBean.asset_vl_terreno_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_terreno','6',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_terreno_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_vl_terreno_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_laudo_avaliacao" for="asset_dt_laudo_avaliacao"  value="#{iimsg.AssetLvlcr_asset_dt_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_laudo_avaliacao" tabindex="100"  value="#{cadAssetLvlcrBean.asset_dt_laudo_avaliacao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_laudo_avaliacao', event);" onkeyup="SaltaCampo('cadForm:asset_dt_laudo_avaliacao', 'cadForm:eval_ap_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_laudo_avaliacao','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_laudo_avaliacao', 'asset_dt_laudo_avaliacaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_dt_laudo_avaliacao_vc}" styleClass="btp"/>
<div id="asset_dt_laudo_avaliacaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetLvlcr_eval_ap_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_laudo_avaliacao" for="asset_ds_laudo_avaliacao"  value="#{iimsg.AssetLvlcr_asset_ds_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="asset_ds_laudo_avaliacao" tabindex="101"  value="#{cadAssetLvlcrBean.asset_ds_laudo_avaliacao}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_laudo_avaliacao','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_ds_laudo_avaliacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_finalidade_laudo" for="asset_ds_finalidade_laudo"  value="#{iimsg.AssetLvlcr_asset_ds_finalidade_laudo_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="asset_ds_finalidade_laudo" tabindex="102"  value="#{cadAssetLvlcrBean.asset_ds_finalidade_laudo}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_finalidade_laudo','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_finalidade_laudo_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_ds_finalidade_laudo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
