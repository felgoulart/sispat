<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastsv" rendered="#{cadAssetBrdgeBean.canUpdate}" value="#{cadAssetBrdgeBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastsv" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetBrdgeBean.canUpdate}" action="#{cadAssetBrdgeBean.doValidate}" onmousedown="msgw('aMessageastsv');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetBrdge_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetBrdgeBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetBrdge_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetBrdgeBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetBrdge_cond_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_estrutura" for="asset_st_estrutura"  value="#{iimsg.AssetBrdge_asset_st_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_estrutura" value="#{cadAssetBrdgeBean.asset_st_estrutura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_estrutura','4','CONSV',this.value);;" size="5" maxlength="3" tabindex="67" />
<h:commandButton id="asset_st_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_estrutura_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_st_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_st_estrutura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetBrdge_cong_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetBrdge_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_geral" value="#{cadAssetBrdgeBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_geral','4','CONSG',this.value);;" size="5" maxlength="3" tabindex="68" />
<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_geral_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_st_geral_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBrdgeBean.asset_st_geral_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_manut" for="asset_in_manut"  value="#{iimsg.AssetBrdge_asset_in_manut_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_manut_bol" value="#{cadAssetBrdgeBean.asset_in_manut}"/>
<h:selectBooleanCheckbox id="asset_in_manut" tabindex="69"  value="#{cadAssetBrdgeBean.asset_in_manut_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_manut_bol');"/>
<ps:psGraphicImage id="asset_in_manut_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_in_manut_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_limpeza" for="asset_st_limpeza"  value="#{iimsg.AssetBrdge_asset_st_limpeza_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_limpeza_bol" value="#{cadAssetBrdgeBean.asset_st_limpeza}"/>
<h:selectBooleanCheckbox id="asset_st_limpeza" tabindex="70"  value="#{cadAssetBrdgeBean.asset_st_limpeza_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_limpeza_bol');"/>
<ps:psGraphicImage id="asset_st_limpeza_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_st_limpeza_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_seguranca" for="asset_st_seguranca"  value="#{iimsg.AssetBrdge_asset_st_seguranca_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_seguranca_bol" value="#{cadAssetBrdgeBean.asset_st_seguranca}"/>
<h:selectBooleanCheckbox id="asset_st_seguranca" tabindex="71"  value="#{cadAssetBrdgeBean.asset_st_seguranca_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_seguranca_bol');"/>
<ps:psGraphicImage id="asset_st_seguranca_vc" flagType="val" flag="#{cadAssetBrdgeBean.asset_st_seguranca_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
