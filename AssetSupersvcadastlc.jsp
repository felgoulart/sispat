<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="left" align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastlc" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastlc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastlc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSupersv_expt_cl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_perito" for="asset_cd_perito"  value="#{iimsg.AssetSupersv_asset_cd_perito_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_perito" tabindex="20"  value="#{cadAssetSupersvBean.asset_cd_perito}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_perito','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_perito_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_perito_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetSupersv_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="21"  value="#{cadAssetSupersvBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_cd_tipo_vsta', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_vistoria_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_vistoria_vc}" styleClass="btp"/>
<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tipo_vsta" for="asset_cd_tipo_vsta"  value="#{iimsg.AssetSupersv_asset_cd_tipo_vsta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_tipo_vsta" tabindex="22"  value="#{cadAssetSupersvBean.asset_cd_tipo_vsta}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tipo_vsta','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_tipo_vsta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_tipo_vsta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_stat_atdm" for="asset_cd_stat_atdm"  value="#{iimsg.AssetSupersv_asset_cd_stat_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_stat_atdm" tabindex="23"  value="#{cadAssetSupersvBean.asset_cd_stat_atdm}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_stat_atdm','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_stat_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_stat_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acao" for="asset_tp_acao"  value="#{iimsg.AssetSupersv_asset_tp_acao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_tp_acao" tabindex="24"  value="#{cadAssetSupersvBean.asset_tp_acao}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_tp_acao','2',this.value);"/>
<ps:psGraphicImage id="asset_tp_acao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_acao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_sist_orig" for="asset_cd_sist_orig"  value="#{iimsg.AssetSupersv_asset_cd_sist_orig_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_sist_orig" tabindex="25"  value="#{cadAssetSupersvBean.asset_cd_sist_orig}" size="47" maxlength="45"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_sist_orig','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_sist_orig_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_sist_orig_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id_atdm" for="asset_id_atdm"  value="#{iimsg.AssetSupersv_asset_id_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_id_atdm" tabindex="26"  value="#{cadAssetSupersvBean.asset_id_atdm}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_id_atdm','2',this.value);"/>
<ps:psGraphicImage id="asset_id_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_id_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_atdm" for="asset_nu_atdm"  value="#{iimsg.AssetSupersv_asset_nu_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nu_atdm" tabindex="27"  value="#{cadAssetSupersvBean.asset_nu_atdm}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_atdm','2',this.value);"/>
<ps:psGraphicImage id="asset_nu_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ponto_atdm" for="asset_cd_ponto_atdm"  value="#{iimsg.AssetSupersv_asset_cd_ponto_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_ponto_atdm" tabindex="28"  value="#{cadAssetSupersvBean.asset_cd_ponto_atdm}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ponto_atdm','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_ponto_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_ponto_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_di_atdm" for="asset_di_atdm"  value="#{iimsg.AssetSupersv_asset_di_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="asset_di_atdm" tabindex="29"  value="#{cadAssetSupersvBean.asset_di_atdm_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_di_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_di_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_df_atdm" for="asset_df_atdm"  value="#{iimsg.AssetSupersv_asset_df_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="1500" > <h:inputText id="asset_df_atdm" tabindex="30"  value="#{cadAssetSupersvBean.asset_df_atdm_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_df_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_df_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSupersv_loca_lc_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_trecho" for="asset_cd_trecho"  value="#{iimsg.AssetSupersv_asset_cd_trecho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_trecho" value="#{cadAssetSupersvBean.asset_cd_trecho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_trecho','2','TRCHO',this.value);;" size="7" maxlength="5" tabindex="31" />
<h:commandButton id="asset_cd_trecho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCHO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_trecho_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_trecho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_trecho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_trecho_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetSupersv_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" value="#{cadAssetSupersvBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_zona_cflczon','2','LOCZO',this.value);;" size="7" maxlength="5" tabindex="32" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_patio_ferroviario" for="asset_nm_patio_ferroviario"  value="#{iimsg.AssetSupersv_asset_nm_patio_ferroviario_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nm_patio_ferroviario" tabindex="33"  value="#{cadAssetSupersvBean.asset_nm_patio_ferroviario}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_patio_ferroviario','2',this.value);"/>
<ps:psGraphicImage id="asset_nm_patio_ferroviario_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nm_patio_ferroviario_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetSupersv_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_km_ini" tabindex="34"  value="#{cadAssetSupersvBean.asset_km_ini_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_km_ini','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_ini_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_km_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetSupersv_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_vl_ltde" tabindex="35"  value="#{cadAssetSupersvBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_ltde','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_ltde_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_ltde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetSupersv_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_vl_lgtd" tabindex="36"  value="#{cadAssetSupersvBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_lgtd','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_lgtd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_lgtd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ob_patio" for="asset_ob_patio"  value="#{iimsg.AssetSupersv_asset_ob_patio_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="6" width="600"   >
<h:inputText id="asset_ob_patio" tabindex="37"  value="#{cadAssetSupersvBean.asset_ob_patio}" size="92" maxlength="90"  styleClass="txl pl5 tbx" onchange="bv('','asset_ob_patio','2',this.value);"/>
<ps:psGraphicImage id="asset_ob_patio_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ob_patio_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSupersv_stru_st_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_agua_cfgenyn" for="asset_in_agua_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_agua_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_agua_cfgenyn" value="#{cadAssetSupersvBean.asset_in_agua_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_agua_cfgenyn','2','SNNID',this.value);;" size="5" maxlength="3" tabindex="38" />
<h:commandButton id="asset_in_agua_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_agua_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_agua_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_agua_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_agua_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_luz_cfgenyn" for="asset_in_luz_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_luz_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_luz_cfgenyn" value="#{cadAssetSupersvBean.asset_in_luz_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_luz_cfgenyn','2','SNNID',this.value);;" size="5" maxlength="3" tabindex="39" />
<h:commandButton id="asset_in_luz_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_luz_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_luz_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_luz_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_luz_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_telefonia" for="asset_in_telefonia"  value="#{iimsg.AssetSupersv_asset_in_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_telefonia" value="#{cadAssetSupersvBean.asset_in_telefonia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_telefonia','2','SNNID',this.value);;" size="5" maxlength="3" tabindex="40" />
<h:commandButton id="asset_in_telefonia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_telefonia_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_telefonia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_telefonia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_telefonia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetSupersv_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cobertura" value="#{cadAssetSupersvBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_cobertura','2','TPCOB',this.value);;" size="5" maxlength="3" tabindex="41" />
<h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCOB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cobertura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_cobertura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_cobertura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetSupersv_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_estrutura" value="#{cadAssetSupersvBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_estrutura','2','TIPES',this.value);;" size="5" maxlength="3" tabindex="42" />
<h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_estrutura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_estrutura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_parede" for="asset_tp_revest_int_parede"  value="#{iimsg.AssetSupersv_asset_tp_revest_int_parede_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_parede" value="#{cadAssetSupersvBean.asset_tp_revest_int_parede}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_parede','2','RVIPD',this.value);;" size="5" maxlength="3" tabindex="43" />
<h:commandButton id="asset_tp_revest_int_parede_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_parede_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_revest_int_parede_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_parede_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_revest_int_parede_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_piso" for="asset_tp_revest_int_piso"  value="#{iimsg.AssetSupersv_asset_tp_revest_int_piso_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_piso" value="#{cadAssetSupersvBean.asset_tp_revest_int_piso}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_piso','2','RVIPS',this.value);;" size="5" maxlength="3" tabindex="44" />
<h:commandButton id="asset_tp_revest_int_piso_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_piso_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_revest_int_piso_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_piso_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_revest_int_piso_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_porta" for="asset_tp_porta"  value="#{iimsg.AssetSupersv_asset_tp_porta_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_porta" value="#{cadAssetSupersvBean.asset_tp_porta}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_porta','2','PORTA',this.value);;" size="5" maxlength="3" tabindex="45" />
<h:commandButton id="asset_tp_porta_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PORTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_porta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_porta_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_porta_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_porta_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_janela" for="asset_tp_janela"  value="#{iimsg.AssetSupersv_asset_tp_janela_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_janela" value="#{cadAssetSupersvBean.asset_tp_janela}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_janela','2','JANEL',this.value);;" size="5" maxlength="3" tabindex="46" />
<h:commandButton id="asset_tp_janela_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'JANEL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_janela_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_janela_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_janela_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_janela_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
