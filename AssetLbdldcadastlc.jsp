<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastlc" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastlc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastlc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetLbdld_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_corredor" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_corredor','2','CDCRR',this.value);;" size="12" maxlength="10" tabindex="31" />
<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_corredor_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_corredor_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_corredor_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetLbdld_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_zona_cflczon','2','LOCZO',this.value);;" size="7" maxlength="5" tabindex="32" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetLbdld_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_ltde" tabindex="33"  value="#{cadAssetLbdldBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_ltde','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_ltde_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_ltde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetLbdld_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_lgtd" tabindex="34"  value="#{cadAssetLbdldBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_lgtd','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_lgtd_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_lgtd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetLbdld_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_ini" tabindex="35"  value="#{cadAssetLbdldBean.asset_km_ini_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_km_ini','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_ini_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetLbdld_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="36"  value="#{cadAssetLbdldBean.asset_km_fim_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_km_fim','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_fim_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetLbdld_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc','2','RESLC',this.value);;" size="7" maxlength="5" tabindex="37" />
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetLbdld_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfresid" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfresid','2','RESID',this.value);;" size="7" maxlength="5" tabindex="38" />
<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfresid_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
