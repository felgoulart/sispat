<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetLvlcrBean.canUpdate}" value="#{cadAssetLvlcrBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastat" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLvlcrBean.canUpdate}" action="#{cadAssetLvlcrBean.doValidate}" onmousedown="msgw('aMessageastat');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLvlcr_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetLvlcrBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetLvlcr_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetLvlcrBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLvlcr_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_transp_rodov" for="asset_nm_transp_rodov"  value="#{iimsg.AssetLvlcr_asset_nm_transp_rodov_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nm_transp_rodov" tabindex="32"  value="#{cadAssetLvlcrBean.asset_nm_transp_rodov}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_transp_rodov','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_transp_rodov_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_nm_transp_rodov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_autorizacao" for="asset_tp_autorizacao"  value="#{iimsg.AssetLvlcr_asset_tp_autorizacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_autorizacao" value="#{cadAssetLvlcrBean.asset_tp_autorizacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_autorizacao','3','AUTRZ',this.value);;" size="5" maxlength="3" tabindex="33" />
<h:commandButton id="asset_tp_autorizacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'AUTRZ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_autorizacao_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_autorizacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_autorizacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_autorizacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_passagem" for="asset_tp_passagem"  value="#{iimsg.AssetLvlcr_asset_tp_passagem_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_passagem" value="#{cadAssetLvlcrBean.asset_tp_passagem}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_passagem','3','TIDPN',this.value);;" size="7" maxlength="5" tabindex="34" />
<h:commandButton id="asset_tp_passagem_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIDPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_passagem_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_passagem_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_passagem_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_passagem_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trans_rod" for="asset_tp_trans_rod"  value="#{iimsg.AssetLvlcr_asset_tp_trans_rod_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trans_rod" value="#{cadAssetLvlcrBean.asset_tp_trans_rod}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trans_rod','3','TRROD',this.value);;" size="7" maxlength="5" tabindex="35" />
<h:commandButton id="asset_tp_trans_rod_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRROD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trans_rod_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_trans_rod_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trans_rod_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_trans_rod_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_trans_pista_sono" for="asset_in_trans_pista_sono"  value="#{iimsg.AssetLvlcr_asset_in_trans_pista_sono_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_trans_pista_sono_bol" value="#{cadAssetLvlcrBean.asset_in_trans_pista_sono}"/>
<h:selectBooleanCheckbox id="asset_in_trans_pista_sono" tabindex="36"  value="#{cadAssetLvlcrBean.asset_in_trans_pista_sono_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_trans_pista_sono_bol');"/>
<ps:psGraphicImage id="asset_in_trans_pista_sono_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_trans_pista_sono_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pistas" for="asset_qt_pistas"  value="#{iimsg.AssetLvlcr_asset_qt_pistas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_pistas" value="#{cadAssetLvlcrBean.asset_qt_pistas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_qt_pistas','3','NUPIS',this.value);;" size="5" maxlength="3" tabindex="37" />
<h:commandButton id="asset_qt_pistas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUPIS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_pistas_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_qt_pistas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_pistas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_qt_pistas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLvlcr_attb_tt_cct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetLvlcr_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cobertura" value="#{cadAssetLvlcrBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_cobertura','3','TPCOB',this.value);;" size="5" maxlength="3" tabindex="38" />
<h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCOB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cobertura_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_cobertura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_cobertura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetLvlcr_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_estrutura" value="#{cadAssetLvlcrBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_estrutura','3','TIPES',this.value);;" size="5" maxlength="3" tabindex="39" />
<h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_estrutura_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_estrutura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_parede" for="asset_tp_revest_int_parede"  value="#{iimsg.AssetLvlcr_asset_tp_revest_int_parede_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_parede" value="#{cadAssetLvlcrBean.asset_tp_revest_int_parede}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_parede','3','RVIPD',this.value);;" size="5" maxlength="3" tabindex="40" />
<h:commandButton id="asset_tp_revest_int_parede_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_parede_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_revest_int_parede_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_parede_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_revest_int_parede_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_piso" for="asset_tp_revest_int_piso"  value="#{iimsg.AssetLvlcr_asset_tp_revest_int_piso_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_piso" value="#{cadAssetLvlcrBean.asset_tp_revest_int_piso}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_piso','3','RVIPS',this.value);;" size="5" maxlength="3" tabindex="41" />
<h:commandButton id="asset_tp_revest_int_piso_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_piso_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_revest_int_piso_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_piso_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_revest_int_piso_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_porta" for="asset_tp_porta"  value="#{iimsg.AssetLvlcr_asset_tp_porta_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_porta" value="#{cadAssetLvlcrBean.asset_tp_porta}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_porta','3','PORTA',this.value);;" size="5" maxlength="3" tabindex="42" />
<h:commandButton id="asset_tp_porta_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PORTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_porta_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_porta_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_porta_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_porta_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_janela" for="asset_tp_janela"  value="#{iimsg.AssetLvlcr_asset_tp_janela_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_janela" value="#{cadAssetLvlcrBean.asset_tp_janela}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_janela','3','JANEL',this.value);;" size="5" maxlength="3" tabindex="43" />
<h:commandButton id="asset_tp_janela_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'JANEL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_janela_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_tp_janela_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_janela_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_tp_janela_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLvlcr_serv_tt_psv_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_agua_cfgenyn" for="asset_in_agua_cfgenyn"  value="#{iimsg.AssetLvlcr_asset_in_agua_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_agua_cfgenyn" value="#{cadAssetLvlcrBean.asset_in_agua_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_agua_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="44" />
<h:commandButton id="asset_in_agua_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_agua_cfgenyn_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_agua_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_agua_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_agua_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_luz_cfgenyn" for="asset_in_luz_cfgenyn"  value="#{iimsg.AssetLvlcr_asset_in_luz_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_luz_cfgenyn" value="#{cadAssetLvlcrBean.asset_in_luz_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_luz_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="45" />
<h:commandButton id="asset_in_luz_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_luz_cfgenyn_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_luz_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_luz_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_luz_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_telefonia" for="asset_in_telefonia"  value="#{iimsg.AssetLvlcr_asset_in_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_telefonia" value="#{cadAssetLvlcrBean.asset_in_telefonia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_telefonia','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="46" />
<h:commandButton id="asset_in_telefonia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_telefonia_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_telefonia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_telefonia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_telefonia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gas_cfgenyn" for="asset_in_gas_cfgenyn"  value="#{iimsg.AssetLvlcr_asset_in_gas_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gas_cfgenyn" value="#{cadAssetLvlcrBean.asset_in_gas_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_gas_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="47" />
<h:commandButton id="asset_in_gas_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gas_cfgenyn_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_gas_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gas_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_gas_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_lixo_cfgenyn" for="asset_in_lixo_cfgenyn"  value="#{iimsg.AssetLvlcr_asset_in_lixo_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_lixo_cfgenyn" value="#{cadAssetLvlcrBean.asset_in_lixo_cfgenyn}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_lixo_cfgenyn','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="48" />
<h:commandButton id="asset_in_lixo_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_lixo_cfgenyn_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_lixo_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_lixo_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_lixo_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_rede_logica" for="asset_in_rede_logica"  value="#{iimsg.AssetLvlcr_asset_in_rede_logica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_rede_logica" value="#{cadAssetLvlcrBean.asset_in_rede_logica}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_rede_logica','3','SNNID',this.value);;" size="5" maxlength="3" tabindex="49" />
<h:commandButton id="asset_in_rede_logica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_rede_logica_vc" flagType="val" flag="#{cadAssetLvlcrBean.asset_in_rede_logica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_rede_logica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLvlcrBean.asset_in_rede_logica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
