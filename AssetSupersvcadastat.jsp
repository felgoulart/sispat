<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastat" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastat" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastat');">
<ps:psGraphicImage id="iMessageastat" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id3" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id3" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc3" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_attb_tt_pct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tipologia" for="asset_tp_tipologia"  value="#{iimsg.AssetSupersv_asset_tp_tipologia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tipologia" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_tipologia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tipologia','3','TIPOL',this.value);;" size="7" maxlength="5" tabindex="56" />
<h:commandButton id="asset_tp_tipologia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tipologia_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_tipologia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tipologia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_tipologia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_utilizacao" for="asset_tp_utilizacao"  value="#{iimsg.AssetSupersv_asset_tp_utilizacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_utilizacao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_utilizacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_utilizacao','3','TIUTI',this.value);;" size="7" maxlength="5" tabindex="57" />
<h:commandButton id="asset_tp_utilizacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIUTI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_utilizacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_utilizacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_utilizacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_utilizacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_asst" for="asset_in_asst"  value="#{iimsg.AssetSupersv_asset_in_asst_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_asst_bol" value="#{cadAssetSupersvBean.asset_in_asst}"/>
<h:selectBooleanCheckbox id="asset_in_asst" tabindex="58"  value="#{cadAssetSupersvBean.asset_in_asst_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_asst_bol');"/>
<ps:psGraphicImage id="asset_in_asst_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_asst_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_imovel_asst" for="asset_nu_imovel_asst"  value="#{iimsg.AssetSupersv_asset_nu_imovel_asst_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_imovel_asst" tabindex="59"  value="#{cadAssetSupersvBean.asset_nu_imovel_asst}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_imovel_asst','3',this.value);"/>
<ps:psGraphicImage id="asset_nu_imovel_asst_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_imovel_asst_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetSupersv_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_zona_cflczon','3','LOCZO',this.value);;" size="7" maxlength="5" tabindex="60" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetSupersv_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acessibilidade" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acessibilidade','3','ACESS',this.value);;" size="7" maxlength="5" tabindex="61" />
<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ACESS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acessibilidade_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_acessibilidade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_acessibilidade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_formato" for="asset_tp_formato"  value="#{iimsg.AssetSupersv_asset_tp_formato_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_formato" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_formato}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_formato','3','TRRFO',this.value);;" size="7" maxlength="5" tabindex="62" />
<h:commandButton id="asset_tp_formato_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRRFO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_formato_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_formato_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_formato_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_formato_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_passagem" for="asset_tp_passagem"  value="#{iimsg.AssetSupersv_asset_tp_passagem_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_passagem" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_passagem}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_passagem','3','TIDPN',this.value);;" size="7" maxlength="5" tabindex="63" />
<h:commandButton id="asset_tp_passagem_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIDPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_passagem_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_passagem_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_passagem_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_passagem_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trans_rod" for="asset_tp_trans_rod"  value="#{iimsg.AssetSupersv_asset_tp_trans_rod_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trans_rod" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_trans_rod}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_trans_rod','3','TRROD',this.value);;" size="7" maxlength="5" tabindex="64" />
<h:commandButton id="asset_tp_trans_rod_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRROD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trans_rod_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_trans_rod_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trans_rod_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_trans_rod_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_trans_pista_sono" for="asset_in_trans_pista_sono"  value="#{iimsg.AssetSupersv_asset_in_trans_pista_sono_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_trans_pista_sono_bol" value="#{cadAssetSupersvBean.asset_in_trans_pista_sono}"/>
<h:selectBooleanCheckbox id="asset_in_trans_pista_sono" tabindex="65"  value="#{cadAssetSupersvBean.asset_in_trans_pista_sono_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_trans_pista_sono_bol');"/>
<ps:psGraphicImage id="asset_in_trans_pista_sono_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_trans_pista_sono_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_attb_tt_cct_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_padrao_construtivo" for="asset_cd_padrao_construtivo"  value="#{iimsg.AssetSupersv_asset_cd_padrao_construtivo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_padrao_construtivo" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_padrao_construtivo}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_padrao_construtivo','3','EDPCT',this.value);;" size="5" maxlength="3" tabindex="66" />
<h:commandButton id="asset_cd_padrao_construtivo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDPCT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_padrao_construtivo_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_padrao_construtivo_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_padrao_construtivo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_padrao_construtivo_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_padrao_construtivo_ed" for="asset_cd_padrao_construtivo_ed"  value="#{iimsg.AssetSupersv_asset_cd_padrao_construtivo_ed_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_padrao_construtivo_ed" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_padrao_construtivo_ed}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_padrao_construtivo_ed','3','EDPDC',this.value);;" size="5" maxlength="3" tabindex="67" />
<h:commandButton id="asset_cd_padrao_construtivo_ed_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDPDC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_padrao_construtivo_ed_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_padrao_construtivo_ed_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_padrao_construtivo_ed_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_padrao_construtivo_ed_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetSupersv_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_aa_construcao" tabindex="68"  value="#{cadAssetSupersvBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_aa_construcao','3',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ii_aparente" for="asset_ii_aparente"  value="#{iimsg.AssetSupersv_asset_ii_aparente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ii_aparente" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_ii_aparente}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_ii_aparente','3','EDIDA',this.value);;" size="5" maxlength="3" tabindex="69" />
<h:commandButton id="asset_ii_aparente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDIDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ii_aparente_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ii_aparente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ii_aparente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_ii_aparente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pavimentos" for="asset_qt_pavimentos"  value="#{iimsg.AssetSupersv_asset_qt_pavimentos_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="600"  > <h:inputText id="asset_qt_pavimentos" tabindex="70"  value="#{cadAssetSupersvBean.asset_qt_pavimentos}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','asset_qt_pavimentos','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_pavimentos_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_qt_pavimentos_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetSupersv_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_estrutura" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_estrutura','3','TIPES',this.value);;" size="5" maxlength="3" tabindex="71" />
<h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_estrutura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_estrutura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_parede" for="asset_tp_revest_int_parede"  value="#{iimsg.AssetSupersv_asset_tp_revest_int_parede_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_parede" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_revest_int_parede}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_parede','3','RVIPD',this.value);;" size="5" maxlength="3" tabindex="72" />
<h:commandButton id="asset_tp_revest_int_parede_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_parede_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_revest_int_parede_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_parede_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_revest_int_parede_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_piso" for="asset_tp_revest_int_piso"  value="#{iimsg.AssetSupersv_asset_tp_revest_int_piso_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_piso" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_revest_int_piso}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_piso','3','RVIPS',this.value);;" size="5" maxlength="3" tabindex="73" />
<h:commandButton id="asset_tp_revest_int_piso_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_piso_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_revest_int_piso_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_piso_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_revest_int_piso_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_externo" for="asset_tp_revest_externo"  value="#{iimsg.AssetSupersv_asset_tp_revest_externo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_externo" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_revest_externo}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_externo','3','RVEXT',this.value);;" size="5" maxlength="3" tabindex="74" />
<h:commandButton id="asset_tp_revest_externo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVEXT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_externo_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_revest_externo_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_externo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_revest_externo_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_esquadrias" for="asset_tp_esquadrias"  value="#{iimsg.AssetSupersv_asset_tp_esquadrias_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_esquadrias" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_esquadrias}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_esquadrias','3','ESQUA',this.value);;" size="5" maxlength="3" tabindex="75" />
<h:commandButton id="asset_tp_esquadrias_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ESQUA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_esquadrias_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_esquadrias_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_esquadrias_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_esquadrias_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetSupersv_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cobertura" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_cobertura','3','COBTR',this.value);;" size="5" maxlength="3" tabindex="76" />
<h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COBTR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cobertura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_cobertura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_cobertura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_inst_eletricas" for="asset_tp_inst_eletricas"  value="#{iimsg.AssetSupersv_asset_tp_inst_eletricas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_tp_inst_eletricas_bol" value="#{cadAssetSupersvBean.asset_tp_inst_eletricas}"/>
<h:selectBooleanCheckbox id="asset_tp_inst_eletricas" tabindex="77"  value="#{cadAssetSupersvBean.asset_tp_inst_eletricas_bol}" onclick="chkBoolean(this, 'cadForm:asset_tp_inst_eletricas_bol');"/>
<ps:psGraphicImage id="asset_tp_inst_eletricas_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_inst_eletricas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_inst_hidraulicas" for="asset_tp_inst_hidraulicas"  value="#{iimsg.AssetSupersv_asset_tp_inst_hidraulicas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_tp_inst_hidraulicas_bol" value="#{cadAssetSupersvBean.asset_tp_inst_hidraulicas}"/>
<h:selectBooleanCheckbox id="asset_tp_inst_hidraulicas" tabindex="78"  value="#{cadAssetSupersvBean.asset_tp_inst_hidraulicas_bol}" onclick="chkBoolean(this, 'cadForm:asset_tp_inst_hidraulicas_bol');"/>
<ps:psGraphicImage id="asset_tp_inst_hidraulicas_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_inst_hidraulicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_telefonia" for="asset_tp_telefonia"  value="#{iimsg.AssetSupersv_asset_tp_telefonia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_tp_telefonia_bol" value="#{cadAssetSupersvBean.asset_tp_telefonia}"/>
<h:selectBooleanCheckbox id="asset_tp_telefonia" tabindex="79"  value="#{cadAssetSupersvBean.asset_tp_telefonia_bol}" onclick="chkBoolean(this, 'cadForm:asset_tp_telefonia_bol');"/>
<ps:psGraphicImage id="asset_tp_telefonia_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_telefonia_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_rede_logica" for="asset_tp_rede_logica"  value="#{iimsg.AssetSupersv_asset_tp_rede_logica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_rede_logica" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_rede_logica}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_rede_logica','3','REDLG',this.value);;" size="5" maxlength="3" tabindex="80" />
<h:commandButton id="asset_tp_rede_logica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'REDLG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_rede_logica_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_rede_logica_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_rede_logica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_rede_logica_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fechamento" for="asset_tp_fechamento"  value="#{iimsg.AssetSupersv_asset_tp_fechamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fechamento" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_fechamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_fechamento','3','FHCAR',this.value);;" size="5" maxlength="3" tabindex="81" />
<h:commandButton id="asset_tp_fechamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'FHCAR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fechamento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_fechamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fechamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_fechamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_topografia" for="asset_tp_topografia"  value="#{iimsg.AssetSupersv_asset_tp_topografia_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_topografia" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_topografia}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_topografia','3','TOPOG',this.value);;" size="7" maxlength="5" tabindex="82" />
<h:commandButton id="asset_tp_topografia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOPOG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_topografia_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_topografia_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_topografia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_topografia_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_attb_tt_ars_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetSupersv_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_total" tabindex="83"  value="#{cadAssetSupersvBean.asset_ar_total_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_operacional" for="asset_ar_operacional"  value="#{iimsg.AssetSupersv_asset_ar_operacional_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_operacional" tabindex="84"  value="#{cadAssetSupersvBean.asset_ar_operacional_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_operacional','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_operacional_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_operacional_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_arrendada" for="asset_ar_arrendada"  value="#{iimsg.AssetSupersv_asset_ar_arrendada_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_arrendada" tabindex="85"  value="#{cadAssetSupersvBean.asset_ar_arrendada_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_arrendada','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_arrendada_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_arrendada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_edit_ferrov" for="asset_ar_edit_ferrov"  value="#{iimsg.AssetSupersv_asset_ar_edit_ferrov_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_edit_ferrov" tabindex="86"  value="#{cadAssetSupersvBean.asset_ar_edit_ferrov_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_edit_ferrov','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_edit_ferrov_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_edit_ferrov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total_edifprop" for="asset_ar_total_edifprop"  value="#{iimsg.AssetSupersv_asset_ar_total_edifprop_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_total_edifprop" tabindex="87"  value="#{cadAssetSupersvBean.asset_ar_total_edifprop_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total_edifprop','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_edifprop_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_total_edifprop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total_edifterc" for="asset_ar_total_edifterc"  value="#{iimsg.AssetSupersv_asset_ar_total_edifterc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ar_total_edifterc" tabindex="88"  value="#{cadAssetSupersvBean.asset_ar_total_edifterc_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total_edifterc','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_edifterc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ar_total_edifterc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_largura_media" for="asset_vl_largura_media"  value="#{iimsg.AssetSupersv_asset_vl_largura_media_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_largura_media" tabindex="89"  value="#{cadAssetSupersvBean.asset_vl_largura_media_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_vl_largura_media','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_largura_media_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_largura_media_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ex_total" for="asset_ex_total"  value="#{iimsg.AssetSupersv_asset_ex_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_ex_total" tabindex="90"  value="#{cadAssetSupersvBean.asset_ex_total_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_ex_total','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ex_total_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ex_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_lg_compr_barra" for="asset_lg_compr_barra"  value="#{iimsg.AssetSupersv_asset_lg_compr_barra_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_lg_compr_barra" tabindex="91"  value="#{cadAssetSupersvBean.asset_lg_compr_barra_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_lg_compr_barra','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_lg_compr_barra_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_lg_compr_barra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_vert" for="asset_vl_gabarito_vert"  value="#{iimsg.AssetSupersv_asset_vl_gabarito_vert_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_gabarito_vert" tabindex="92"  value="#{cadAssetSupersvBean.asset_vl_gabarito_vert_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_vert','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_vert_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_gabarito_vert_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_gabarito_horz" for="asset_vl_gabarito_horz"  value="#{iimsg.AssetSupersv_asset_vl_gabarito_horz_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_gabarito_horz" tabindex="93"  value="#{cadAssetSupersvBean.asset_vl_gabarito_horz_str}"  styleClass="tbx" size="16" maxlength="14" onchange="bv('','asset_vl_gabarito_horz','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_gabarito_horz_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_gabarito_horz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_pos_amontante" for="asset_tp_pos_amontante"  value="#{iimsg.AssetSupersv_asset_tp_pos_amontante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_pos_amontante" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_pos_amontante}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_pos_amontante','3','PSMNT',this.value);;" size="5" maxlength="3" tabindex="94" />
<h:commandButton id="asset_tp_pos_amontante_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PSMNT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_pos_amontante_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_pos_amontante_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_pos_amontante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_pos_amontante_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_ala_amontante" for="asset_in_ala_amontante"  value="#{iimsg.AssetSupersv_asset_in_ala_amontante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_ala_amontante_bol" value="#{cadAssetSupersvBean.asset_in_ala_amontante}"/>
<h:selectBooleanCheckbox id="asset_in_ala_amontante" tabindex="95"  value="#{cadAssetSupersvBean.asset_in_ala_amontante_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ala_amontante_bol');"/>
<ps:psGraphicImage id="asset_in_ala_amontante_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_ala_amontante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_transp_rodov" for="asset_nm_transp_rodov"  value="#{iimsg.AssetSupersv_asset_nm_transp_rodov_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nm_transp_rodov" tabindex="96"  value="#{cadAssetSupersvBean.asset_nm_transp_rodov}" size="27" maxlength="25"  styleClass="tbx" onchange="bv('','asset_nm_transp_rodov','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_transp_rodov_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nm_transp_rodov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_autorizacao" for="asset_tp_autorizacao"  value="#{iimsg.AssetSupersv_asset_tp_autorizacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_autorizacao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_autorizacao}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_autorizacao','3','AUTRZ',this.value);;" size="5" maxlength="3" tabindex="97" />
<h:commandButton id="asset_tp_autorizacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'AUTRZ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_autorizacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_autorizacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_autorizacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_autorizacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cruzamento" for="asset_tp_cruzamento"  value="#{iimsg.AssetSupersv_asset_tp_cruzamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cruzamento" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_cruzamento}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_cruzamento','3','TICRZ',this.value);;" size="5" maxlength="3" tabindex="98" />
<h:commandButton id="asset_tp_cruzamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TICRZ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cruzamento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_cruzamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cruzamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_cruzamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_menor_angulo" for="asset_vl_menor_angulo"  value="#{iimsg.AssetSupersv_asset_vl_menor_angulo_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_vl_menor_angulo" tabindex="99"  value="#{cadAssetSupersvBean.asset_vl_menor_angulo}"  styleClass="tbx" size="6" maxlength="4" onchange="bv('','asset_vl_menor_angulo','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_vl_menor_angulo_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_menor_angulo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_vel_max_auto" for="asset_vl_vel_max_auto"  value="#{iimsg.AssetSupersv_asset_vl_vel_max_auto_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_vl_vel_max_auto" tabindex="100"  value="#{cadAssetSupersvBean.asset_vl_vel_max_auto}"  styleClass="tbx" size="7" maxlength="5" onchange="bv('','asset_vl_vel_max_auto','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_vl_vel_max_auto_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_vel_max_auto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_maq_sem" for="asset_in_sin_maq_sem"  value="#{iimsg.AssetSupersv_asset_in_sin_maq_sem_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_maq_sem" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_maq_sem}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_maq_sem','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="101" />
<h:commandButton id="asset_in_sin_maq_sem_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_maq_sem_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_maq_sem_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_maq_sem_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_maq_sem_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_maq_plc" for="asset_in_sin_maq_plc"  value="#{iimsg.AssetSupersv_asset_in_sin_maq_plc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_maq_plc" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_maq_plc}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_maq_plc','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="102" />
<h:commandButton id="asset_in_sin_maq_plc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_maq_plc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_maq_plc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_maq_plc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_maq_plc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_maq_avs" for="asset_in_sin_maq_avs"  value="#{iimsg.AssetSupersv_asset_in_sin_maq_avs_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_maq_avs" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_maq_avs}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_maq_avs','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="103" />
<h:commandButton id="asset_in_sin_maq_avs_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_maq_avs_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_maq_avs_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_maq_avs_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_maq_avs_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_maq_ccl" for="asset_in_sin_maq_ccl"  value="#{iimsg.AssetSupersv_asset_in_sin_maq_ccl_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_maq_ccl" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_maq_ccl}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_maq_ccl','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="104" />
<h:commandButton id="asset_in_sin_maq_ccl_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_maq_ccl_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_maq_ccl_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_maq_ccl_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_maq_ccl_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_dist_ate_sin" for="asset_vl_dist_ate_sin"  value="#{iimsg.AssetSupersv_asset_vl_dist_ate_sin_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_dist_ate_sin" tabindex="105"  value="#{cadAssetSupersvBean.asset_vl_dist_ate_sin_str}"  styleClass="tbx" size="10" maxlength="8" onchange="bv('','asset_vl_dist_ate_sin','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_dist_ate_sin_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_dist_ate_sin_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_plc" for="asset_in_sin_trp_plc"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_plc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_plc" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_plc}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_plc','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="106" />
<h:commandButton id="asset_in_sin_trp_plc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_plc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_plc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_plc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_plc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_lum" for="asset_in_sin_trp_lum"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_lum_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_lum" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_lum}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_lum','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="107" />
<h:commandButton id="asset_in_sin_trp_lum_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_lum_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_lum_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_lum_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_lum_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_ssn" for="asset_in_sin_trp_ssn"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_ssn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_ssn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_ssn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_ssn','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="108" />
<h:commandButton id="asset_in_sin_trp_ssn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_ssn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_ssn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_ssn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_ssn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_cau" for="asset_in_sin_trp_cau"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_cau_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_cau" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_cau}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_cau','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="109" />
<h:commandButton id="asset_in_sin_trp_cau_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_cau_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_cau_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_cau_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_cau_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_cmn" for="asset_in_sin_trp_cmn"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_cmn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_cmn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_cmn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_cmn','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="110" />
<h:commandButton id="asset_in_sin_trp_cmn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_cmn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_cmn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_cmn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_cmn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_psn" for="asset_in_sin_trp_psn"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_psn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_psn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_psn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_psn','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="111" />
<h:commandButton id="asset_in_sin_trp_psn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_psn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_psn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_psn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_psn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sin_trp_cot" for="asset_in_sin_trp_cot"  value="#{iimsg.AssetSupersv_asset_in_sin_trp_cot_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sin_trp_cot" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sin_trp_cot}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sin_trp_cot','3','GENYN',this.value);;" size="5" maxlength="3" tabindex="112" />
<h:commandButton id="asset_in_sin_trp_cot_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sin_trp_cot_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sin_trp_cot_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sin_trp_cot_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sin_trp_cot_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_emboque_ini" for="asset_tp_emboque_ini"  value="#{iimsg.AssetSupersv_asset_tp_emboque_ini_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_emboque_ini" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_emboque_ini}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_emboque_ini','3','EBQTP',this.value);;" size="5" maxlength="3" tabindex="113" />
<h:commandButton id="asset_tp_emboque_ini_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EBQTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_emboque_ini_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_emboque_ini_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_emboque_ini_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_emboque_ini_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_emboque_fin" for="asset_tp_emboque_fin"  value="#{iimsg.AssetSupersv_asset_tp_emboque_fin_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_emboque_fin" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_emboque_fin}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_emboque_fin','3','EBQTP',this.value);;" size="5" maxlength="3" tabindex="114" />
<h:commandButton id="asset_tp_emboque_fin_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EBQTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_emboque_fin_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_emboque_fin_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_emboque_fin_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_emboque_fin_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_drenagem_int" for="asset_tp_drenagem_int"  value="#{iimsg.AssetSupersv_asset_tp_drenagem_int_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_drenagem_int" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_drenagem_int}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_drenagem_int','3','DRNTP',this.value);;" size="5" maxlength="3" tabindex="115" />
<h:commandButton id="asset_tp_drenagem_int_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'DRNTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_drenagem_int_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_drenagem_int_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_drenagem_int_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_drenagem_int_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_refugio" for="asset_in_refugio"  value="#{iimsg.AssetSupersv_asset_in_refugio_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_refugio_bol" value="#{cadAssetSupersvBean.asset_in_refugio}"/>
<h:selectBooleanCheckbox id="asset_in_refugio" tabindex="116"  value="#{cadAssetSupersvBean.asset_in_refugio_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_refugio_bol');"/>
<ps:psGraphicImage id="asset_in_refugio_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_refugio_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_refugios" for="asset_nr_refugios"  value="#{iimsg.AssetSupersv_asset_nr_refugios_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_refugios" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_nr_refugios}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_nr_refugios','3','QTRFG',this.value);;" size="5" maxlength="3" tabindex="117" />
<h:commandButton id="asset_nr_refugios_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'QTRFG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_refugios_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nr_refugios_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_refugios_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_nr_refugios_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nr_vias_ferreas" for="asset_nr_vias_ferreas"  value="#{iimsg.AssetSupersv_asset_nr_vias_ferreas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nr_vias_ferreas" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_nr_vias_ferreas}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_nr_vias_ferreas','3','NUMVF',this.value);;" size="5" maxlength="3" tabindex="118" />
<h:commandButton id="asset_nr_vias_ferreas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUMVF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nr_vias_ferreas_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nr_vias_ferreas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nr_vias_ferreas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_nr_vias_ferreas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_bitola" for="asset_tp_bitola"  value="#{iimsg.AssetSupersv_asset_tp_bitola_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_bitola" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_bitola}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_bitola','3','BITOL',this.value);;" size="5" maxlength="3" tabindex="119" />
<h:commandButton id="asset_tp_bitola_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'BITOL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_bitola_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_bitola_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_bitola_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_bitola_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tracado_planta" for="asset_tp_tracado_planta"  value="#{iimsg.AssetSupersv_asset_tp_tracado_planta_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tracado_planta" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_tracado_planta}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_tracado_planta','3','TCPLA',this.value);;" size="5" maxlength="3" tabindex="120" />
<h:commandButton id="asset_tp_tracado_planta_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TCPLA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tracado_planta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_tracado_planta_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tracado_planta_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_tracado_planta_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_trilho" for="asset_tp_trilho"  value="#{iimsg.AssetSupersv_asset_tp_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_trilho" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_trilho}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_trilho','3','TRTPA',this.value);;" size="5" maxlength="3" tabindex="121" />
<h:commandButton id="asset_tp_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRTPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_trilho_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_dormente" for="asset_tp_dormente"  value="#{iimsg.AssetSupersv_asset_tp_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_dormente" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_dormente}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_dormente','3','TPDOR',this.value);;" size="5" maxlength="3" tabindex="122" />
<h:commandButton id="asset_tp_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDOR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_dormente_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_fixacao" for="asset_tp_fixacao"  value="#{iimsg.AssetSupersv_asset_tp_fixacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_fixacao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_fixacao}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_fixacao','3','TRITF',this.value);;" size="5" maxlength="3" tabindex="123" />
<h:commandButton id="asset_tp_fixacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_fixacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_fixacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_fixacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_fixacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ligacao" for="asset_tp_ligacao"  value="#{iimsg.AssetSupersv_asset_tp_ligacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ligacao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_ligacao}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_ligacao','3','TRITL',this.value);;" size="5" maxlength="3" tabindex="124" />
<h:commandButton id="asset_tp_ligacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRITL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ligacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_ligacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ligacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_ligacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_lastro" for="asset_tp_lastro"  value="#{iimsg.AssetSupersv_asset_tp_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_lastro" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_lastro}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_lastro','3','TPLST',this.value);;" size="5" maxlength="3" tabindex="125" />
<h:commandButton id="asset_tp_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPLST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_lastro_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_altura_lastro" for="asset_vl_altura_lastro"  value="#{iimsg.AssetSupersv_asset_vl_altura_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_altura_lastro" tabindex="126"  value="#{cadAssetSupersvBean.asset_vl_altura_lastro_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_altura_lastro','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_altura_lastro_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_altura_lastro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_estrutura" for="asset_st_estrutura"  value="#{iimsg.AssetSupersv_asset_st_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_estrutura" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_estrutura}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_estrutura','3','CONVE',this.value);;" size="5" maxlength="3" tabindex="127" />
<h:commandButton id="asset_st_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_estrutura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_estrutura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_super_estrutura" for="asset_st_super_estrutura"  value="#{iimsg.AssetSupersv_asset_st_super_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_super_estrutura" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_super_estrutura}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_super_estrutura','3','CONVE',this.value);;" size="5" maxlength="3" tabindex="128" />
<h:commandButton id="asset_st_super_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_super_estrutura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_super_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_super_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_super_estrutura_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_via_perm" for="asset_st_via_perm"  value="#{iimsg.AssetSupersv_asset_st_via_perm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_via_perm" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_via_perm}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_via_perm','3','CONVE',this.value);;" size="5" maxlength="3" tabindex="129" />
<h:commandButton id="asset_st_via_perm_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_via_perm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_via_perm_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_via_perm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_via_perm_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetSupersv_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_geral" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_geral','3','CONVE',this.value);;" size="5" maxlength="3" tabindex="130" />
<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_geral_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_geral_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_geral_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_linhas_secundarias" for="asset_qt_linhas_secundarias"  value="#{iimsg.AssetSupersv_asset_qt_linhas_secundarias_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_qt_linhas_secundarias" tabindex="131"  value="#{cadAssetSupersvBean.asset_qt_linhas_secundarias}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_qt_linhas_secundarias','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_linhas_secundarias_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_qt_linhas_secundarias_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_linha" for="asset_tp_linha"  value="#{iimsg.AssetSupersv_asset_tp_linha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_tp_linha" tabindex="132"  value="#{cadAssetSupersvBean.asset_tp_linha}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_tp_linha','3',this.value);"/>
<ps:psGraphicImage id="asset_tp_linha_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_linha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_linha" for="asset_nm_linha"  value="#{iimsg.AssetSupersv_asset_nm_linha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nm_linha" tabindex="133"  value="#{cadAssetSupersvBean.asset_nm_linha}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_nm_linha','3',this.value);"/>
<ps:psGraphicImage id="asset_nm_linha_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nm_linha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_linha" for="asset_nu_linha"  value="#{iimsg.AssetSupersv_asset_nu_linha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nu_linha" tabindex="134"  value="#{cadAssetSupersvBean.asset_nu_linha}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_nu_linha','3',this.value);"/>
<ps:psGraphicImage id="asset_nu_linha_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_linha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nt_transposicao" for="asset_nt_transposicao"  value="#{iimsg.AssetSupersv_asset_nt_transposicao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nt_transposicao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_nt_transposicao}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_nt_transposicao','3','TRPNT',this.value);;" size="5" maxlength="3" tabindex="135" />
<h:commandButton id="asset_nt_transposicao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRPNT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nt_transposicao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nt_transposicao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nt_transposicao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_nt_transposicao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_pos_rel_via" for="asset_cd_pos_rel_via"  value="#{iimsg.AssetSupersv_asset_cd_pos_rel_via_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_pos_rel_via" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_pos_rel_via}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_pos_rel_via','3','POSRV',this.value);;" size="5" maxlength="3" tabindex="136" />
<h:commandButton id="asset_cd_pos_rel_via_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'POSRV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_pos_rel_via_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_pos_rel_via_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_pos_rel_via_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_pos_rel_via_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pistas" for="asset_qt_pistas"  value="#{iimsg.AssetSupersv_asset_qt_pistas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_pistas" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_qt_pistas}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_qt_pistas','3','NUPIS',this.value);;" size="5" maxlength="3" tabindex="137" />
<h:commandButton id="asset_qt_pistas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUPIS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_pistas_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_qt_pistas_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_pistas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_qt_pistas_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_vaos" for="asset_qt_vaos"  value="#{iimsg.AssetSupersv_asset_qt_vaos_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_qt_vaos" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_qt_vaos}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_qt_vaos','3','NUVAO',this.value);;" size="5" maxlength="3" tabindex="138" />
<h:commandButton id="asset_qt_vaos_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'NUVAO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_qt_vaos_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_qt_vaos_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_qt_vaos_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_qt_vaos_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_mat_est" for="asset_tp_mat_est"  value="#{iimsg.AssetSupersv_asset_tp_mat_est_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_mat_est" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_mat_est}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_mat_est','3','TIMAE',this.value);;" size="5" maxlength="3" tabindex="139" />
<h:commandButton id="asset_tp_mat_est_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIMAE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_mat_est_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_mat_est_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_mat_est_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_mat_est_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_qt_pilares" for="asset_qt_pilares"  value="#{iimsg.AssetSupersv_asset_qt_pilares_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_qt_pilares" tabindex="140"  value="#{cadAssetSupersvBean.asset_qt_pilares}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_qt_pilares','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_qt_pilares_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_qt_pilares_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_ramp" for="asset_in_ramp"  value="#{iimsg.AssetSupersv_asset_in_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_ramp_bol" value="#{cadAssetSupersvBean.asset_in_ramp}"/>
<h:selectBooleanCheckbox id="asset_in_ramp" tabindex="141"  value="#{cadAssetSupersvBean.asset_in_ramp_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ramp_bol');"/>
<ps:psGraphicImage id="asset_in_ramp_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pc_ramp" for="asset_pc_ramp"  value="#{iimsg.AssetSupersv_asset_pc_ramp_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_pc_ramp" tabindex="142"  value="#{cadAssetSupersvBean.asset_pc_ramp_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_pc_ramp','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_pc_ramp_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_pc_ramp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max" for="asset_vl_ramp_max"  value="#{iimsg.AssetSupersv_asset_vl_ramp_max_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_ramp_max" tabindex="143"  value="#{cadAssetSupersvBean.asset_vl_ramp_max_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_ramp_max','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_ramp_max_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max_km_inicial" for="asset_vl_ramp_max_km_inicial"  value="#{iimsg.AssetSupersv_asset_vl_ramp_max_km_inicial_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_ramp_max_km_inicial" tabindex="144"  value="#{cadAssetSupersvBean.asset_vl_ramp_max_km_inicial_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_ramp_max_km_inicial','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_inicial_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_ramp_max_km_inicial_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ramp_max_km_final" for="asset_vl_ramp_max_km_final"  value="#{iimsg.AssetSupersv_asset_vl_ramp_max_km_final_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_ramp_max_km_final" tabindex="145"  value="#{cadAssetSupersvBean.asset_vl_ramp_max_km_final_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_ramp_max_km_final','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_ramp_max_km_final_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_ramp_max_km_final_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min" for="asset_vl_raio_min"  value="#{iimsg.AssetSupersv_asset_vl_raio_min_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_raio_min" tabindex="146"  value="#{cadAssetSupersvBean.asset_vl_raio_min_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_raio_min','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_raio_min_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min_pos_ini" for="asset_vl_raio_min_pos_ini"  value="#{iimsg.AssetSupersv_asset_vl_raio_min_pos_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_raio_min_pos_ini" tabindex="147"  value="#{cadAssetSupersvBean.asset_vl_raio_min_pos_ini_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_raio_min_pos_ini','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_ini_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_raio_min_pos_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_raio_min_pos_fim" for="asset_vl_raio_min_pos_fim"  value="#{iimsg.AssetSupersv_asset_vl_raio_min_pos_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pl5"> <h:inputText id="asset_vl_raio_min_pos_fim" tabindex="148"  value="#{cadAssetSupersvBean.asset_vl_raio_min_pos_fim_str}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_vl_raio_min_pos_fim','3',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_raio_min_pos_fim_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_vl_raio_min_pos_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cp_via" for="asset_cp_via"  value="#{iimsg.AssetSupersv_asset_cp_via_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="asset_cp_via" tabindex="149"  value="#{cadAssetSupersvBean.asset_cp_via}"  styleClass="tbx" size="12" maxlength="10" onchange="bv('','asset_cp_via','3',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cp_via_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cp_via_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_trilhos_arrdd" for="asset_ds_bp_trilhos_arrdd"  value="#{iimsg.AssetSupersv_asset_ds_bp_trilhos_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_bp_trilhos_arrdd" tabindex="150"  value="#{cadAssetSupersvBean.asset_ds_bp_trilhos_arrdd}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_ds_bp_trilhos_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_trilhos_arrdd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_bp_trilhos_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_fixacao_arrdd" for="asset_ds_bp_fixacao_arrdd"  value="#{iimsg.AssetSupersv_asset_ds_bp_fixacao_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_bp_fixacao_arrdd" tabindex="151"  value="#{cadAssetSupersvBean.asset_ds_bp_fixacao_arrdd}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_ds_bp_fixacao_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_fixacao_arrdd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_bp_fixacao_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_amv_arrdd" for="asset_ds_bp_amv_arrdd"  value="#{iimsg.AssetSupersv_asset_ds_bp_amv_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_bp_amv_arrdd" tabindex="152"  value="#{cadAssetSupersvBean.asset_ds_bp_amv_arrdd}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_ds_bp_amv_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_amv_arrdd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_bp_amv_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_dormente_arrdd" for="asset_ds_bp_dormente_arrdd"  value="#{iimsg.AssetSupersv_asset_ds_bp_dormente_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_bp_dormente_arrdd" tabindex="153"  value="#{cadAssetSupersvBean.asset_ds_bp_dormente_arrdd}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_ds_bp_dormente_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_dormente_arrdd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_bp_dormente_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_bp_lastro_arrdd" for="asset_ds_bp_lastro_arrdd"  value="#{iimsg.AssetSupersv_asset_ds_bp_lastro_arrdd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_ds_bp_lastro_arrdd" tabindex="154"  value="#{cadAssetSupersvBean.asset_ds_bp_lastro_arrdd}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','asset_ds_bp_lastro_arrdd','3',this.value);"/>
<ps:psGraphicImage id="asset_ds_bp_lastro_arrdd_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_bp_lastro_arrdd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
