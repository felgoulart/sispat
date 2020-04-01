<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetYrdsdBean.canUpdate}" value="#{cadAssetYrdsdBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetYrdsdBean.canUpdate}" action="#{cadAssetYrdsdBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdsd_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetYrdsdBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdsd_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetYrdsdBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdsd_attb_tt_ger_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_vias_ferreas" for="asset_nr_vias_ferreas"  value="#{iimsg.AssetYrdsd_asset_nr_vias_ferreas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_vias_ferreas" value="#{cadAssetYrdsdBean.asset_nr_vias_ferreas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_nr_vias_ferreas','3','NUMVF',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_nr_vias_ferreas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUMVF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_vias_ferreas_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_nr_vias_ferreas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_vias_ferreas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_nr_vias_ferreas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bitola" for="asset_tp_bitola"  value="#{iimsg.AssetYrdsd_asset_tp_bitola_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bitola" value="#{cadAssetYrdsdBean.asset_tp_bitola}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_bitola','3','BITOL',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="asset_tp_bitola_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'BITOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bitola_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_bitola_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bitola_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_bitola_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_linha" for="asset_nm_linha"  value="#{iimsg.AssetYrdsd_asset_nm_linha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nm_linha" tabindex="31"  value="#{cadAssetYrdsdBean.asset_nm_linha}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_linha','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_linha_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_nm_linha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_linhas_secundarias" for="asset_qt_linhas_secundarias"  value="#{iimsg.AssetYrdsd_asset_qt_linhas_secundarias_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_qt_linhas_secundarias" tabindex="32"  value="#{cadAssetYrdsdBean.asset_qt_linhas_secundarias}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_qt_linhas_secundarias','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_linhas_secundarias_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_qt_linhas_secundarias_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_linha" for="asset_tp_linha"  value="#{iimsg.AssetYrdsd_asset_tp_linha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_tp_linha" tabindex="33"  value="#{cadAssetYrdsdBean.asset_tp_linha}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_tp_linha','3',this.value);"/>
<ps:psGraphicImage id="asset_tp_linha_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_linha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetYrdsd_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ex_total" tabindex="34"  value="#{cadAssetYrdsdBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_via" for="asset_cp_via"  value="#{iimsg.AssetYrdsd_asset_cp_via_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_cp_via" tabindex="35"  value="#{cadAssetYrdsdBean.asset_cp_via}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_cp_via','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_via_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_cp_via_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max" for="asset_vl_ramp_max"  value="#{iimsg.AssetYrdsd_asset_vl_ramp_max_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_ramp_max" tabindex="36"  value="#{cadAssetYrdsdBean.asset_vl_ramp_max_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_vl_ramp_max','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_vl_ramp_max_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max_km_inicial" for="asset_vl_ramp_max_km_inicial"  value="#{iimsg.AssetYrdsd_asset_vl_ramp_max_km_inicial_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_ramp_max_km_inicial" tabindex="37"  value="#{cadAssetYrdsdBean.asset_vl_ramp_max_km_inicial_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_vl_ramp_max_km_inicial','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_inicial_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_vl_ramp_max_km_inicial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetYrdsd_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetYrdsdBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="38" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetYrdsd_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="39"  value="#{cadAssetYrdsdBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_amv_arrdd" for="asset_ds_bp_amv_arrdd"  value="#{iimsg.AssetYrdsd_asset_ds_bp_amv_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_amv_arrdd" tabindex="40"  value="#{cadAssetYrdsdBean.asset_ds_bp_amv_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_amv_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_amv_arrdd_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ds_bp_amv_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdsd_attb_tt_trk_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trilho" for="asset_tp_trilho"  value="#{iimsg.AssetYrdsd_asset_tp_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trilho" value="#{cadAssetYrdsdBean.asset_tp_trilho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trilho','3','TRTPA',this.value);;" size="5" maxlength="3" tabindex="41" />
<h:commandButton id="asset_tp_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRTPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trilho_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_lg_compr_barra" for="asset_lg_compr_barra"  value="#{iimsg.AssetYrdsd_asset_lg_compr_barra_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_lg_compr_barra" tabindex="42"  value="#{cadAssetYrdsdBean.asset_lg_compr_barra_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_lg_compr_barra','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_lg_compr_barra_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_lg_compr_barra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ligacao" for="asset_tp_ligacao"  value="#{iimsg.AssetYrdsd_asset_tp_ligacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ligacao" value="#{cadAssetYrdsdBean.asset_tp_ligacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ligacao','3','TRITL',this.value);;" size="5" maxlength="3" tabindex="43" />
<h:commandButton id="asset_tp_ligacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ligacao_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_ligacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ligacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_ligacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_trilhos_arrdd" for="asset_ds_bp_trilhos_arrdd"  value="#{iimsg.AssetYrdsd_asset_ds_bp_trilhos_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_trilhos_arrdd" tabindex="44"  value="#{cadAssetYrdsdBean.asset_ds_bp_trilhos_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_trilhos_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_trilhos_arrdd_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ds_bp_trilhos_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdsd_attb_tt_fix_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fixacao" for="asset_tp_fixacao"  value="#{iimsg.AssetYrdsd_asset_tp_fixacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fixacao" value="#{cadAssetYrdsdBean.asset_tp_fixacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fixacao','3','TRITF',this.value);;" size="5" maxlength="3" tabindex="45" />
<h:commandButton id="asset_tp_fixacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fixacao_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_fixacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fixacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_fixacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_fixacao_arrdd" for="asset_ds_bp_fixacao_arrdd"  value="#{iimsg.AssetYrdsd_asset_ds_bp_fixacao_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_fixacao_arrdd" tabindex="46"  value="#{cadAssetYrdsdBean.asset_ds_bp_fixacao_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_fixacao_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_fixacao_arrdd_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ds_bp_fixacao_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdsd_attb_tt_drm_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_dormente" for="asset_tp_dormente"  value="#{iimsg.AssetYrdsd_asset_tp_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_dormente" value="#{cadAssetYrdsdBean.asset_tp_dormente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_dormente','3','TPDOR',this.value);;" size="5" maxlength="3" tabindex="47" />
<h:commandButton id="asset_tp_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDOR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_dormente_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_dormente_arrdd" for="asset_ds_bp_dormente_arrdd"  value="#{iimsg.AssetYrdsd_asset_ds_bp_dormente_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_dormente_arrdd" tabindex="48"  value="#{cadAssetYrdsdBean.asset_ds_bp_dormente_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_dormente_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_dormente_arrdd_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ds_bp_dormente_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdsd_attb_tt_blt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_lastro" for="asset_tp_lastro"  value="#{iimsg.AssetYrdsd_asset_tp_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_lastro" value="#{cadAssetYrdsdBean.asset_tp_lastro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_lastro','3','TPLST',this.value);;" size="5" maxlength="3" tabindex="49" />
<h:commandButton id="asset_tp_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPLST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_lastro_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_tp_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdsdBean.asset_tp_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_lastro_arrdd" for="asset_ds_bp_lastro_arrdd"  value="#{iimsg.AssetYrdsd_asset_ds_bp_lastro_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_lastro_arrdd" tabindex="50"  value="#{cadAssetYrdsdBean.asset_ds_bp_lastro_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_lastro_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_lastro_arrdd_vc" flagType="val" flag="#{cadAssetYrdsdBean.asset_ds_bp_lastro_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
