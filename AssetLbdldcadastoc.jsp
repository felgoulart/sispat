<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastoc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastoc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_ocupacao_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_ocupante" for="asset_nm_ocupante"  value="#{iimsg.AssetLbdld_asset_nm_ocupante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_ocupante" tabindex="35"  value="#{cadAssetLbdldBean.asset_nm_ocupante}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_ocupante','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_ocupante_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_ocupante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_proprietario" for="asset_nm_proprietario"  value="#{iimsg.AssetLbdld_asset_nm_proprietario_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_proprietario" tabindex="36"  value="#{cadAssetLbdldBean.asset_nm_proprietario}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_proprietario','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_proprietario_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_proprietario_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_renda_familiar" for="asset_vl_renda_familiar"  value="#{iimsg.AssetLbdld_asset_vl_renda_familiar_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_renda_familiar" tabindex="37"  value="#{cadAssetLbdldBean.asset_vl_renda_familiar_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_renda_familiar','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_renda_familiar_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_renda_familiar_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_comprovante_resid" for="asset_in_comprovante_resid"  value="#{iimsg.AssetLbdld_asset_in_comprovante_resid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_comprovante_resid_bol" value="#{cadAssetLbdldBean.asset_in_comprovante_resid}"/>
<h:selectBooleanCheckbox id="asset_in_comprovante_resid" tabindex="38"  value="#{cadAssetLbdldBean.asset_in_comprovante_resid_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_comprovante_resid_bol');"/>
<ps:psGraphicImage id="asset_in_comprovante_resid_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_comprovante_resid_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_identificacao" for="asset_ds_identificacao"  value="#{iimsg.AssetLbdld_asset_ds_identificacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_identificacao" tabindex="39"  value="#{cadAssetLbdldBean.asset_ds_identificacao}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_identificacao','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_identificacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_identificacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_responsavel" for="asset_ds_responsavel"  value="#{iimsg.AssetLbdld_asset_ds_responsavel_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_responsavel" tabindex="40"  value="#{cadAssetLbdldBean.asset_ds_responsavel}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_responsavel','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_responsavel_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_responsavel_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_ocupantes" for="asset_qt_ocupantes"  value="#{iimsg.AssetLbdld_asset_qt_ocupantes_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="asset_qt_ocupantes" tabindex="41"  value="#{cadAssetLbdldBean.asset_qt_ocupantes}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','asset_qt_ocupantes','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_ocupantes_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_qt_ocupantes_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_ocup_atv_prof" for="asset_ds_ocup_atv_prof"  value="#{iimsg.AssetLbdld_asset_ds_ocup_atv_prof_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_ocup_atv_prof" tabindex="42"  value="#{cadAssetLbdldBean.asset_ds_ocup_atv_prof}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_ocup_atv_prof','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_ocup_atv_prof_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_ocup_atv_prof_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_obs_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="43"  value="#{cadAssetLbdldBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','3',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
