<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetYrdldBean.canUpdate}" value="#{cadAssetYrdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetYrdldBean.canUpdate}" action="#{cadAssetYrdldBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetYrdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetYrdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_topografia" for="asset_tp_topografia"  value="#{iimsg.AssetYrdld_asset_tp_topografia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_topografia" value="#{cadAssetYrdldBean.asset_tp_topografia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_topografia','3','TOPOG',this.value);;" size="7" maxlength="5" tabindex="42" />
<h:commandButton id="asset_tp_topografia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOPOG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_topografia_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_topografia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_topografia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_topografia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fechamento" for="asset_tp_fechamento"  value="#{iimsg.AssetYrdld_asset_tp_fechamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fechamento" value="#{cadAssetYrdldBean.asset_tp_fechamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fechamento','3','FHCAR',this.value);;" size="5" maxlength="3" tabindex="43" />
<h:commandButton id="asset_tp_fechamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'FHCAR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fechamento_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_fechamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fechamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_fechamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetYrdld_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="650" class="pr5"> <h:inputText id="asset_ar_total" tabindex="44"  value="#{cadAssetYrdldBean.asset_ar_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ar_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetYrdld_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acessibilidade" value="#{cadAssetYrdldBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acessibilidade','3','SN',this.value);;" size="7" maxlength="5" tabindex="45" />
<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acessibilidade_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_acessibilidade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_acessibilidade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_operacional" for="asset_ar_operacional"  value="#{iimsg.AssetYrdld_asset_ar_operacional_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="650" class="pr5"> <h:inputText id="asset_ar_operacional" tabindex="46"  value="#{cadAssetYrdldBean.asset_ar_operacional_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_operacional','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_operacional_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ar_operacional_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_arrendada" for="asset_ar_arrendada"  value="#{iimsg.AssetYrdld_asset_ar_arrendada_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ar_arrendada" tabindex="47"  value="#{cadAssetYrdldBean.asset_ar_arrendada_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_arrendada','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_arrendada_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ar_arrendada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_attb_tt_cnf_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dadireita" for="asset_in_conf_dadireita"  value="#{iimsg.AssetYrdld_asset_in_conf_dadireita_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="650"   >
<h:inputText id="asset_in_conf_dadireita" tabindex="48"  value="#{cadAssetYrdldBean.asset_in_conf_dadireita}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_dadireita','3',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dadireita_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_conf_dadireita_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_daesquerda" for="asset_in_conf_daesquerda"  value="#{iimsg.AssetYrdld_asset_in_conf_daesquerda_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_in_conf_daesquerda" tabindex="49"  value="#{cadAssetYrdldBean.asset_in_conf_daesquerda}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_daesquerda','3',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_daesquerda_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_conf_daesquerda_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dosfundos" for="asset_in_conf_dosfundos"  value="#{iimsg.AssetYrdld_asset_in_conf_dosfundos_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="asset_in_conf_dosfundos" tabindex="50"  value="#{cadAssetYrdldBean.asset_in_conf_dosfundos}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_dosfundos','3',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dosfundos_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_conf_dosfundos_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="8" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_serv_tt_psv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_agua_cfgenyn" for="asset_in_agua_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_agua_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_agua_cfgenyn" value="#{cadAssetYrdldBean.asset_in_agua_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_agua_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="51" />
<h:commandButton id="asset_in_agua_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_agua_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_agua_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_agua_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_agua_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_luz_cfgenyn" for="asset_in_luz_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_luz_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_luz_cfgenyn" value="#{cadAssetYrdldBean.asset_in_luz_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_luz_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="52" />
<h:commandButton id="asset_in_luz_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_luz_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_luz_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_luz_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_luz_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_telefonia" for="asset_in_telefonia"  value="#{iimsg.AssetYrdld_asset_in_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_telefonia" value="#{cadAssetYrdldBean.asset_in_telefonia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_telefonia','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="53" />
<h:commandButton id="asset_in_telefonia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_telefonia_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_telefonia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_telefonia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_telefonia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gas_cfgenyn" for="asset_in_gas_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_gas_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gas_cfgenyn" value="#{cadAssetYrdldBean.asset_in_gas_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_gas_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="54" />
<h:commandButton id="asset_in_gas_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gas_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_gas_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gas_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_gas_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lixo_cfgenyn" for="asset_in_lixo_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_lixo_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_lixo_cfgenyn" value="#{cadAssetYrdldBean.asset_in_lixo_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_lixo_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="55" />
<h:commandButton id="asset_in_lixo_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_lixo_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_lixo_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_lixo_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_lixo_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_rede_logica" for="asset_in_rede_logica"  value="#{iimsg.AssetYrdld_asset_in_rede_logica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_rede_logica" value="#{cadAssetYrdldBean.asset_in_rede_logica}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_rede_logica','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="56" />
<h:commandButton id="asset_in_rede_logica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_rede_logica_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_rede_logica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_rede_logica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_rede_logica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="8" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_serv_tt_csv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_transporte_cfgenyn" for="asset_in_transporte_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_transporte_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_transporte_cfgenyn" value="#{cadAssetYrdldBean.asset_in_transporte_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_transporte_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="57" />
<h:commandButton id="asset_in_transporte_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_transporte_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_transporte_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_transporte_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_transporte_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_escola_cfgenyn" for="asset_in_escola_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_escola_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_escola_cfgenyn" value="#{cadAssetYrdldBean.asset_in_escola_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_escola_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="58" />
<h:commandButton id="asset_in_escola_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_escola_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_escola_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_escola_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_escola_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_seguranca_cfgenyn" for="asset_in_seguranca_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_seguranca_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_seguranca_cfgenyn" value="#{cadAssetYrdldBean.asset_in_seguranca_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_seguranca_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="59" />
<h:commandButton id="asset_in_seguranca_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_seguranca_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_seguranca_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_seguranca_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_seguranca_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_hospital_cfgenyn" for="asset_in_hospital_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_hospital_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_hospital_cfgenyn" value="#{cadAssetYrdldBean.asset_in_hospital_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_hospital_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="60" />
<h:commandButton id="asset_in_hospital_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_hospital_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_hospital_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_hospital_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_hospital_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lazer_cfgenyn" for="asset_in_lazer_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_lazer_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="450"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_lazer_cfgenyn" value="#{cadAssetYrdldBean.asset_in_lazer_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_lazer_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="61" />
<h:commandButton id="asset_in_lazer_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_lazer_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_lazer_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_lazer_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_lazer_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
