<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastex" rendered="#{cadAssetSuperBean.canUpdate}" value="#{cadAssetSuperBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastex" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSuperBean.canUpdate}" action="#{cadAssetSuperBean.doValidate}" onmousedown="msgw('aMessageastex');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id8" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSuper_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id8" value="#{cadAssetSuperBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSuper_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc8" value="#{cadAssetSuperBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSuper_expt_ex_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_perito" for="asset_cd_perito"  value="#{iimsg.AssetSuper_asset_cd_perito_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_perito" tabindex="35"  value="#{cadAssetSuperBean.asset_cd_perito}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_perito','8',this.value);"/>
<ps:psGraphicImage id="asset_cd_perito_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_perito_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_auxiliar" for="asset_cd_auxiliar"  value="#{iimsg.AssetSuper_asset_cd_auxiliar_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_auxiliar" tabindex="36"  value="#{cadAssetSuperBean.asset_cd_auxiliar}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_auxiliar','8',this.value);"/>
<ps:psGraphicImage id="asset_cd_auxiliar_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_auxiliar_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSuper_expt_ip_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetSuper_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="37"  value="#{cadAssetSuperBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_nu_doc_inspecao', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','8',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_vistoria_vc" flagType="val" flag="#{cadAssetSuperBean.asset_dt_vistoria_vc}" styleClass="btp"/>
<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_doc_inspecao" for="asset_nu_doc_inspecao"  value="#{iimsg.AssetSuper_asset_nu_doc_inspecao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_doc_inspecao" tabindex="38"  value="#{cadAssetSuperBean.asset_nu_doc_inspecao}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_doc_inspecao','8',this.value);"/>
<ps:psGraphicImage id="asset_nu_doc_inspecao_vc" flagType="val" flag="#{cadAssetSuperBean.asset_nu_doc_inspecao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
