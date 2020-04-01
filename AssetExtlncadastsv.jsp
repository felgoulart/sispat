<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastsv" rendered="#{cadAssetExtlnBean.canUpdate}" value="#{cadAssetExtlnBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastsv" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetExtlnBean.canUpdate}" action="#{cadAssetExtlnBean.doValidate}" onmousedown="msgw('aMessageastsv');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetExtln_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetExtlnBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetExtln_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetExtlnBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetExtln_cond_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_trilho" for="asset_st_trilho"  value="#{iimsg.AssetExtln_asset_st_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_trilho" value="#{cadAssetExtlnBean.asset_st_trilho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_trilho','4','CONVE',this.value);;" size="5" maxlength="3" tabindex="53" />
<h:commandButton id="asset_st_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_trilho_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetExtlnBean.asset_st_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_dormente" for="asset_st_dormente"  value="#{iimsg.AssetExtln_asset_st_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_dormente" value="#{cadAssetExtlnBean.asset_st_dormente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_dormente','4','CONVE',this.value);;" size="5" maxlength="3" tabindex="54" />
<h:commandButton id="asset_st_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_dormente_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetExtlnBean.asset_st_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_lastro" for="asset_st_lastro"  value="#{iimsg.AssetExtln_asset_st_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_lastro" value="#{cadAssetExtlnBean.asset_st_lastro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_lastro','4','CONVE',this.value);;" size="5" maxlength="3" tabindex="55" />
<h:commandButton id="asset_st_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_lastro_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetExtlnBean.asset_st_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_modf_lastro" for="asset_in_modf_lastro"  value="#{iimsg.AssetExtln_asset_in_modf_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_modf_lastro_bol" value="#{cadAssetExtlnBean.asset_in_modf_lastro}"/>
<h:selectBooleanCheckbox id="asset_in_modf_lastro" tabindex="56"  value="#{cadAssetExtlnBean.asset_in_modf_lastro_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_modf_lastro_bol');"/>
<ps:psGraphicImage id="asset_in_modf_lastro_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_modf_lastro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_modf_dormt" for="asset_in_modf_dormt"  value="#{iimsg.AssetExtln_asset_in_modf_dormt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_modf_dormt_bol" value="#{cadAssetExtlnBean.asset_in_modf_dormt}"/>
<h:selectBooleanCheckbox id="asset_in_modf_dormt" tabindex="57"  value="#{cadAssetExtlnBean.asset_in_modf_dormt_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_modf_dormt_bol');"/>
<ps:psGraphicImage id="asset_in_modf_dormt_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_modf_dormt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_tax_apl_dormentacao" for="asset_ds_tax_apl_dormentacao"  value="#{iimsg.AssetExtln_asset_ds_tax_apl_dormentacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="asset_ds_tax_apl_dormentacao" tabindex="58"  value="#{cadAssetExtlnBean.asset_ds_tax_apl_dormentacao}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_tax_apl_dormentacao','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_tax_apl_dormentacao_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_ds_tax_apl_dormentacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_modf_trilho" for="asset_in_modf_trilho"  value="#{iimsg.AssetExtln_asset_in_modf_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_modf_trilho_bol" value="#{cadAssetExtlnBean.asset_in_modf_trilho}"/>
<h:selectBooleanCheckbox id="asset_in_modf_trilho" tabindex="59"  value="#{cadAssetExtlnBean.asset_in_modf_trilho_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_modf_trilho_bol');"/>
<ps:psGraphicImage id="asset_in_modf_trilho_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_modf_trilho_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_modf_fixac" for="asset_in_modf_fixac"  value="#{iimsg.AssetExtln_asset_in_modf_fixac_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_modf_fixac_bol" value="#{cadAssetExtlnBean.asset_in_modf_fixac}"/>
<h:selectBooleanCheckbox id="asset_in_modf_fixac" tabindex="60"  value="#{cadAssetExtlnBean.asset_in_modf_fixac_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_modf_fixac_bol');"/>
<ps:psGraphicImage id="asset_in_modf_fixac_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_modf_fixac_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_existencia" for="asset_in_existencia"  value="#{iimsg.AssetExtln_asset_in_existencia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="200"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_existencia" value="#{cadAssetExtlnBean.asset_in_existencia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_existencia','4','SNNAP',this.value);;" size="5" maxlength="3" tabindex="61" />
<h:commandButton id="asset_in_existencia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_existencia_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_existencia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_existencia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetExtlnBean.asset_in_existencia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetExtln_cong_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetExtln_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_geral" value="#{cadAssetExtlnBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_geral','4','CONSG',this.value);;" size="5" maxlength="3" tabindex="62" />
<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_geral_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_geral_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetExtlnBean.asset_st_geral_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_manut" for="asset_in_manut"  value="#{iimsg.AssetExtln_asset_in_manut_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_manut_bol" value="#{cadAssetExtlnBean.asset_in_manut}"/>
<h:selectBooleanCheckbox id="asset_in_manut" tabindex="63"  value="#{cadAssetExtlnBean.asset_in_manut_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_manut_bol');"/>
<ps:psGraphicImage id="asset_in_manut_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_in_manut_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_limpeza" for="asset_st_limpeza"  value="#{iimsg.AssetExtln_asset_st_limpeza_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_limpeza_bol" value="#{cadAssetExtlnBean.asset_st_limpeza}"/>
<h:selectBooleanCheckbox id="asset_st_limpeza" tabindex="64"  value="#{cadAssetExtlnBean.asset_st_limpeza_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_limpeza_bol');"/>
<ps:psGraphicImage id="asset_st_limpeza_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_limpeza_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_seguranca" for="asset_st_seguranca"  value="#{iimsg.AssetExtln_asset_st_seguranca_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_seguranca_bol" value="#{cadAssetExtlnBean.asset_st_seguranca}"/>
<h:selectBooleanCheckbox id="asset_st_seguranca" tabindex="65"  value="#{cadAssetExtlnBean.asset_st_seguranca_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_seguranca_bol');"/>
<ps:psGraphicImage id="asset_st_seguranca_vc" flagType="val" flag="#{cadAssetExtlnBean.asset_st_seguranca_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
