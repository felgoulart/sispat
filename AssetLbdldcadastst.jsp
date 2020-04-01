<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="left" align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastst" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastst" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastst');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
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
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_invasao" for="asset_tp_invasao"  value="#{iimsg.AssetLbdld_asset_tp_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_invasao" value="#{cadAssetLbdldBean.asset_tp_invasao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_invasao','2','TPIVS',this.value);;" size="5" maxlength="3" tabindex="19" />
<h:commandButton id="asset_tp_invasao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIVS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_invasao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_invasao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_invasao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_invasao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_edificacao" for="asset_tp_edificacao"  value="#{iimsg.AssetLbdld_asset_tp_edificacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_edificacao" value="#{cadAssetLbdldBean.asset_tp_edificacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_edificacao','2','TPEDF',this.value);;" size="7" maxlength="5" tabindex="20" />
<h:commandButton id="asset_tp_edificacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPEDF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_edificacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_edificacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_edificacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_edificacao_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetLbdld_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_aa_construcao" tabindex="21"  value="#{cadAssetLbdldBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_aa_construcao','2',this.value);"/>
<ps:psGraphicImage id="asset_aa_construcao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_aa_construcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cl_dist_boleto" for="asset_cl_dist_boleto"  value="#{iimsg.AssetLbdld_asset_cl_dist_boleto_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_cl_dist_boleto" tabindex="22"  value="#{cadAssetLbdldBean.asset_cl_dist_boleto_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_cl_dist_boleto','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_cl_dist_boleto_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cl_dist_boleto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetLbdld_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_total" tabindex="23"  value="#{cadAssetLbdldBean.asset_ar_total_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_total','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_total_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_total_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pz_ocupacao" for="asset_pz_ocupacao"  value="#{iimsg.AssetLbdld_asset_pz_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_pz_ocupacao" tabindex="24"  value="#{cadAssetLbdldBean.asset_pz_ocupacao}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_pz_ocupacao','2',this.value);"/>
<ps:psGraphicImage id="asset_pz_ocupacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_pz_ocupacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_comprimento" for="asset_vl_comprimento"  value="#{iimsg.AssetLbdld_asset_vl_comprimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_comprimento" tabindex="25"  value="#{cadAssetLbdldBean.asset_vl_comprimento_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_comprimento','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_comprimento_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_comprimento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_largura" for="asset_vl_largura"  value="#{iimsg.AssetLbdld_asset_vl_largura_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_largura" tabindex="26"  value="#{cadAssetLbdldBean.asset_vl_largura_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_vl_largura','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_vl_largura_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_largura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_terreno" for="asset_ar_terreno"  value="#{iimsg.AssetLbdld_asset_ar_terreno_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_terreno" tabindex="27"  value="#{cadAssetLbdldBean.asset_ar_terreno_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_terreno','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_terreno_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_terreno_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ar_livre" for="asset_ar_livre"  value="#{iimsg.AssetLbdld_asset_ar_livre_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_livre" tabindex="28"  value="#{cadAssetLbdldBean.asset_ar_livre_str}"  styleClass="txr pr5 tbx" size="16" maxlength="14" onchange="bv('','asset_ar_livre','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_ar_livre_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ar_livre_vc}" styleClass="btp"/>
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
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetLbdld_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_estrutura" value="#{cadAssetLbdldBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_estrutura','2','TIPES',this.value);;" size="5" maxlength="3" tabindex="29" />
<h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_estrutura_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_estrutura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_estrutura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_conservacao" for="asset_st_conservacao"  value="#{iimsg.AssetLbdld_asset_st_conservacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_conservacao" value="#{cadAssetLbdldBean.asset_st_conservacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_conservacao','2','CONVE',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="asset_st_conservacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_conservacao_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_st_conservacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_conservacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_st_conservacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_revest_int_parede" for="asset_tp_revest_int_parede"  value="#{iimsg.AssetLbdld_asset_tp_revest_int_parede_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_revest_int_parede" value="#{cadAssetLbdldBean.asset_tp_revest_int_parede}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_revest_int_parede','2','RVIPD',this.value);;" size="5" maxlength="3" tabindex="31" />
<h:commandButton id="asset_tp_revest_int_parede_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_revest_int_parede_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_revest_int_parede_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_revest_int_parede_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_revest_int_parede_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetLbdld_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cobertura" value="#{cadAssetLbdldBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_cobertura','2','TPCOB',this.value);;" size="5" maxlength="3" tabindex="32" />
<h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCOB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cobertura_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_cobertura_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_tp_cobertura_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_inst_eletricas" for="asset_tp_inst_eletricas"  value="#{iimsg.AssetLbdld_asset_tp_inst_eletricas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_inst_eletricas" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_inst_eletricas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" size="52" maxlength="50" tabindex="33" />
<h:commandButton id="asset_tp_inst_eletricas_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'TPSTE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_inst_eletricas_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_inst_eletricas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_inst_hidraulicas" for="asset_tp_inst_hidraulicas"  value="#{iimsg.AssetLbdld_asset_tp_inst_hidraulicas_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_inst_hidraulicas" onclick="clf(this);" value="#{cadAssetLbdldBean.asset_tp_inst_hidraulicas}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" size="52" maxlength="50" tabindex="34" />
<h:commandButton id="asset_tp_inst_hidraulicas_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'TPSTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_inst_hidraulicas_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_tp_inst_hidraulicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
