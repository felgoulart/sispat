<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetYrdldBean.canUpdate}" value="#{cadAssetYrdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastoc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetYrdldBean.canUpdate}" action="#{cadAssetYrdldBean.doValidate}" onmousedown="msgw('aMessageastoc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id6" >
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id6" value="#{cadAssetYrdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc6" value="#{cadAssetYrdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_ocdc_tt_ldl_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_arrendado" for="asset_in_arrendado"  value="#{iimsg.AssetYrdld_asset_in_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_arrendado_bol" value="#{cadAssetYrdldBean.asset_in_arrendado}"/>
<h:selectBooleanCheckbox id="asset_in_arrendado" tabindex="69"  value="#{cadAssetYrdldBean.asset_in_arrendado_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_arrendado_bol');"/>
<ps:psGraphicImage id="asset_in_arrendado_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_devolucao" for="asset_cd_termo_devolucao"  value="#{iimsg.AssetYrdld_asset_cd_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_devolucao" tabindex="70"  value="#{cadAssetYrdldBean.asset_cd_termo_devolucao}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_devolucao','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_termo_devolucao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_devolucao_ckb" value="#{cadAssetYrdldBean.asset_cd_termo_devolucao_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_devolucao" for="asset_dt_termo_devolucao"  value="#{iimsg.AssetYrdld_asset_dt_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_devolucao_str" tabindex="71"  value="#{cadAssetYrdldBean.asset_dt_termo_devolucao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_devolucao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_devolucao_str', 'cadForm:asset_cd_termo_entrega', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_devolucao_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_devolucao_str', 'asset_dt_termo_devolucaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_termo_devolucao_vc}" styleClass="btp"/>
<div id="asset_dt_termo_devolucaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_entrega" for="asset_cd_termo_entrega"  value="#{iimsg.AssetYrdld_asset_cd_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_entrega" tabindex="72"  value="#{cadAssetYrdldBean.asset_cd_termo_entrega}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_entrega','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_termo_entrega_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_termo_entrega_ckb" value="#{cadAssetYrdldBean.asset_cd_termo_entrega_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_entrega" for="asset_dt_termo_entrega"  value="#{iimsg.AssetYrdld_asset_dt_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_entrega_str" tabindex="73"  value="#{cadAssetYrdldBean.asset_dt_termo_entrega_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_entrega_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_entrega_str', 'cadForm:asset_in_own', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_entrega_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_entrega_str', 'asset_dt_termo_entregaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_entrega_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_termo_entrega_vc}" styleClass="btp"/>
<div id="asset_dt_termo_entregaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_own" for="asset_in_own"  value="#{iimsg.AssetYrdld_asset_in_own_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_own_bol" value="#{cadAssetYrdldBean.asset_in_own}"/>
<h:selectBooleanCheckbox id="asset_in_own" tabindex="74"  value="#{cadAssetYrdldBean.asset_in_own_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_own_bol');"/>
<ps:psGraphicImage id="asset_in_own_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_own_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_receb" for="asset_cd_termo_receb"  value="#{iimsg.AssetYrdld_asset_cd_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_termo_receb" tabindex="75"  value="#{cadAssetYrdldBean.asset_cd_termo_receb}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_receb','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_receb_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_termo_receb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_receb" for="asset_dt_termo_receb"  value="#{iimsg.AssetYrdld_asset_dt_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_termo_receb_str" tabindex="76"  value="#{cadAssetYrdldBean.asset_dt_termo_receb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_receb_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_receb_str', 'cadForm:ocdc_oc_toolbar__1_a', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_receb_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_receb_str', 'asset_dt_termo_recebCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_receb_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_termo_receb_vc}" styleClass="btp"/>
<div id="asset_dt_termo_recebCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_ocdc_tt_occ_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ocupacao" for="asset_tp_ocupacao"  value="#{iimsg.AssetYrdld_asset_tp_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ocupacao" value="#{cadAssetYrdldBean.asset_tp_ocupacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ocupacao','6','EFORO',this.value);;" size="7" maxlength="5" tabindex="77" />
<h:commandButton id="asset_tp_ocupacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EFORO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ocupacao_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_ocupacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ocupacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_ocupacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pz_ocupacao" for="asset_pz_ocupacao"  value="#{iimsg.AssetYrdld_asset_pz_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_pz_ocupacao" tabindex="78"  value="#{cadAssetYrdldBean.asset_pz_ocupacao}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_pz_ocupacao','6',this.value);"/>
<ps:psGraphicImage id="asset_pz_ocupacao_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_pz_ocupacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_ocupante" for="asset_nm_ocupante"  value="#{iimsg.AssetYrdld_asset_nm_ocupante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_nm_ocupante" tabindex="79"  value="#{cadAssetYrdldBean.asset_nm_ocupante}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_ocupante','6',this.value);"/>
<ps:psGraphicImage id="asset_nm_ocupante_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nm_ocupante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_autorizacao_ocup" for="asset_ds_autorizacao_ocup"  value="#{iimsg.AssetYrdld_asset_ds_autorizacao_ocup_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_ds_autorizacao_ocup" tabindex="80"  value="#{cadAssetYrdldBean.asset_ds_autorizacao_ocup}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_autorizacao_ocup','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_autorizacao_ocup_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_autorizacao_ocup_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_ocdc_tt_pdt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_escritura" for="asset_cd_escritura"  value="#{iimsg.AssetYrdld_asset_cd_escritura_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="400"   >
<h:inputText id="asset_cd_escritura" tabindex="81"  value="#{cadAssetYrdldBean.asset_cd_escritura}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_escritura','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_escritura_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_escritura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tombamento" for="asset_tp_tombamento"  value="#{iimsg.AssetYrdld_asset_tp_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tombamento" value="#{cadAssetYrdldBean.asset_tp_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_tombamento','6','TOMTP',this.value);;" size="7" maxlength="5" tabindex="82" />
<h:commandButton id="asset_tp_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOMTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tombamento_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_tombamento_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_tombamento" for="asset_in_tombamento"  value="#{iimsg.AssetYrdld_asset_in_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_tombamento" value="#{cadAssetYrdldBean.asset_in_tombamento}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_in_tombamento','6','SNNPI',this.value);;" size="5" maxlength="3" tabindex="83" />
<h:commandButton id="asset_in_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_tombamento_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_in_tombamento_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tombamento" for="asset_cd_tombamento"  value="#{iimsg.AssetYrdld_asset_cd_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_tombamento" tabindex="84"  value="#{cadAssetYrdldBean.asset_cd_tombamento}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tombamento','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_tombamento_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_tombamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_tombamento_ckb" value="#{cadAssetYrdldBean.asset_cd_tombamento_ckb}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_tombamento" for="asset_dt_tombamento"  value="#{iimsg.AssetYrdld_asset_dt_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_tombamento_str" tabindex="85"  value="#{cadAssetYrdldBean.asset_dt_tombamento_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_tombamento_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_tombamento_str', 'cadForm:asset_cd_doc_sol_dsvc', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_tombamento_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_tombamento_str', 'asset_dt_tombamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_tombamento_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_tombamento_vc}" styleClass="btp"/>
<div id="asset_dt_tombamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_dsvc" for="asset_cd_doc_sol_dsvc"  value="#{iimsg.AssetYrdld_asset_cd_doc_sol_dsvc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_doc_sol_dsvc" tabindex="86"  value="#{cadAssetYrdldBean.asset_cd_doc_sol_dsvc}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(5);bv('','asset_cd_doc_sol_dsvc','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_dsvc_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_doc_sol_dsvc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_doc_sol_dsvc_nap" for="asset_cd_doc_sol_dsvc_nap"  value="#{iimsg.AssetYrdld_asset_cd_doc_sol_dsvc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_doc_sol_dsvc_nap" value="#{cadAssetYrdldBean.asset_cd_doc_sol_dsvc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(6);cleSubSel_uv('asset_cd_doc_sol_dsvc');bdcd('','asset_cd_doc_sol_dsvc_nap','6','TPNAP',this.value);;" size="14" maxlength="12" tabindex="87" />
<h:commandButton id="asset_cd_doc_sol_dsvc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_doc_sol_dsvc_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_doc_sol_dsvc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_doc_sol_dsvc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_doc_sol_dsvc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_dsvc" for="asset_dt_doc_sol_dsvc"  value="#{iimsg.AssetYrdld_asset_dt_doc_sol_dsvc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_doc_sol_dsvc_str" tabindex="88"  value="#{cadAssetYrdldBean.asset_dt_doc_sol_dsvc_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_dsvc_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_dsvc_str', 'cadForm:asset_dt_doc_sol_dsvc_nap', 8 , event);" onchange="clFields(7);validaDatas2(this);bv('','asset_dt_doc_sol_dsvc_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_dsvc_str', 'asset_dt_doc_sol_dsvcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_dsvc_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_doc_sol_dsvc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_dsvcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_dt_doc_sol_dsvc_nap" for="asset_dt_doc_sol_dsvc_nap"  value="#{iimsg.AssetYrdld_asset_dt_doc_sol_dsvc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_doc_sol_dsvc_nap" value="#{cadAssetYrdldBean.asset_dt_doc_sol_dsvc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);cleSubSel_uv('asset_dt_doc_sol_dsvc_str');bdcd('','asset_dt_doc_sol_dsvc_nap','6','TPNAP',this.value);;" size="14" maxlength="12" tabindex="89" />
<h:commandButton id="asset_dt_doc_sol_dsvc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_doc_sol_dsvc_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_doc_sol_dsvc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_doc_sol_dsvc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_dt_doc_sol_dsvc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_vinc" for="asset_cd_doc_sol_vinc"  value="#{iimsg.AssetYrdld_asset_cd_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="900"   >
<h:inputText id="asset_cd_doc_sol_vinc" tabindex="90"  value="#{cadAssetYrdldBean.asset_cd_doc_sol_vinc}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="clFields(9);bv('','asset_cd_doc_sol_vinc','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_doc_sol_vinc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_cd_doc_sol_vinc_nap" for="asset_cd_doc_sol_vinc_nap"  value="#{iimsg.AssetYrdld_asset_cd_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_doc_sol_vinc_nap" value="#{cadAssetYrdldBean.asset_cd_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);cleSubSel_uv('asset_cd_doc_sol_vinc');bdcd('','asset_cd_doc_sol_vinc_nap','6','TPNAP',this.value);;" size="14" maxlength="12" tabindex="91" />
<h:commandButton id="asset_cd_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_vinc" for="asset_dt_doc_sol_vinc"  value="#{iimsg.AssetYrdld_asset_dt_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="asset_dt_doc_sol_vinc_str" tabindex="92"  value="#{cadAssetYrdldBean.asset_dt_doc_sol_vinc_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_vinc_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_vinc_str', 'cadForm:asset_dt_doc_sol_vinc_nap', 8 , event);" onchange="clFields(11);validaDatas2(this);bv('','asset_dt_doc_sol_vinc_str','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_vinc_str', 'asset_dt_doc_sol_vincCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_doc_sol_vinc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_vincCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_dt_doc_sol_vinc_nap" for="asset_dt_doc_sol_vinc_nap"  value="#{iimsg.AssetYrdld_asset_dt_doc_sol_vinc_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_dt_doc_sol_vinc_nap" value="#{cadAssetYrdldBean.asset_dt_doc_sol_vinc_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('asset_dt_doc_sol_vinc_str');bdcd('','asset_dt_doc_sol_vinc_nap','6','TPNAP',this.value);;" size="14" maxlength="12" tabindex="93" />
<h:commandButton id="asset_dt_doc_sol_vinc_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNAP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_dt_doc_sol_vinc_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_dt_doc_sol_vinc_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_dt_doc_sol_vinc_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_leg_amb_cfedlab" for="asset_cd_leg_amb_cfedlab"  value="#{iimsg.AssetYrdld_asset_cd_leg_amb_cfedlab_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_leg_amb_cfedlab" value="#{cadAssetYrdldBean.asset_cd_leg_amb_cfedlab}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_leg_amb_cfedlab','6','RSTAB',this.value);;" size="5" maxlength="3" tabindex="94" />
<h:commandButton id="asset_cd_leg_amb_cfedlab_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RSTAB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_leg_amb_cfedlab_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_leg_amb_cfedlab_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_leg_amb_cfedlab_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_leg_amb_cfedlab_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_comp_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_proprietaria" for="asset_cd_proprietaria"  value="#{iimsg.AssetYrdld_asset_cd_proprietaria_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="900"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_proprietaria" value="#{cadAssetYrdldBean.asset_cd_proprietaria}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_proprietaria','6','COMPN',this.value);;" size="10" maxlength="8" tabindex="95" />
<h:commandButton id="asset_cd_proprietaria_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_proprietaria_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_proprietaria_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_proprietaria_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_proprietaria_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_detentora" for="asset_cd_detentora"  value="#{iimsg.AssetYrdld_asset_cd_detentora_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_detentora" value="#{cadAssetYrdldBean.asset_cd_detentora}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_detentora','6','COMPN',this.value);;" size="12" maxlength="10" tabindex="96" />
<h:commandButton id="asset_cd_detentora_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_detentora_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_detentora_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_detentora_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_detentora_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
