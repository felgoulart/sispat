<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastob" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastob" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastob');">
<ps:psGraphicImage id="iMessageastob" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id9" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id9" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc9" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_obsrv_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="269"  value="#{cadAssetSupersvBean.asset_ob}" cols="100" rows="8" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','9',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_inspb" for="asset_cd_inspb"  value="#{iimsg.AssetSupersv_asset_cd_inspb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_inspb" tabindex="270"  value="#{cadAssetSupersvBean.asset_cd_inspb}" size="10" maxlength="8"  styleClass="tbx" onchange="bv('','asset_cd_inspb','9',this.value);"/>
<ps:psGraphicImage id="asset_cd_inspb_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_inspb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_revsb" for="asset_cd_revsb"  value="#{iimsg.AssetSupersv_asset_cd_revsb_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_cd_revsb" tabindex="271"  value="#{cadAssetSupersvBean.asset_cd_revsb}"  styleClass="tbx" size="4" maxlength="2" onchange="bv('','asset_cd_revsb','9',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cd_revsb_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_revsb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_tranferido_cfgenyn" for="asset_in_tranferido_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_tranferido_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_tranferido_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_tranferido_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_tranferido_cfgenyn','9','GENYN',this.value);;" size="4" maxlength="2" tabindex="272" />
<h:commandButton id="asset_in_tranferido_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_tranferido_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_tranferido_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_tranferido_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_tranferido_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_sq_incorporacao" for="asset_sq_incorporacao"  value="#{iimsg.AssetSupersv_asset_sq_incorporacao_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_sq_incorporacao" tabindex="273"  value="#{cadAssetSupersvBean.asset_sq_incorporacao}"  styleClass="tbx" size="5" maxlength="3" onchange="bv('','asset_sq_incorporacao','9',valNum(this.value));"/>
<ps:psGraphicImage id="asset_sq_incorporacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_sq_incorporacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_limpeza" for="asset_st_limpeza"  value="#{iimsg.AssetSupersv_asset_st_limpeza_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_limpeza_bol" value="#{cadAssetSupersvBean.asset_st_limpeza}"/>
<h:selectBooleanCheckbox id="asset_st_limpeza" tabindex="274"  value="#{cadAssetSupersvBean.asset_st_limpeza_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_limpeza_bol');"/>
<ps:psGraphicImage id="asset_st_limpeza_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_limpeza_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_seguranca" for="asset_st_seguranca"  value="#{iimsg.AssetSupersv_asset_st_seguranca_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_seguranca_bol" value="#{cadAssetSupersvBean.asset_st_seguranca}"/>
<h:selectBooleanCheckbox id="asset_st_seguranca" tabindex="275"  value="#{cadAssetSupersvBean.asset_st_seguranca_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_seguranca_bol');"/>
<ps:psGraphicImage id="asset_st_seguranca_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_seguranca_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_invasao" for="asset_st_invasao"  value="#{iimsg.AssetSupersv_asset_st_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_invasao_bol" value="#{cadAssetSupersvBean.asset_st_invasao}"/>
<h:selectBooleanCheckbox id="asset_st_invasao" tabindex="276"  value="#{cadAssetSupersvBean.asset_st_invasao_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_invasao_bol');"/>
<ps:psGraphicImage id="asset_st_invasao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_invasao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_terr" for="asset_cd_terr"  value="#{iimsg.AssetSupersv_asset_cd_terr_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_terr" tabindex="277"  value="#{cadAssetSupersvBean.asset_cd_terr}" size="10" maxlength="8"  styleClass="tbx" onchange="bv('','asset_cd_terr','9',this.value);"/>
<ps:psGraphicImage id="asset_cd_terr_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_terr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_terr_planta" for="asset_ds_terr_planta"  value="#{iimsg.AssetSupersv_asset_ds_terr_planta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_terr_planta" tabindex="278"  value="#{cadAssetSupersvBean.asset_ds_terr_planta}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_ds_terr_planta','9',this.value);"/>
<ps:psGraphicImage id="asset_ds_terr_planta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_terr_planta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_vhcle_ult_rev_geral" for="asset_aa_vhcle_ult_rev_geral"  value="#{iimsg.AssetSupersv_asset_aa_vhcle_ult_rev_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_aa_vhcle_ult_rev_geral" tabindex="279"  value="#{cadAssetSupersvBean.asset_aa_vhcle_ult_rev_geral}"  styleClass="tbx" size="6" maxlength="4" onchange="bv('','asset_aa_vhcle_ult_rev_geral','9',valNum(this.value));"/>
<ps:psGraphicImage id="asset_aa_vhcle_ult_rev_geral_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_aa_vhcle_ult_rev_geral_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ps_vhcle_estimado" for="asset_ps_vhcle_estimado"  value="#{iimsg.AssetSupersv_asset_ps_vhcle_estimado_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_ps_vhcle_estimado" tabindex="280"  value="#{cadAssetSupersvBean.asset_ps_vhcle_estimado_str}"  styleClass="tbx" size="8" maxlength="6" onchange="bv('','asset_ps_vhcle_estimado','9',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ps_vhcle_estimado_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ps_vhcle_estimado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_px_local_vistoria" for="asset_px_local_vistoria"  value="#{iimsg.AssetSupersv_asset_px_local_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_px_local_vistoria" tabindex="281"  value="#{cadAssetSupersvBean.asset_px_local_vistoria}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_px_local_vistoria','9',this.value);"/>
<ps:psGraphicImage id="asset_px_local_vistoria_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_px_local_vistoria_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_entradas_ar_cfgenyn" for="asset_in_entradas_ar_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_entradas_ar_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_entradas_ar_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_entradas_ar_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_entradas_ar_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="282" />
<h:commandButton id="asset_in_entradas_ar_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_entradas_ar_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_entradas_ar_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_entradas_ar_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_entradas_ar_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_reservatorio_cfgenyn" for="asset_in_reservatorio_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_reservatorio_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_reservatorio_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_reservatorio_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_reservatorio_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="283" />
<h:commandButton id="asset_in_reservatorio_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_reservatorio_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_reservatorio_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_reservatorio_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_reservatorio_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_valvula_cfgenyn" for="asset_in_valvula_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_valvula_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_valvula_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_valvula_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_valvula_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="284" />
<h:commandButton id="asset_in_valvula_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_valvula_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_valvula_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_valvula_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_valvula_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cilindro_cfgenyn" for="asset_in_cilindro_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_cilindro_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cilindro_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cilindro_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cilindro_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="285" />
<h:commandButton id="asset_in_cilindro_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cilindro_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cilindro_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cilindro_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cilindro_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_timoneria_cfconvt" for="asset_in_timoneria_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_timoneria_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_timoneria_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_timoneria_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_timoneria_cfconvt','9','GENST',this.value);;" size="5" maxlength="3" tabindex="286" />
<h:commandButton id="asset_in_timoneria_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_timoneria_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_timoneria_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_timoneria_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_timoneria_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_revest_salao_cfgenyn" for="asset_in_revest_salao_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_revest_salao_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_revest_salao_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_revest_salao_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_revest_salao_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="287" />
<h:commandButton id="asset_in_revest_salao_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_revest_salao_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_revest_salao_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_revest_salao_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_revest_salao_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sist_iluminacao_cfgenyn" for="asset_in_sist_iluminacao_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_sist_iluminacao_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sist_iluminacao_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sist_iluminacao_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sist_iluminacao_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="288" />
<h:commandButton id="asset_in_sist_iluminacao_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sist_iluminacao_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sist_iluminacao_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sist_iluminacao_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sist_iluminacao_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sist_ventilation_cfgenyn" for="asset_in_sist_ventilation_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_sist_ventilation_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sist_ventilation_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sist_ventilation_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sist_ventilation_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="289" />
<h:commandButton id="asset_in_sist_ventilation_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sist_ventilation_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sist_ventilation_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sist_ventilation_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sist_ventilation_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_chao_cfgenyn" for="asset_in_chao_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_chao_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_chao_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_chao_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_chao_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="290" />
<h:commandButton id="asset_in_chao_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_chao_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_chao_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_chao_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_chao_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_banco_cfgenyn" for="asset_in_banco_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_banco_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_banco_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_banco_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_banco_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="291" />
<h:commandButton id="asset_in_banco_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_banco_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_banco_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_banco_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_banco_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_revest_lateral_cfgenyn" for="asset_in_revest_lateral_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_revest_lateral_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_revest_lateral_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_revest_lateral_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_revest_lateral_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="292" />
<h:commandButton id="asset_in_revest_lateral_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_revest_lateral_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_revest_lateral_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_revest_lateral_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_revest_lateral_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_qualidade_cfgenyn" for="asset_in_qualidade_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_qualidade_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_qualidade_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_qualidade_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_qualidade_cfgenyn','9','GENYN',this.value);;" size="4" maxlength="2" tabindex="293" />
<h:commandButton id="asset_in_qualidade_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_qualidade_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_qualidade_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_qualidade_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_qualidade_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_revest_chao_cfgenyn" for="asset_in_revest_chao_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_revest_chao_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_revest_chao_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_revest_chao_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_revest_chao_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="294" />
<h:commandButton id="asset_in_revest_chao_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_revest_chao_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_revest_chao_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_revest_chao_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_revest_chao_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cil_freio_cfconvt" for="asset_in_cil_freio_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_cil_freio_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cil_freio_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cil_freio_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cil_freio_cfconvt','9','GENST',this.value);;" size="5" maxlength="3" tabindex="295" />
<h:commandButton id="asset_in_cil_freio_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cil_freio_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cil_freio_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cil_freio_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cil_freio_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cabeamento_cfgenyn" for="asset_in_cabeamento_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_cabeamento_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cabeamento_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cabeamento_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cabeamento_cfgenyn','9','GENST',this.value);;" size="5" maxlength="3" tabindex="296" />
<h:commandButton id="asset_in_cabeamento_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cabeamento_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cabeamento_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cabeamento_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cabeamento_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_capota_cfgenyn" for="asset_in_capota_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_capota_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_capota_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_capota_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_capota_cfgenyn','9','GENST',this.value);;" size="5" maxlength="3" tabindex="297" />
<h:commandButton id="asset_in_capota_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_capota_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_capota_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_capota_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_capota_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sit_conserv_cfgenyn" for="asset_in_sit_conserv_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_sit_conserv_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sit_conserv_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sit_conserv_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sit_conserv_cfgenyn','9','GENYN',this.value);;" size="5" maxlength="3" tabindex="298" />
<h:commandButton id="asset_in_sit_conserv_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sit_conserv_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sit_conserv_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sit_conserv_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sit_conserv_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xx <last frame close> if no Frames--%>
