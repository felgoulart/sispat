<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastbp" rendered="#{cadAssetSuperBean.canUpdate}" value="#{cadAssetSuperBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastbp" rendered="#{cadAssetSuperBean.canUpdate}" action="#{cadAssetSuperBean.doValidate}" onmousedown="msgw('aMessageastbp');">
<ps:psGraphicImage id="iMessageastbp" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSuper_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetSuperBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetSuperBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_assentado" for="asset_ds_assentado"  value="#{iimsg.AssetSuper_asset_ds_assentado_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_assentado" tabindex="155"  value="#{cadAssetSuperBean.asset_ds_assentado}" cols="70" rows="10" styleClass="asset_ds_assentado_" onchange="bv('','asset_ds_assentado','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_assentado_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ds_assentado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_proj_asso" for="asset_ds_proj_asso"  value="#{iimsg.AssetSuper_asset_ds_proj_asso_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_proj_asso" tabindex="156"  value="#{cadAssetSuperBean.asset_ds_proj_asso}" cols="70" rows="10" styleClass="asset_ds_proj_asso_" onchange="bv('','asset_ds_proj_asso','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_proj_asso_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ds_proj_asso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_vinculado" for="asset_ds_vinculado"  value="#{iimsg.AssetSuper_asset_ds_vinculado_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="asset_ds_vinculado" tabindex="157"  value="#{cadAssetSuperBean.asset_ds_vinculado}" cols="70" rows="10" styleClass="asset_ds_vinculado_" onchange="bv('','asset_ds_vinculado','4',this.value);"/>
<ps:psGraphicImage id="asset_ds_vinculado_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ds_vinculado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ctt" for="asset_tp_ctt"  value="#{iimsg.AssetSuper_asset_tp_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ctt" onclick="clf(this);" value="#{cadAssetSuperBean.asset_tp_ctt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_ctt','4','TICON',this.value);;" size="5" maxlength="3" tabindex="158" />
<h:commandButton id="asset_tp_ctt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TICON', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ctt_vc" flagType="val" flag="#{cadAssetSuperBean.asset_tp_ctt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ctt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_tp_ctt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt" for="asset_ex_ctt"  value="#{iimsg.AssetSuper_asset_ex_ctt_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ex_ctt" tabindex="159"  value="#{cadAssetSuperBean.asset_ex_ctt_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_ex_ctt','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ex_ctt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_ent" for="asset_ex_ctt_ent"  value="#{iimsg.AssetSuper_asset_ex_ctt_ent_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ex_ctt_ent" tabindex="160"  value="#{cadAssetSuperBean.asset_ex_ctt_ent_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_ex_ctt_ent','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_ent_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ex_ctt_ent_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_sai" for="asset_ex_ctt_sai"  value="#{iimsg.AssetSuper_asset_ex_ctt_sai_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ex_ctt_sai" tabindex="161"  value="#{cadAssetSuperBean.asset_ex_ctt_sai_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_ex_ctt_sai','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_ctt_sai_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ex_ctt_sai_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_ctt_fix" for="asset_ex_ctt_fix"  value="#{iimsg.AssetSuper_asset_ex_ctt_fix_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ex_ctt_fix" onclick="clf(this);" value="#{cadAssetSuperBean.asset_ex_ctt_fix}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_ex_ctt_fix','4','CONTF',this.value);;" size="5" maxlength="3" tabindex="162" />
<h:commandButton id="asset_ex_ctt_fix_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONTF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ex_ctt_fix_vc" flagType="val" flag="#{cadAssetSuperBean.asset_ex_ctt_fix_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ex_ctt_fix_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_ex_ctt_fix_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_suporte" for="asset_cp_suporte"  value="#{iimsg.AssetSuper_asset_cp_suporte_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_cp_suporte" tabindex="163"  value="#{cadAssetSuperBean.asset_cp_suporte}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_cp_suporte','4',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_suporte_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cp_suporte_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSuper_attb_tt_cnf_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dadireita" for="asset_in_conf_dadireita"  value="#{iimsg.AssetSuper_asset_in_conf_dadireita_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_in_conf_dadireita" tabindex="164"  value="#{cadAssetSuperBean.asset_in_conf_dadireita}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','asset_in_conf_dadireita','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dadireita_vc" flagType="val" flag="#{cadAssetSuperBean.asset_in_conf_dadireita_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_daesquerda" for="asset_in_conf_daesquerda"  value="#{iimsg.AssetSuper_asset_in_conf_daesquerda_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_in_conf_daesquerda" tabindex="165"  value="#{cadAssetSuperBean.asset_in_conf_daesquerda}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','asset_in_conf_daesquerda','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_daesquerda_vc" flagType="val" flag="#{cadAssetSuperBean.asset_in_conf_daesquerda_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dosfundos" for="asset_in_conf_dosfundos"  value="#{iimsg.AssetSuper_asset_in_conf_dosfundos_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_in_conf_dosfundos" tabindex="166"  value="#{cadAssetSuperBean.asset_in_conf_dosfundos}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','asset_in_conf_dosfundos','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dosfundos_vc" flagType="val" flag="#{cadAssetSuperBean.asset_in_conf_dosfundos_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xx <last frame close> if no Frames--%>
