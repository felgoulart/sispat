<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetMailnBean.canUpdate}" value="#{cadAssetMailnBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetMailnBean.canUpdate}" action="#{cadAssetMailnBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetMailn_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetMailnBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetMailn_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetMailnBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetMailn_attb_tt_ger_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_vias_ferreas" for="asset_nr_vias_ferreas"  value="#{iimsg.AssetMailn_asset_nr_vias_ferreas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_vias_ferreas" value="#{cadAssetMailnBean.asset_nr_vias_ferreas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_nr_vias_ferreas','3','NUMVF',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="asset_nr_vias_ferreas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUMVF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_vias_ferreas_vc" flagType="val" flag="#{cadAssetMailnBean.asset_nr_vias_ferreas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_vias_ferreas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_nr_vias_ferreas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bitola" for="asset_tp_bitola"  value="#{iimsg.AssetMailn_asset_tp_bitola_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bitola" value="#{cadAssetMailnBean.asset_tp_bitola}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_bitola','3','BITOL',this.value);;" size="5" maxlength="3" tabindex="31" />
<h:commandButton id="asset_tp_bitola_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'BITOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bitola_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_bitola_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bitola_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_bitola_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetMailn_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="350" class="pr5"> <h:inputText id="asset_ex_total" tabindex="32"  value="#{cadAssetMailnBean.asset_ex_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_via" for="asset_cp_via"  value="#{iimsg.AssetMailn_asset_cp_via_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_cp_via" tabindex="33"  value="#{cadAssetMailnBean.asset_cp_via}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(3);bv('','asset_cp_via','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_via_vc" flagType="val" flag="#{cadAssetMailnBean.asset_cp_via_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cp_via_nap" for="asset_cp_via_nap"  value="#{iimsg.AssetMailn_asset_cp_via_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cp_via_nap" value="#{cadAssetMailnBean.asset_cp_via_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('asset_cp_via');bdcd('','asset_cp_via_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="34" />
<h:commandButton id="asset_cp_via_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cp_via_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_cp_via_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cp_via_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_cp_via_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max" for="asset_vl_ramp_max"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_ramp_max" tabindex="35"  value="#{cadAssetMailnBean.asset_vl_ramp_max_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(5);bv('','asset_vl_ramp_max','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_ramp_max_nap" for="asset_vl_ramp_max_nap"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_ramp_max_nap" value="#{cadAssetMailnBean.asset_vl_ramp_max_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);cleSubSel_uv('asset_vl_ramp_max');bdcd('','asset_vl_ramp_max_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="36" />
<h:commandButton id="asset_vl_ramp_max_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_ramp_max_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_ramp_max_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_ramp_max_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max_km_inicial" for="asset_vl_ramp_max_km_inicial"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_km_inicial_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_ramp_max_km_inicial" tabindex="37"  value="#{cadAssetMailnBean.asset_vl_ramp_max_km_inicial_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(7);bv('','asset_vl_ramp_max_km_inicial','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_inicial_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_km_inicial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_ramp_max_km_inicial_nap" for="asset_vl_ramp_max_km_inicial_nap"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_km_inicial_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_ramp_max_km_inicial_nap" value="#{cadAssetMailnBean.asset_vl_ramp_max_km_inicial_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);cleSubSel_uv('asset_vl_ramp_max_km_inicial');bdcd('','asset_vl_ramp_max_km_inicial_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="38" />
<h:commandButton id="asset_vl_ramp_max_km_inicial_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_inicial_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_km_inicial_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_ramp_max_km_inicial_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_ramp_max_km_inicial_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max_km_final" for="asset_vl_ramp_max_km_final"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_km_final_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_ramp_max_km_final" tabindex="39"  value="#{cadAssetMailnBean.asset_vl_ramp_max_km_final_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(9);bv('','asset_vl_ramp_max_km_final','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_final_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_km_final_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_ramp_max_km_final_nap" for="asset_vl_ramp_max_km_final_nap"  value="#{iimsg.AssetMailn_asset_vl_ramp_max_km_final_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_ramp_max_km_final_nap" value="#{cadAssetMailnBean.asset_vl_ramp_max_km_final_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);cleSubSel_uv('asset_vl_ramp_max_km_final');bdcd('','asset_vl_ramp_max_km_final_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="40" />
<h:commandButton id="asset_vl_ramp_max_km_final_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_final_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_ramp_max_km_final_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_ramp_max_km_final_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_ramp_max_km_final_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min" for="asset_vl_raio_min"  value="#{iimsg.AssetMailn_asset_vl_raio_min_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_raio_min" tabindex="41"  value="#{cadAssetMailnBean.asset_vl_raio_min_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(11);bv('','asset_vl_raio_min','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_raio_min_nap" for="asset_vl_raio_min_nap"  value="#{iimsg.AssetMailn_asset_vl_raio_min_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_raio_min_nap" value="#{cadAssetMailnBean.asset_vl_raio_min_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('asset_vl_raio_min');bdcd('','asset_vl_raio_min_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="42" />
<h:commandButton id="asset_vl_raio_min_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_raio_min_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_raio_min_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_raio_min_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min_pos_ini" for="asset_vl_raio_min_pos_ini"  value="#{iimsg.AssetMailn_asset_vl_raio_min_pos_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_raio_min_pos_ini" tabindex="43"  value="#{cadAssetMailnBean.asset_vl_raio_min_pos_ini_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(13);bv('','asset_vl_raio_min_pos_ini','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_ini_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_pos_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_raio_min_pos_ini_nap" for="asset_vl_raio_min_pos_ini_nap"  value="#{iimsg.AssetMailn_asset_vl_raio_min_pos_ini_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_raio_min_pos_ini_nap" value="#{cadAssetMailnBean.asset_vl_raio_min_pos_ini_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(14);cleSubSel_uv('asset_vl_raio_min_pos_ini');bdcd('','asset_vl_raio_min_pos_ini_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="44" />
<h:commandButton id="asset_vl_raio_min_pos_ini_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_ini_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_pos_ini_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_raio_min_pos_ini_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_raio_min_pos_ini_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min_pos_fim" for="asset_vl_raio_min_pos_fim"  value="#{iimsg.AssetMailn_asset_vl_raio_min_pos_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_raio_min_pos_fim" tabindex="45"  value="#{cadAssetMailnBean.asset_vl_raio_min_pos_fim_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(15);bv('','asset_vl_raio_min_pos_fim','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_fim_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_pos_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_vl_raio_min_pos_fim_nap" for="asset_vl_raio_min_pos_fim_nap"  value="#{iimsg.AssetMailn_asset_vl_raio_min_pos_fim_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_vl_raio_min_pos_fim_nap" value="#{cadAssetMailnBean.asset_vl_raio_min_pos_fim_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(16);cleSubSel_uv('asset_vl_raio_min_pos_fim');bdcd('','asset_vl_raio_min_pos_fim_nap','3','TPNPI',this.value);;" size="14" maxlength="12" tabindex="46" />
<h:commandButton id="asset_vl_raio_min_pos_fim_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_fim_nap_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_raio_min_pos_fim_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_vl_raio_min_pos_fim_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_vl_raio_min_pos_fim_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetMailn_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" value="#{cadAssetMailnBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="47" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetMailn_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="48"  value="#{cadAssetMailnBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetMailnBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetMailn_attb_tt_trk_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trilho" for="asset_tp_trilho"  value="#{iimsg.AssetMailn_asset_tp_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trilho" value="#{cadAssetMailnBean.asset_tp_trilho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trilho','3','TRTPA',this.value);;" size="5" maxlength="3" tabindex="49" />
<h:commandButton id="asset_tp_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRTPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trilho_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_lg_compr_barra" for="asset_lg_compr_barra"  value="#{iimsg.AssetMailn_asset_lg_compr_barra_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_lg_compr_barra" tabindex="50"  value="#{cadAssetMailnBean.asset_lg_compr_barra_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_lg_compr_barra','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_lg_compr_barra_vc" flagType="val" flag="#{cadAssetMailnBean.asset_lg_compr_barra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ligacao" for="asset_tp_ligacao"  value="#{iimsg.AssetMailn_asset_tp_ligacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ligacao" value="#{cadAssetMailnBean.asset_tp_ligacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ligacao','3','TRITL',this.value);;" size="5" maxlength="3" tabindex="51" />
<h:commandButton id="asset_tp_ligacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ligacao_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_ligacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ligacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_ligacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_trilhos_arrdd" for="asset_ds_bp_trilhos_arrdd"  value="#{iimsg.AssetMailn_asset_ds_bp_trilhos_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_trilhos_arrdd" tabindex="52"  value="#{cadAssetMailnBean.asset_ds_bp_trilhos_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_trilhos_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_trilhos_arrdd_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ds_bp_trilhos_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetMailn_attb_tt_fix_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fixacao" for="asset_tp_fixacao"  value="#{iimsg.AssetMailn_asset_tp_fixacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fixacao" value="#{cadAssetMailnBean.asset_tp_fixacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fixacao','3','TRITF',this.value);;" size="5" maxlength="3" tabindex="53" />
<h:commandButton id="asset_tp_fixacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fixacao_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_fixacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fixacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_fixacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_fixacao_arrdd" for="asset_ds_bp_fixacao_arrdd"  value="#{iimsg.AssetMailn_asset_ds_bp_fixacao_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_fixacao_arrdd" tabindex="54"  value="#{cadAssetMailnBean.asset_ds_bp_fixacao_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_fixacao_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_fixacao_arrdd_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ds_bp_fixacao_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetMailn_attb_tt_drm_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_dormente" for="asset_tp_dormente"  value="#{iimsg.AssetMailn_asset_tp_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_dormente" value="#{cadAssetMailnBean.asset_tp_dormente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_dormente','3','TPDOR',this.value);;" size="5" maxlength="3" tabindex="55" />
<h:commandButton id="asset_tp_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDOR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_dormente_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_dormente_arrdd" for="asset_ds_bp_dormente_arrdd"  value="#{iimsg.AssetMailn_asset_ds_bp_dormente_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_dormente_arrdd" tabindex="56"  value="#{cadAssetMailnBean.asset_ds_bp_dormente_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_dormente_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_dormente_arrdd_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ds_bp_dormente_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetMailn_attb_tt_blt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_lastro" for="asset_tp_lastro"  value="#{iimsg.AssetMailn_asset_tp_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_lastro" value="#{cadAssetMailnBean.asset_tp_lastro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_lastro','3','TPLST',this.value);;" size="5" maxlength="3" tabindex="57" />
<h:commandButton id="asset_tp_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPLST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_lastro_vc" flagType="val" flag="#{cadAssetMailnBean.asset_tp_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetMailnBean.asset_tp_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_lastro_arrdd" for="asset_ds_bp_lastro_arrdd"  value="#{iimsg.AssetMailn_asset_ds_bp_lastro_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_ds_bp_lastro_arrdd" tabindex="58"  value="#{cadAssetMailnBean.asset_ds_bp_lastro_arrdd}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_bp_lastro_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_lastro_arrdd_vc" flagType="val" flag="#{cadAssetMailnBean.asset_ds_bp_lastro_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_altura_lastro" for="asset_vl_altura_lastro"  value="#{iimsg.AssetMailn_asset_vl_altura_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="350" class="pr5"> <h:inputText id="asset_vl_altura_lastro" tabindex="59"  value="#{cadAssetMailnBean.asset_vl_altura_lastro_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_vl_altura_lastro','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_vc" flagType="val" flag="#{cadAssetMailnBean.asset_vl_altura_lastro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
