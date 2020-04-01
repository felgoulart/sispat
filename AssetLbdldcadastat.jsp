<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id4" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id4" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc4" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetLbdld_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="350"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acessibilidade" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acessibilidade','4','ACESS',this.value);;" size="7" maxlength="5" tabindex="67" />
<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ACESS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acessibilidade_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_acessibilidade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_acessibilidade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_topografia" for="asset_tp_topografia"  value="#{iimsg.AssetLbdld_asset_tp_topografia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_topografia" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_topografia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_topografia','4','TOPOG',this.value);;" size="7" maxlength="5" tabindex="68" />
<h:commandButton id="asset_tp_topografia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOPOG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_topografia_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_topografia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_topografia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_topografia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fechamento" for="asset_tp_fechamento"  value="#{iimsg.AssetLbdld_asset_tp_fechamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fechamento" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_fechamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fechamento','4','FHCAR',this.value);;" size="5" maxlength="3" tabindex="69" />
<h:commandButton id="asset_tp_fechamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'FHCAR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fechamento_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_fechamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fechamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_fechamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetLbdld_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ar_total" tabindex="70"  value="#{cadAssetLbdldBean.asset_ar_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_operacional" for="asset_ar_operacional"  value="#{iimsg.AssetLbdld_asset_ar_operacional_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ar_operacional" tabindex="71"  value="#{cadAssetLbdldBean.asset_ar_operacional_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_operacional','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_operacional_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_operacional_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_arrendada" for="asset_ar_arrendada"  value="#{iimsg.AssetLbdld_asset_ar_arrendada_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_ar_arrendada" tabindex="72"  value="#{cadAssetLbdldBean.asset_ar_arrendada_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_arrendada','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_arrendada_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_arrendada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_largura_media" for="asset_vl_largura_media"  value="#{iimsg.AssetLbdld_asset_vl_largura_media_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="600" class="pr5"> <h:inputText id="asset_vl_largura_media" tabindex="73"  value="#{cadAssetLbdldBean.asset_vl_largura_media_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_largura_media','4',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_largura_media_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_largura_media_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_attb_tt_cnf_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dadireita" for="asset_in_conf_dadireita"  value="#{iimsg.AssetLbdld_asset_in_conf_dadireita_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_in_conf_dadireita" tabindex="74"  value="#{cadAssetLbdldBean.asset_in_conf_dadireita}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_dadireita','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dadireita_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_conf_dadireita_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_daesquerda" for="asset_in_conf_daesquerda"  value="#{iimsg.AssetLbdld_asset_in_conf_daesquerda_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_in_conf_daesquerda" tabindex="75"  value="#{cadAssetLbdldBean.asset_in_conf_daesquerda}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_daesquerda','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_daesquerda_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_conf_daesquerda_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_conf_dosfundos" for="asset_in_conf_dosfundos"  value="#{iimsg.AssetLbdld_asset_in_conf_dosfundos_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="350"   >
<h:inputText id="asset_in_conf_dosfundos" tabindex="76"  value="#{cadAssetLbdldBean.asset_in_conf_dosfundos}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_in_conf_dosfundos','4',this.value);"/>
<ps:psGraphicImage id="asset_in_conf_dosfundos_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_conf_dosfundos_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="8" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_serv_tt_psv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_agua_cfgenyn" for="asset_in_agua_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_agua_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_agua_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_agua_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_agua_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="77" />
<h:commandButton id="asset_in_agua_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_agua_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_agua_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_agua_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_agua_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_luz_cfgenyn" for="asset_in_luz_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_luz_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_luz_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_luz_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_luz_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="78" />
<h:commandButton id="asset_in_luz_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_luz_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_luz_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_luz_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_luz_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_telefonia" for="asset_in_telefonia"  value="#{iimsg.AssetLbdld_asset_in_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_telefonia" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_telefonia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_telefonia','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="79" />
<h:commandButton id="asset_in_telefonia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_telefonia_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_telefonia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_telefonia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_telefonia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gas_cfgenyn" for="asset_in_gas_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_gas_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gas_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_gas_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_gas_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="80" />
<h:commandButton id="asset_in_gas_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gas_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_gas_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gas_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_gas_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lixo_cfgenyn" for="asset_in_lixo_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_lixo_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_lixo_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_lixo_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_lixo_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="81" />
<h:commandButton id="asset_in_lixo_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_lixo_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_lixo_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_lixo_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_lixo_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_rede_logica" for="asset_in_rede_logica"  value="#{iimsg.AssetLbdld_asset_in_rede_logica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_rede_logica" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_rede_logica}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_rede_logica','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="82" />
<h:commandButton id="asset_in_rede_logica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_rede_logica_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_rede_logica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_rede_logica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_rede_logica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="8" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_serv_tt_csv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_transporte_cfgenyn" for="asset_in_transporte_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_transporte_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_transporte_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_transporte_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_transporte_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="83" />
<h:commandButton id="asset_in_transporte_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_transporte_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_transporte_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_transporte_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_transporte_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_comercio_cfgenyn" for="asset_in_comercio_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_comercio_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_comercio_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_comercio_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_comercio_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="84" />
<h:commandButton id="asset_in_comercio_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_comercio_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_comercio_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_comercio_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_comercio_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_escola_cfgenyn" for="asset_in_escola_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_escola_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_escola_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_escola_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_escola_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="85" />
<h:commandButton id="asset_in_escola_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_escola_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_escola_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_escola_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_escola_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_seguranca_cfgenyn" for="asset_in_seguranca_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_seguranca_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_seguranca_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_seguranca_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_seguranca_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="86" />
<h:commandButton id="asset_in_seguranca_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_seguranca_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_seguranca_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_seguranca_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_seguranca_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_hospital_cfgenyn" for="asset_in_hospital_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_hospital_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_hospital_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_hospital_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_hospital_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="87" />
<h:commandButton id="asset_in_hospital_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_hospital_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_hospital_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_hospital_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_hospital_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lazer_cfgenyn" for="asset_in_lazer_cfgenyn"  value="#{iimsg.AssetLbdld_asset_in_lazer_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_lazer_cfgenyn" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_in_lazer_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_lazer_cfgenyn','4','SNNID',this.value);;" size="5" maxlength="3" tabindex="88" />
<h:commandButton id="asset_in_lazer_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_lazer_cfgenyn_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_in_lazer_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_lazer_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_in_lazer_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
