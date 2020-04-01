<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastev" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastev" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastev');">
<ps:psGraphicImage id="iMessageastev" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id7" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id7" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc7" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_eval_vl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_imovel" for="asset_vl_imovel"  value="#{iimsg.AssetSupersv_asset_vl_imovel_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_imovel" tabindex="217"  value="#{cadAssetSupersvBean.asset_vl_imovel_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_imovel','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_imovel_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_imovel_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_edificacao" for="asset_vl_edificacao"  value="#{iimsg.AssetSupersv_asset_vl_edificacao_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_edificacao" tabindex="218"  value="#{cadAssetSupersvBean.asset_vl_edificacao_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_edificacao','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_edificacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_edificacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_terreno" for="asset_vl_terreno"  value="#{iimsg.AssetSupersv_asset_vl_terreno_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_terreno" tabindex="219"  value="#{cadAssetSupersvBean.asset_vl_terreno_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_terreno','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_terreno_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_terreno_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_bem_patrimonial" for="asset_vl_bem_patrimonial"  value="#{iimsg.AssetSupersv_asset_vl_bem_patrimonial_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_bem_patrimonial" tabindex="220"  value="#{cadAssetSupersvBean.asset_vl_bem_patrimonial_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_bem_patrimonial','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_bem_patrimonial_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_bem_patrimonial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_laudo_avaliacao" for="asset_dt_laudo_avaliacao"  value="#{iimsg.AssetSupersv_asset_dt_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_laudo_avaliacao" tabindex="221"  value="#{cadAssetSupersvBean.asset_dt_laudo_avaliacao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_laudo_avaliacao', event);" onkeyup="SaltaCampo('cadForm:asset_dt_laudo_avaliacao', 'cadForm:asset_vl_arrendado', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_laudo_avaliacao','7',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_laudo_avaliacao', 'asset_dt_laudo_avaliacaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_laudo_avaliacao_vc}" styleClass="btp"/>
<div id="asset_dt_laudo_avaliacaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_arrendado" for="asset_vl_arrendado"  value="#{iimsg.AssetSupersv_asset_vl_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_arrendado" tabindex="222"  value="#{cadAssetSupersvBean.asset_vl_arrendado_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_arrendado','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_arrendado_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_total" for="asset_vl_total"  value="#{iimsg.AssetSupersv_asset_vl_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_total" tabindex="223"  value="#{cadAssetSupersvBean.asset_vl_total_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_total','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_total_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_investimento" for="asset_vl_investimento"  value="#{iimsg.AssetSupersv_asset_vl_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_investimento" tabindex="224"  value="#{cadAssetSupersvBean.asset_vl_investimento_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_investimento','7',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_investimento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_investimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_investimento" for="asset_tp_investimento"  value="#{iimsg.AssetSupersv_asset_tp_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_investimento" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_investimento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_investimento','7','IVPSN',this.value);;" size="7" maxlength="5" tabindex="225" />
<h:commandButton id="asset_tp_investimento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'IVPSN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_investimento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_investimento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_investimento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_investimento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_investimento" for="asset_dt_investimento"  value="#{iimsg.AssetSupersv_asset_dt_investimento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_investimento" tabindex="226"  value="#{cadAssetSupersvBean.asset_dt_investimento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_investimento', event);" onkeyup="SaltaCampo('cadForm:asset_dt_investimento', 'cadForm:eval_ap_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_investimento','7',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_investimento', 'asset_dt_investimentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_investimento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_investimento_vc}" styleClass="btp"/>
<div id="asset_dt_investimentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_eval_ap_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_laudo_avaliacao" for="asset_ds_laudo_avaliacao"  value="#{iimsg.AssetSupersv_asset_ds_laudo_avaliacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_ds_laudo_avaliacao" tabindex="227"  value="#{cadAssetSupersvBean.asset_ds_laudo_avaliacao}" size="102" maxlength="100"  styleClass="tbx" onchange="bv('','asset_ds_laudo_avaliacao','7',this.value);"/>
<ps:psGraphicImage id="asset_ds_laudo_avaliacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_laudo_avaliacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_finalidade_laudo" for="asset_ds_finalidade_laudo"  value="#{iimsg.AssetSupersv_asset_ds_finalidade_laudo_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_ds_finalidade_laudo" tabindex="228"  value="#{cadAssetSupersvBean.asset_ds_finalidade_laudo}" size="102" maxlength="100"  styleClass="tbx" onchange="bv('','asset_ds_finalidade_laudo','7',this.value);"/>
<ps:psGraphicImage id="asset_ds_finalidade_laudo_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_finalidade_laudo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
