<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastsr" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastsr" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastsr');">
<ps:psGraphicImage id="iMessageastsr" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id5" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id5" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc5" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="8"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_serv_tt_psv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_agua_cfgenyn" for="asset_in_agua_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_agua_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_agua_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_agua_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_agua_cfgenyn" tabindex="167"  value="#{cadAssetSupersvBean.asset_in_agua_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_agua_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_agua_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_agua_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_luz_cfgenyn" for="asset_in_luz_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_luz_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_luz_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_luz_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_luz_cfgenyn" tabindex="168"  value="#{cadAssetSupersvBean.asset_in_luz_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_luz_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_luz_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_luz_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_telefonia" for="asset_in_telefonia"  value="#{iimsg.AssetSupersv_asset_in_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_telefonia_bol" value="#{cadAssetSupersvBean.asset_in_telefonia}"/>
<h:selectBooleanCheckbox id="asset_in_telefonia" tabindex="169"  value="#{cadAssetSupersvBean.asset_in_telefonia_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_telefonia_bol');"/>
<ps:psGraphicImage id="asset_in_telefonia_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_telefonia_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gas_cfgenyn" for="asset_in_gas_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_gas_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_gas_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_gas_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_gas_cfgenyn" tabindex="170"  value="#{cadAssetSupersvBean.asset_in_gas_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_gas_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_gas_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_gas_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lixo_cfgenyn" for="asset_in_lixo_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_lixo_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_lixo_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_lixo_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_lixo_cfgenyn" tabindex="171"  value="#{cadAssetSupersvBean.asset_in_lixo_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_lixo_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_lixo_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_lixo_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_rede_logica" for="asset_in_rede_logica"  value="#{iimsg.AssetSupersv_asset_in_rede_logica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_rede_logica_bol" value="#{cadAssetSupersvBean.asset_in_rede_logica}"/>
<h:selectBooleanCheckbox id="asset_in_rede_logica" tabindex="172"  value="#{cadAssetSupersvBean.asset_in_rede_logica_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_rede_logica_bol');"/>
<ps:psGraphicImage id="asset_in_rede_logica_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_rede_logica_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="8"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_serv_tt_csv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_transporte_cfgenyn" for="asset_in_transporte_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_transporte_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_transporte_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_transporte_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_transporte_cfgenyn" tabindex="173"  value="#{cadAssetSupersvBean.asset_in_transporte_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_transporte_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_transporte_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_transporte_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_comercio_cfgenyn" for="asset_in_comercio_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_comercio_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_comercio_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_comercio_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_comercio_cfgenyn" tabindex="174"  value="#{cadAssetSupersvBean.asset_in_comercio_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_comercio_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_comercio_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_comercio_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_escola_cfgenyn" for="asset_in_escola_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_escola_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_escola_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_escola_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_escola_cfgenyn" tabindex="175"  value="#{cadAssetSupersvBean.asset_in_escola_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_escola_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_escola_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_escola_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_seguranca_cfgenyn" for="asset_in_seguranca_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_seguranca_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_seguranca_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_seguranca_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_seguranca_cfgenyn" tabindex="176"  value="#{cadAssetSupersvBean.asset_in_seguranca_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_seguranca_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_seguranca_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_seguranca_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_hospital_cfgenyn" for="asset_in_hospital_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_hospital_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_hospital_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_hospital_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_hospital_cfgenyn" tabindex="177"  value="#{cadAssetSupersvBean.asset_in_hospital_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_hospital_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_hospital_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_hospital_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lazer_cfgenyn" for="asset_in_lazer_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_lazer_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_lazer_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_lazer_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_lazer_cfgenyn" tabindex="178"  value="#{cadAssetSupersvBean.asset_in_lazer_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_lazer_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_lazer_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_lazer_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="8"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_serv_tt_adj_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_residencial_cfgenyn" for="asset_in_residencial_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_residencial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_residencial_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_residencial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_residencial_cfgenyn" tabindex="179"  value="#{cadAssetSupersvBean.asset_in_residencial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_residencial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_residencial_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_residencial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_comercial_cfgenyn" for="asset_in_comercial_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_comercial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_comercial_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_comercial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_comercial_cfgenyn" tabindex="180"  value="#{cadAssetSupersvBean.asset_in_comercial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_comercial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_comercial_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_comercial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_industrial_cfgenyn" for="asset_in_industrial_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_industrial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_industrial_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_industrial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_industrial_cfgenyn" tabindex="181"  value="#{cadAssetSupersvBean.asset_in_industrial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_industrial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_industrial_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_industrial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_favela_cfgenyn" for="asset_in_favela_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_favela_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_favela_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_favela_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_favela_cfgenyn" tabindex="182"  value="#{cadAssetSupersvBean.asset_in_favela_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_favela_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_favela_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_favela_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_fazenda_cfgenyn" for="asset_in_fazenda_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_fazenda_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_fazenda_cfgenyn_bol" value="#{cadAssetSupersvBean.asset_in_fazenda_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_fazenda_cfgenyn" tabindex="183"  value="#{cadAssetSupersvBean.asset_in_fazenda_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_fazenda_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_fazenda_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_fazenda_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
