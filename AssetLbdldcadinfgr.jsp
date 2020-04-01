<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varinfgr" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageinfgr" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageinfgr');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_infger_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetLbdld_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nu" tabindex="2"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetLbdldBean.asset_nu}" size="14" maxlength="12"  styleClass="tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_locat_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetLbdld_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_corredor" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="12" maxlength="10" tabindex="3" />
<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_corredor_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_corredor_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_corredor_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetLbdld_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_vl_ltde" tabindex="4"  value="#{cadAssetLbdldBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="tbx" onchange="bv('','asset_vl_ltde','1',this.value);"/>
<ps:psGraphicImage id="asset_vl_ltde_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_ltde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetLbdld_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_vl_lgtd" tabindex="5"  value="#{cadAssetLbdldBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="tbx" onchange="bv('','asset_vl_lgtd','1',this.value);"/>
<ps:psGraphicImage id="asset_vl_lgtd_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_lgtd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetLbdld_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_km_ini" tabindex="6"  value="#{cadAssetLbdldBean.asset_km_ini_str}"  styleClass="tbx" size="9" maxlength="7" onchange="bv('','asset_km_ini','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_ini_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetLbdld_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_km_fim" tabindex="7"  value="#{cadAssetLbdldBean.asset_km_fim_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_fim_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetLbdld_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetLbdld_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_zona_cflczon','1','LOCZO',this.value);;" size="7" maxlength="5" tabindex="9" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetLbdld_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfresid" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_cfresid','1','RESID',this.value);;" size="7" maxlength="5" tabindex="10" />
<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfresid_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_invasao_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_invasao" for="asset_tp_invasao"  value="#{iimsg.AssetLbdld_asset_tp_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_tp_invasao_bol" value="#{cadAssetLbdldBean.asset_tp_invasao}"/>
<h:selectBooleanCheckbox id="asset_tp_invasao" tabindex="11"  value="#{cadAssetLbdldBean.asset_tp_invasao_bol}" onclick="chkBoolean(this, 'cadForm:asset_tp_invasao_bol');"/>
<ps:psGraphicImage id="asset_tp_invasao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_invasao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cl_dist_boleto" for="asset_cl_dist_boleto"  value="#{iimsg.AssetLbdld_asset_cl_dist_boleto_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_cl_dist_boleto" tabindex="12"  value="#{cadAssetLbdldBean.asset_cl_dist_boleto_str}"  styleClass="tbx" size="9" maxlength="7" onchange="bv('','asset_cl_dist_boleto','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_cl_dist_boleto_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cl_dist_boleto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetLbdld_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_ar_total" tabindex="13"  value="#{cadAssetLbdldBean.asset_ar_total_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_terreno" for="asset_ar_terreno"  value="#{iimsg.AssetLbdld_asset_ar_terreno_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_ar_terreno" tabindex="14"  value="#{cadAssetLbdldBean.asset_ar_terreno_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_terreno','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_terreno_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_terreno_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_livre" for="asset_ar_livre"  value="#{iimsg.AssetLbdld_asset_ar_livre_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_ar_livre" tabindex="15"  value="#{cadAssetLbdldBean.asset_ar_livre_str}"  styleClass="" size="14" maxlength="14" onchange="bv('','asset_ar_livre','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_livre_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_livre_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_operacional" for="asset_ar_operacional"  value="#{iimsg.AssetLbdld_asset_ar_operacional_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_ar_operacional" tabindex="16"  value="#{cadAssetLbdldBean.asset_ar_operacional_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_operacional','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_operacional_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_operacional_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_arrendada" for="asset_ar_arrendada"  value="#{iimsg.AssetLbdld_asset_ar_arrendada_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_ar_arrendada" tabindex="17"  value="#{cadAssetLbdldBean.asset_ar_arrendada_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_arrendada','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_arrendada_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_arrendada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_largura_media" for="asset_vl_largura_media"  value="#{iimsg.AssetLbdld_asset_vl_largura_media_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_vl_largura_media" tabindex="18"  value="#{cadAssetLbdldBean.asset_vl_largura_media_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_vl_largura_media','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_largura_media_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_largura_media_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_comprimento" for="asset_vl_comprimento"  value="#{iimsg.AssetLbdld_asset_vl_comprimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_vl_comprimento" tabindex="19"  value="#{cadAssetLbdldBean.asset_vl_comprimento_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_vl_comprimento','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_comprimento_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_comprimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetLbdld_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_aa_construcao" tabindex="20"  value="#{cadAssetLbdldBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="tbx" onchange="bv('','asset_aa_construcao','1',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_invasao" for="asset_st_invasao"  value="#{iimsg.AssetLbdld_asset_st_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_st_invasao_bol" value="#{cadAssetLbdldBean.asset_st_invasao}"/>
<h:selectBooleanCheckbox id="asset_st_invasao" tabindex="21"  value="#{cadAssetLbdldBean.asset_st_invasao_bol}" onclick="chkBoolean(this, 'cadForm:asset_st_invasao_bol');"/>
<ps:psGraphicImage id="asset_st_invasao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_invasao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ocupacao" for="asset_tp_ocupacao"  value="#{iimsg.AssetLbdld_asset_tp_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ocupacao" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_ocupacao}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_ocupacao','1','EFORO',this.value);;" size="7" maxlength="5" tabindex="22" />
<h:commandButton id="asset_tp_ocupacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EFORO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ocupacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_ocupacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ocupacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_ocupacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_autorizacao_ocup" for="asset_ds_autorizacao_ocup"  value="#{iimsg.AssetLbdld_asset_ds_autorizacao_ocup_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_autorizacao_ocup" tabindex="23"  value="#{cadAssetLbdldBean.asset_ds_autorizacao_ocup}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','asset_ds_autorizacao_ocup','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_autorizacao_ocup_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_autorizacao_ocup_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pz_ocupacao" for="asset_pz_ocupacao"  value="#{iimsg.AssetLbdld_asset_pz_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_pz_ocupacao" tabindex="24"  value="#{cadAssetLbdldBean.asset_pz_ocupacao}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_pz_ocupacao','1',this.value);"/>
<ps:psGraphicImage id="asset_pz_ocupacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_pz_ocupacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_carcons_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_paredes" for="asset_st_paredes"  value="#{iimsg.AssetLbdld_asset_st_paredes_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_paredes" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_st_paredes}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_paredes','1','GENST',this.value);;" size="5" maxlength="3" tabindex="25" />
<h:commandButton id="asset_st_paredes_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_paredes_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_paredes_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_paredes_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_paredes_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_cobertura" for="asset_st_cobertura"  value="#{iimsg.AssetLbdld_asset_st_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_cobertura" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_st_cobertura}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_cobertura','1','GENST',this.value);;" size="5" maxlength="3" tabindex="26" />
<h:commandButton id="asset_st_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_cobertura_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_cobertura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_cobertura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_inst_letrica" for="asset_st_inst_letrica"  value="#{iimsg.AssetLbdld_asset_st_inst_letrica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_inst_letrica" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_st_inst_letrica}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_inst_letrica','1','GENST',this.value);;" size="5" maxlength="3" tabindex="27" />
<h:commandButton id="asset_st_inst_letrica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_inst_letrica_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_inst_letrica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_inst_letrica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_inst_letrica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_inst_hidraulica" for="asset_st_inst_hidraulica"  value="#{iimsg.AssetLbdld_asset_st_inst_hidraulica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_inst_hidraulica" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_st_inst_hidraulica}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_inst_hidraulica','1','GENST',this.value);;" size="5" maxlength="3" tabindex="28" />
<h:commandButton id="asset_st_inst_hidraulica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_inst_hidraulica_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_inst_hidraulica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_inst_hidraulica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_inst_hidraulica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_ocupacao_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_ocupante" for="asset_nm_ocupante"  value="#{iimsg.AssetLbdld_asset_nm_ocupante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nm_ocupante" tabindex="29"  value="#{cadAssetLbdldBean.asset_nm_ocupante}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_nm_ocupante','1',this.value);"/>
<ps:psGraphicImage id="asset_nm_ocupante_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_ocupante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_proprietario" for="asset_nm_proprietario"  value="#{iimsg.AssetLbdld_asset_nm_proprietario_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nm_proprietario" tabindex="30"  value="#{cadAssetLbdldBean.asset_nm_proprietario}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_nm_proprietario','1',this.value);"/>
<ps:psGraphicImage id="asset_nm_proprietario_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_proprietario_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_renda_familiar" for="asset_vl_renda_familiar"  value="#{iimsg.AssetLbdld_asset_vl_renda_familiar_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="asset_vl_renda_familiar" tabindex="31"  value="#{cadAssetLbdldBean.asset_vl_renda_familiar_str}"  styleClass="tbx" size="14" maxlength="12" onchange="bv('','asset_vl_renda_familiar','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_renda_familiar_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_renda_familiar_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_comprovante_renda" for="asset_ds_comprovante_renda"  value="#{iimsg.AssetLbdld_asset_ds_comprovante_renda_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_comprovante_renda" tabindex="32"  value="#{cadAssetLbdldBean.asset_ds_comprovante_renda}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_ds_comprovante_renda','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_comprovante_renda_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_comprovante_renda_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_identificacao" for="asset_ds_identificacao"  value="#{iimsg.AssetLbdld_asset_ds_identificacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_identificacao" tabindex="33"  value="#{cadAssetLbdldBean.asset_ds_identificacao}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_ds_identificacao','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_identificacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_identificacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_responsavel" for="asset_ds_responsavel"  value="#{iimsg.AssetLbdld_asset_ds_responsavel_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_responsavel" tabindex="34"  value="#{cadAssetLbdldBean.asset_ds_responsavel}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_ds_responsavel','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_responsavel_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_responsavel_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_ocupantes" for="asset_qt_ocupantes"  value="#{iimsg.AssetLbdld_asset_qt_ocupantes_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_qt_ocupantes" tabindex="35"  value="#{cadAssetLbdldBean.asset_qt_ocupantes}"  styleClass="tbx" size="5" maxlength="3" onchange="bv('','asset_qt_ocupantes','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_ocupantes_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_qt_ocupantes_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_ocup_atv_prof" for="asset_ds_ocup_atv_prof"  value="#{iimsg.AssetLbdld_asset_ds_ocup_atv_prof_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_ocup_atv_prof" tabindex="36"  value="#{cadAssetLbdldBean.asset_ds_ocup_atv_prof}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','asset_ds_ocup_atv_prof','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_ocup_atv_prof_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_ocup_atv_prof_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xx <last frame close> if no Frames--%>
