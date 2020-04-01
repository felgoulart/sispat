<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastob" rendered="#{cadAssetExtlnBean.canUpdate}" value="#{cadAssetExtlnBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastob" rendered="#{cadAssetExtlnBean.canUpdate}" action="#{cadAssetExtlnBean.doValidate}" onmousedown="msgw('aMessageastob');">
<ps:psGraphicImage id="iMessageastob" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id7" >
<h:outputText styleClass="tip" value="#{iimsg.AssetExtln_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id7" value="#{cadAssetExtlnBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc7" value="#{cadAssetExtlnBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>  <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bb --%>
<h:outputText value="#{iimsg.AssetExtln_obsrv_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="66"  value="#{cadAssetExtlnBean.asset_ob}" cols="100" rows="8" styleClass="rtfFontChoice" onchange="bv('','asset_ob','7',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xx <last frame close> if no Frames--%>
