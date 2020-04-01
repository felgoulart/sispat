<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastlc" rendered="#{cadAssetVhwagBean.canUpdate}" value="#{cadAssetVhwagBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
</div>
		<h:commandButton id="aMessageastlc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetVhwagBean.canUpdate}" action="#{cadAssetVhwagBean.doValidate}" onmousedown="msgw('aMessageastlc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetVhwag_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetVhwagBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetVhwagBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhwag_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhwag_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_corredor" onclick="clf(this);" value="#{cadAssetVhwagBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','2','CDCRR',this.value);;" size="12" maxlength="10" tabindex="30" />
</div>
		<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_acesso_rodv" for="asset_tp_acesso_rodv"  value="#{iimsg.AssetVhwag_asset_tp_acesso_rodv_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acesso_rodv" onclick="clf(this);" value="#{cadAssetVhwagBean.asset_tp_acesso_rodv}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_acesso_rodv','2','TPPRP',this.value);;" size="5" maxlength="3" tabindex="31" />
</div>
		<h:commandButton id="asset_tp_acesso_rodv_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_acesso_rodv_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_tp_acesso_rodv_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetVhwag_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_ltde" tabindex="32"  value="#{cadAssetVhwagBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_ltde','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetVhwag_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_lgtd" tabindex="33"  value="#{cadAssetVhwagBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_lgtd','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
