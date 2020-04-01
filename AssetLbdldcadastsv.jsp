<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastsv" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastsv" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastsv');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id6" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id6" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc6" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_cong_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetLbdld_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_geral" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_geral','6','CONVE',this.value);;" size="5" maxlength="3" tabindex="92" />
<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_geral_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_geral_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_geral_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_manut" for="asset_in_manut"  value="#{iimsg.AssetLbdld_asset_in_manut_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_manut_bol" value="#{cadAssetLbdldBean.asset_in_manut}"/>
<h:selectBooleanCheckbox id="asset_in_manut" tabindex="93"  value="#{cadAssetLbdldBean.asset_in_manut_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_manut_bol');"/>
<ps:psGraphicImage id="asset_in_manut_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_manut_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_invasao" for="asset_st_invasao"  value="#{iimsg.AssetLbdld_asset_st_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_invasao_bol" value="#{cadAssetLbdldBean.asset_st_invasao}"/>
<h:selectBooleanCheckbox id="asset_st_invasao" tabindex="94"  value="#{cadAssetLbdldBean.asset_st_invasao_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_invasao_bol');"/>
<ps:psGraphicImage id="asset_st_invasao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_invasao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_limpeza" for="asset_st_limpeza"  value="#{iimsg.AssetLbdld_asset_st_limpeza_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_limpeza_bol" value="#{cadAssetLbdldBean.asset_st_limpeza}"/>
<h:selectBooleanCheckbox id="asset_st_limpeza" tabindex="95"  value="#{cadAssetLbdldBean.asset_st_limpeza_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_limpeza_bol');"/>
<ps:psGraphicImage id="asset_st_limpeza_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_limpeza_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_seguranca" for="asset_st_seguranca"  value="#{iimsg.AssetLbdld_asset_st_seguranca_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_seguranca_bol" value="#{cadAssetLbdldBean.asset_st_seguranca}"/>
<h:selectBooleanCheckbox id="asset_st_seguranca" tabindex="96"  value="#{cadAssetLbdldBean.asset_st_seguranca_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_seguranca_bol');"/>
<ps:psGraphicImage id="asset_st_seguranca_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_seguranca_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
