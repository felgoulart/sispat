<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varandsc" rendered="#{cadAssetInvasBean.canUpdate}" value="#{cadAssetInvasBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageandsc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetInvasBean.canUpdate}" action="#{cadAssetInvasBean.doValidate}" onmousedown="msgw('aMessageandsc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetInvas_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetInvasBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetInvas_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetInvasBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_risco_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nv_risco" for="asset_nv_risco"  value="#{iimsg.AssetInvas_asset_nv_risco_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nv_risco" value="#{cadAssetInvasBean.asset_nv_risco}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_nv_risco','4','NVRSC',this.value);;" size="5" maxlength="3" tabindex="46" />
<h:commandButton id="asset_nv_risco_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NVRSC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nv_risco_vc" flagType="val" flag="#{cadAssetInvasBean.asset_nv_risco_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nv_risco_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_nv_risco_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_risco" for="asset_tp_risco"  value="#{iimsg.AssetInvas_asset_tp_risco_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_risco" value="#{cadAssetInvasBean.asset_tp_risco}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_risco','4','TPRSC',this.value);;" size="5" maxlength="3" tabindex="47" />
<h:commandButton id="asset_tp_risco_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPRSC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_risco_vc" flagType="val" flag="#{cadAssetInvasBean.asset_tp_risco_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_risco_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_risco_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id_pross" for="asset_id_pross"  value="#{iimsg.AssetInvas_asset_id_pross_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  colspan ="4"width="200" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id_pross" tabindex="-1"  onfocus="this.blur()" value="#{cadAssetInvasBean.asset_id_pross}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="27" maxlength="27" />
<%-- Avoid Fks that are recursive fks --%>
<%-- ak/fk else akhidden --%>
<h:commandLink id="asset_id_pross_desc" value="#{cadAssetInvasBean.asset_id_pross_desc}" styleClass="dsp" onmousedown="pwfk('prossivgencad', tran, this.id, 'no');"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_rsc_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ds_risco" tabindex="49"  value="#{cadAssetInvasBean.asset_ds_risco}"  cols="60" rows="4" styleClass="asset_ds_risco_rtfFontChoice" onchange="bv('','asset_ds_risco','4',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
