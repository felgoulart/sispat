<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastbp" rendered="#{cadAssetYrdldBean.canUpdate}" value="#{cadAssetYrdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastbp" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetYrdldBean.canUpdate}" action="#{cadAssetYrdldBean.doValidate}" onmousedown="msgw('aMessageastbp');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetYrdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetYrdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="2"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="2" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_asst_tt_ast_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_assentado" for="asset_ds_assentado"  value="#{iimsg.AssetYrdld_asset_ds_assentado_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_assentado" tabindex="62"  value="#{cadAssetYrdldBean.asset_ds_assentado}"  cols="70" rows="10" styleClass="asset_ds_assentado_" onchange="bv('','asset_ds_assentado','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_assentado_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_assentado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_proj_asso" for="asset_ds_proj_asso"  value="#{iimsg.AssetYrdld_asset_ds_proj_asso_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_proj_asso" tabindex="63"  value="#{cadAssetYrdldBean.asset_ds_proj_asso}"  cols="70" rows="10" styleClass="asset_ds_proj_asso_" onchange="bv('','asset_ds_proj_asso','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_proj_asso_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_proj_asso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_vinculado" for="asset_ds_vinculado"  value="#{iimsg.AssetYrdld_asset_ds_vinculado_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_vinculado" tabindex="64"  value="#{cadAssetYrdldBean.asset_ds_vinculado}"  cols="70" rows="10" styleClass="asset_ds_vinculado_" onchange="bv('','asset_ds_vinculado','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_vinculado_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_vinculado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
