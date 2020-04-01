<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastoc" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastoc" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastoc');">
<ps:psGraphicImage id="iMessageastoc" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id6" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id6" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc6" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_ocdc_tt_occ_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_ocupacao" for="asset_tp_ocupacao"  value="#{iimsg.AssetSupersv_asset_tp_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_ocupacao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_ocupacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_ocupacao','6','EFORO',this.value);;" size="7" maxlength="5" tabindex="184" />
<h:commandButton id="asset_tp_ocupacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EFORO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_ocupacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_ocupacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_ocupacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_ocupacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_ocupante" for="asset_nm_ocupante"  value="#{iimsg.AssetSupersv_asset_nm_ocupante_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nm_ocupante" tabindex="185"  value="#{cadAssetSupersvBean.asset_nm_ocupante}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_ocupante','6',this.value);"/>
<ps:psGraphicImage id="asset_nm_ocupante_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nm_ocupante_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_autorizacao_ocup" for="asset_ds_autorizacao_ocup"  value="#{iimsg.AssetSupersv_asset_ds_autorizacao_ocup_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_autorizacao_ocup" tabindex="186"  value="#{cadAssetSupersvBean.asset_ds_autorizacao_ocup}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_autorizacao_ocup','6',this.value);"/>
<ps:psGraphicImage id="asset_ds_autorizacao_ocup_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_ds_autorizacao_ocup_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_pz_ocupacao" for="asset_pz_ocupacao"  value="#{iimsg.AssetSupersv_asset_pz_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_pz_ocupacao" tabindex="187"  value="#{cadAssetSupersvBean.asset_pz_ocupacao}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_pz_ocupacao','6',this.value);"/>
<ps:psGraphicImage id="asset_pz_ocupacao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_pz_ocupacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="4" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.AssetSupersv_docm_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_ocdc_tt_opa_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_ocdc_tt_owa_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_docm_tt_owa_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_arrendado" for="asset_in_arrendado"  value="#{iimsg.AssetSupersv_asset_in_arrendado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_arrendado_bol" value="#{cadAssetSupersvBean.asset_in_arrendado}"/>
<h:selectBooleanCheckbox id="asset_in_arrendado" tabindex="188"  value="#{cadAssetSupersvBean.asset_in_arrendado_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_arrendado_bol');"/>
<ps:psGraphicImage id="asset_in_arrendado_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_arrendado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_devolucao" for="asset_cd_termo_devolucao"  value="#{iimsg.AssetSupersv_asset_cd_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_termo_devolucao" tabindex="189"  value="#{cadAssetSupersvBean.asset_cd_termo_devolucao}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_devolucao','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_devolucao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_termo_devolucao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_devolucao" for="asset_dt_termo_devolucao"  value="#{iimsg.AssetSupersv_asset_dt_termo_devolucao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_termo_devolucao" tabindex="190"  value="#{cadAssetSupersvBean.asset_dt_termo_devolucao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_devolucao', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_devolucao', 'cadForm:asset_cd_termo_entrega', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_devolucao','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_devolucao', 'asset_dt_termo_devolucaoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_devolucao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_termo_devolucao_vc}" styleClass="btp"/>
<div id="asset_dt_termo_devolucaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_entrega" for="asset_cd_termo_entrega"  value="#{iimsg.AssetSupersv_asset_cd_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_termo_entrega" tabindex="191"  value="#{cadAssetSupersvBean.asset_cd_termo_entrega}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_entrega','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_entrega_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_termo_entrega_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_entrega" for="asset_dt_termo_entrega"  value="#{iimsg.AssetSupersv_asset_dt_termo_entrega_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_termo_entrega" tabindex="192"  value="#{cadAssetSupersvBean.asset_dt_termo_entrega_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_entrega', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_entrega', 'cadForm:asset_cd_doc_compra', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_entrega','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_entrega', 'asset_dt_termo_entregaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_entrega_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_termo_entrega_vc}" styleClass="btp"/>
<div id="asset_dt_termo_entregaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_compra" for="asset_cd_doc_compra"  value="#{iimsg.AssetSupersv_asset_cd_doc_compra_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_doc_compra" tabindex="193"  value="#{cadAssetSupersvBean.asset_cd_doc_compra}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_doc_compra','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_compra_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_compra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_compra" for="asset_dt_doc_compra"  value="#{iimsg.AssetSupersv_asset_dt_doc_compra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_doc_compra" tabindex="194"  value="#{cadAssetSupersvBean.asset_dt_doc_compra_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_compra', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_compra', 'cadForm:asset_in_own', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_doc_compra','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_compra', 'asset_dt_doc_compraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_compra_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_doc_compra_vc}" styleClass="btp"/>
<div id="asset_dt_doc_compraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_own" for="asset_in_own"  value="#{iimsg.AssetSupersv_asset_in_own_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_own_bol" value="#{cadAssetSupersvBean.asset_in_own}"/>
<h:selectBooleanCheckbox id="asset_in_own" tabindex="195"  value="#{cadAssetSupersvBean.asset_in_own_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_own_bol');"/>
<ps:psGraphicImage id="asset_in_own_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_own_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_clandestino" for="asset_in_clandestino"  value="#{iimsg.AssetSupersv_asset_in_clandestino_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_clandestino_bol" value="#{cadAssetSupersvBean.asset_in_clandestino}"/>
<h:selectBooleanCheckbox id="asset_in_clandestino" tabindex="196"  value="#{cadAssetSupersvBean.asset_in_clandestino_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_clandestino_bol');"/>
<ps:psGraphicImage id="asset_in_clandestino_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_clandestino_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_termo_receb" for="asset_cd_termo_receb"  value="#{iimsg.AssetSupersv_asset_cd_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_termo_receb" tabindex="197"  value="#{cadAssetSupersvBean.asset_cd_termo_receb}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_termo_receb','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_termo_receb_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_termo_receb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_termo_receb" for="asset_dt_termo_receb"  value="#{iimsg.AssetSupersv_asset_dt_termo_receb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_termo_receb" tabindex="198"  value="#{cadAssetSupersvBean.asset_dt_termo_receb_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_termo_receb', event);" onkeyup="SaltaCampo('cadForm:asset_dt_termo_receb', 'cadForm:asset_cd_doc_sol_dsvc', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_termo_receb','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_termo_receb', 'asset_dt_termo_recebCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_termo_receb_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_termo_receb_vc}" styleClass="btp"/>
<div id="asset_dt_termo_recebCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_dsvc" for="asset_cd_doc_sol_dsvc"  value="#{iimsg.AssetSupersv_asset_cd_doc_sol_dsvc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_doc_sol_dsvc" tabindex="199"  value="#{cadAssetSupersvBean.asset_cd_doc_sol_dsvc}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_doc_sol_dsvc','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_dsvc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_sol_dsvc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_dsvc" for="asset_dt_doc_sol_dsvc"  value="#{iimsg.AssetSupersv_asset_dt_doc_sol_dsvc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_doc_sol_dsvc" tabindex="200"  value="#{cadAssetSupersvBean.asset_dt_doc_sol_dsvc_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_dsvc', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_dsvc', 'cadForm:asset_cd_doc_rcb_prop', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_doc_sol_dsvc','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_dsvc', 'asset_dt_doc_sol_dsvcCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_dsvc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_doc_sol_dsvc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_dsvcCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_rcb_prop" for="asset_cd_doc_rcb_prop"  value="#{iimsg.AssetSupersv_asset_cd_doc_rcb_prop_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_doc_rcb_prop" tabindex="201"  value="#{cadAssetSupersvBean.asset_cd_doc_rcb_prop}" size="62" maxlength="60"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_doc_rcb_prop','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_rcb_prop_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_rcb_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_rcb_prop" for="asset_dt_doc_rcb_prop"  value="#{iimsg.AssetSupersv_asset_dt_doc_rcb_prop_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_doc_rcb_prop" tabindex="202"  value="#{cadAssetSupersvBean.asset_dt_doc_rcb_prop_str}"  styleClass="tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_rcb_prop', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_rcb_prop', 'cadForm:asset_cd_doc_sol_vinc', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_doc_rcb_prop','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_rcb_prop', 'asset_dt_doc_rcb_propCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_rcb_prop_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_doc_rcb_prop_vc}" styleClass="btp"/>
<div id="asset_dt_doc_rcb_propCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_vinc" for="asset_cd_doc_sol_vinc"  value="#{iimsg.AssetSupersv_asset_cd_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_sol_vinc" tabindex="203"  value="#{cadAssetSupersvBean.asset_cd_doc_sol_vinc}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_doc_sol_vinc','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_sol_vinc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_doc_sol_vinc" for="asset_dt_doc_sol_vinc"  value="#{iimsg.AssetSupersv_asset_dt_doc_sol_vinc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_doc_sol_vinc" tabindex="204"  value="#{cadAssetSupersvBean.asset_dt_doc_sol_vinc_str}"  styleClass="tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_doc_sol_vinc', event);" onkeyup="SaltaCampo('cadForm:asset_dt_doc_sol_vinc', 'cadForm:asset_cd_doc_aut_loc', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_doc_sol_vinc','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_doc_sol_vinc', 'asset_dt_doc_sol_vincCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_doc_sol_vinc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_doc_sol_vinc_vc}" styleClass="btp"/>
<div id="asset_dt_doc_sol_vincCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_aut_loc" for="asset_cd_doc_aut_loc"  value="#{iimsg.AssetSupersv_asset_cd_doc_aut_loc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_aut_loc" tabindex="205"  value="#{cadAssetSupersvBean.asset_cd_doc_aut_loc}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_doc_aut_loc','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_aut_loc_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_aut_loc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_alt_ser" for="asset_cd_doc_alt_ser"  value="#{iimsg.AssetSupersv_asset_cd_doc_alt_ser_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_alt_ser" tabindex="206"  value="#{cadAssetSupersvBean.asset_cd_doc_alt_ser}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_doc_alt_ser','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_alt_ser_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_alt_ser_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_alt_mod" for="asset_cd_doc_alt_mod"  value="#{iimsg.AssetSupersv_asset_cd_doc_alt_mod_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_alt_mod" tabindex="207"  value="#{cadAssetSupersvBean.asset_cd_doc_alt_mod}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_doc_alt_mod','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_alt_mod_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_alt_mod_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_locado" for="asset_cd_locado"  value="#{iimsg.AssetSupersv_asset_cd_locado_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_locado" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_locado}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_locado','6','COMPN',this.value);;" size="10" maxlength="8" tabindex="208" />
<h:commandButton id="asset_cd_locado_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_locado_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_locado_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_locado_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_locado_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cncss_trf" for="asset_cd_cncss_trf"  value="#{iimsg.AssetSupersv_asset_cd_cncss_trf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cncss_trf" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_cncss_trf}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_cncss_trf','6','COMPN',this.value);;" size="10" maxlength="8" tabindex="209" />
<h:commandButton id="asset_cd_cncss_trf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'COMPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cncss_trf_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_cncss_trf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cncss_trf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_cncss_trf_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_sol_trf" for="asset_cd_doc_sol_trf"  value="#{iimsg.AssetSupersv_asset_cd_doc_sol_trf_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_sol_trf" tabindex="210"  value="#{cadAssetSupersvBean.asset_cd_doc_sol_trf}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_cd_doc_sol_trf','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_sol_trf_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_sol_trf_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_ocdc_tt_pdt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_escritura" for="asset_cd_escritura"  value="#{iimsg.AssetSupersv_asset_cd_escritura_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_escritura" tabindex="211"  value="#{cadAssetSupersvBean.asset_cd_escritura}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','asset_cd_escritura','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_escritura_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_escritura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_tombamento" for="asset_tp_tombamento"  value="#{iimsg.AssetSupersv_asset_tp_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_tombamento" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_tombamento}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_tombamento','6','TOMTP',this.value);;" size="7" maxlength="5" tabindex="212" />
<h:commandButton id="asset_tp_tombamento_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOMTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_tombamento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_tombamento_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_tombamento_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_tombamento_desc}" styleClass="txlr pr5 tb50r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tombamento" for="asset_cd_tombamento"  value="#{iimsg.AssetSupersv_asset_cd_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_tombamento" tabindex="213"  value="#{cadAssetSupersvBean.asset_cd_tombamento}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_tombamento','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_tombamento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_tombamento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_tombamento" for="asset_dt_tombamento"  value="#{iimsg.AssetSupersv_asset_dt_tombamento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="asset_dt_tombamento" tabindex="214"  value="#{cadAssetSupersvBean.asset_dt_tombamento_str}"  styleClass="tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_tombamento', event);" onkeyup="SaltaCampo('cadForm:asset_dt_tombamento', 'cadForm:asset_cd_leg_amb_cfedlab', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_tombamento','6',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_tombamento', 'asset_dt_tombamentoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_tombamento_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_tombamento_vc}" styleClass="btp"/>
<div id="asset_dt_tombamentoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_leg_amb_cfedlab" for="asset_cd_leg_amb_cfedlab"  value="#{iimsg.AssetSupersv_asset_cd_leg_amb_cfedlab_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_leg_amb_cfedlab" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_cd_leg_amb_cfedlab}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_cd_leg_amb_cfedlab','6','RSTAB',this.value);;" size="5" maxlength="3" tabindex="215" />
<h:commandButton id="asset_cd_leg_amb_cfedlab_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RSTAB', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_leg_amb_cfedlab_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_leg_amb_cfedlab_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_leg_amb_cfedlab_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_cd_leg_amb_cfedlab_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_doc_rst_amb" for="asset_cd_doc_rst_amb"  value="#{iimsg.AssetSupersv_asset_cd_doc_rst_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_doc_rst_amb" tabindex="216"  value="#{cadAssetSupersvBean.asset_cd_doc_rst_amb}" size="62" maxlength="60"  styleClass="tbx" onchange="bv('','asset_cd_doc_rst_amb','6',this.value);"/>
<ps:psGraphicImage id="asset_cd_doc_rst_amb_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_doc_rst_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
