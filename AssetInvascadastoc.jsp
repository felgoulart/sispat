<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>

</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>

</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_ocupacao_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_ocupante" for="asset_nm_ocupante"  value="#{iimsg.AssetInvas_asset_nm_ocupante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_ocupante" tabindex="38"  value="#{cadAssetInvasBean.asset_nm_ocupante}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_ocupante','3',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_proprietario" for="asset_nm_proprietario"  value="#{iimsg.AssetInvas_asset_nm_proprietario_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_proprietario" tabindex="39"  value="#{cadAssetInvasBean.asset_nm_proprietario}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_proprietario','3',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_renda_familiar" for="asset_vl_renda_familiar"  value="#{iimsg.AssetInvas_asset_vl_renda_familiar_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_renda_familiar" tabindex="40"  value="#{cadAssetInvasBean.asset_vl_renda_familiar_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_renda_familiar','3',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_in_comprovante_resid" for="asset_in_comprovante_resid"  value="#{iimsg.AssetInvas_asset_in_comprovante_resid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_comprovante_resid_bol" value="#{cadAssetInvasBean.asset_in_comprovante_resid}"/>
<h:selectBooleanCheckbox id="asset_in_comprovante_resid" tabindex="41"  value="#{cadAssetInvasBean.asset_in_comprovante_resid_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_comprovante_resid_bol');"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_identificacao" for="asset_ds_identificacao"  value="#{iimsg.AssetInvas_asset_ds_identificacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_identificacao" tabindex="42"  value="#{cadAssetInvasBean.asset_ds_identificacao}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_identificacao','3',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_responsavel" for="asset_ds_responsavel"  value="#{iimsg.AssetInvas_asset_ds_responsavel_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_responsavel" tabindex="43"  value="#{cadAssetInvasBean.asset_ds_responsavel}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_responsavel','3',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_qt_ocupantes" for="asset_qt_ocupantes"  value="#{iimsg.AssetInvas_asset_qt_ocupantes_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="asset_qt_ocupantes" tabindex="44"  value="#{cadAssetInvasBean.asset_qt_ocupantes}"  styleClass="form-control form-control-sm" size="5" maxlength="3" onchange="bv('','asset_qt_ocupantes','3',valNum(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_ocup_atv_prof" for="asset_ds_ocup_atv_prof"  value="#{iimsg.AssetInvas_asset_ds_ocup_atv_prof_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_ocup_atv_prof" tabindex="45"  value="#{cadAssetInvasBean.asset_ds_ocup_atv_prof}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_ocup_atv_prof','3',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_obs_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="46"  value="#{cadAssetInvasBean.asset_ob}"  cols="60" rows="4" styleClass="form-control form-control-sm" onchange="bv('','asset_ob','3',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
