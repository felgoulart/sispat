<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="left" align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastct" rendered="#{cadAssetVhrfvBean.canUpdate}" value="#{cadAssetVhrfvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastct" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetVhrfvBean.canUpdate}" action="#{cadAssetVhrfvBean.doValidate}" onmousedown="msgw('aMessageastct');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetVhrfv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetVhrfvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetVhrfv_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetVhrfvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_ctb_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_imobilizado" for="asset_nu_imobilizado"  value="#{iimsg.AssetVhrfv_asset_nu_imobilizado_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_imobilizado" tabindex="17"  value="#{cadAssetVhrfvBean.asset_nu_imobilizado}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_imobilizado','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_erp" for="asset_ds_erp"  value="#{iimsg.AssetVhrfv_asset_ds_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_erp" tabindex="18"  value="#{cadAssetVhrfvBean.asset_ds_erp}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_plaqueta_erp" for="asset_cd_plaqueta_erp"  value="#{iimsg.AssetVhrfv_asset_cd_plaqueta_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_plaqueta_erp" tabindex="19"  value="#{cadAssetVhrfvBean.asset_cd_plaqueta_erp}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_plaqueta_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_macro_classe_erp" for="asset_cd_macro_classe_erp"  value="#{iimsg.AssetVhrfv_asset_cd_macro_classe_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_macro_classe_erp" tabindex="20"  value="#{cadAssetVhrfvBean.asset_cd_macro_classe_erp}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_macro_classe_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cl_imobilizado" for="asset_cl_imobilizado"  value="#{iimsg.AssetVhrfv_asset_cl_imobilizado_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cl_imobilizado" tabindex="21"  value="#{cadAssetVhrfvBean.asset_cl_imobilizado}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','asset_cl_imobilizado','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cl_imobilizado_desc" for="asset_cl_imobilizado_desc"  value="#{iimsg.AssetVhrfv_asset_cl_imobilizado_desc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cl_imobilizado_desc" tabindex="22"  value="#{cadAssetVhrfvBean.asset_cl_imobilizado_desc}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_cl_imobilizado_desc','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_proprietaria_erp" for="asset_cd_proprietaria_erp"  value="#{iimsg.AssetVhrfv_asset_cd_proprietaria_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_proprietaria_erp" tabindex="23"  value="#{cadAssetVhrfvBean.asset_cd_proprietaria_erp}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_proprietaria_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_proprietaria_erp" for="asset_nm_proprietaria_erp"  value="#{iimsg.AssetVhrfv_asset_nm_proprietaria_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_proprietaria_erp" tabindex="24"  value="#{cadAssetVhrfvBean.asset_nm_proprietaria_erp}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_proprietaria_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_propriedade_erp" for="asset_cd_propriedade_erp"  value="#{iimsg.AssetVhrfv_asset_cd_propriedade_erp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_propriedade_erp" value="#{cadAssetVhrfvBean.asset_cd_propriedade_erp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_propriedade_erp','2','TPPRP',this.value);;" size="7" maxlength="5" tabindex="25" />
<h:commandButton id="asset_cd_propriedade_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_propriedade_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_propriedade_erp_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_classificacao_erp" for="asset_cd_classificacao_erp"  value="#{iimsg.AssetVhrfv_asset_cd_classificacao_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_classificacao_erp" tabindex="26"  value="#{cadAssetVhrfvBean.asset_cd_classificacao_erp}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_classificacao_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_ramo_neg_erp" for="asset_cd_ramo_neg_erp"  value="#{iimsg.AssetVhrfv_asset_cd_ramo_neg_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_cd_ramo_neg_erp" tabindex="27"  value="#{cadAssetVhrfvBean.asset_cd_ramo_neg_erp}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ramo_neg_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_vida_util_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_vida_util_anos" for="asset_vl_vida_util_anos"  value="#{iimsg.AssetVhrfv_asset_vl_vida_util_anos_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="asset_vl_vida_util_anos" tabindex="28"  value="#{cadAssetVhrfvBean.asset_vl_vida_util_anos}"  styleClass="txr pr5 tbx" size="4" maxlength="2" onchange="bv('','asset_vl_vida_util_anos','2',valNum(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_vida_util_periodos" for="asset_vl_vida_util_periodos"  value="#{iimsg.AssetVhrfv_asset_vl_vida_util_periodos_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="asset_vl_vida_util_periodos" tabindex="29"  value="#{cadAssetVhrfvBean.asset_vl_vida_util_periodos}"  styleClass="txr pr5 tbx" size="4" maxlength="2" onchange="bv('','asset_vl_vida_util_periodos','2',valNum(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_deprec_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_aquisicao" for="asset_vl_aquisicao"  value="#{iimsg.AssetVhrfv_asset_vl_aquisicao_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_aquisicao" tabindex="30"  value="#{cadAssetVhrfvBean.asset_vl_aquisicao_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_aquisicao','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_capitalizacao" for="asset_dt_capitalizacao"  value="#{iimsg.AssetVhrfv_asset_dt_capitalizacao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="asset_dt_capitalizacao_str" tabindex="31"  value="#{cadAssetVhrfvBean.asset_dt_capitalizacao_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_capitalizacao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_capitalizacao_str', 'cadForm:asset_vl_deprec_mensal', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_capitalizacao_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_capitalizacao_str', 'asset_dt_capitalizacaoCal');" style="cursor: hand"/>

<div id="asset_dt_capitalizacaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_deprec_mensal" for="asset_vl_deprec_mensal"  value="#{iimsg.AssetVhrfv_asset_vl_deprec_mensal_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_deprec_mensal" tabindex="32"  value="#{cadAssetVhrfvBean.asset_vl_deprec_mensal_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_deprec_mensal','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_deprec_acumulada" for="asset_vl_deprec_acumulada"  value="#{iimsg.AssetVhrfv_asset_vl_deprec_acumulada_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_deprec_acumulada" tabindex="33"  value="#{cadAssetVhrfvBean.asset_vl_deprec_acumulada_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_deprec_acumulada','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_contabil" for="asset_vl_contabil"  value="#{iimsg.AssetVhrfv_asset_vl_contabil_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="200" class="pr5"> <h:inputText id="asset_vl_contabil" tabindex="34"  value="#{cadAssetVhrfvBean.asset_vl_contabil_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','asset_vl_contabil','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetVhrfv_locerp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor_erp" for="asset_cd_corredor_erp"  value="#{iimsg.AssetVhrfv_asset_cd_corredor_erp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor_erp" value="#{cadAssetVhrfvBean.asset_cd_corredor_erp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_corredor_erp','2','CDCRR',this.value);;" size="12" maxlength="10" tabindex="35" />
<h:commandButton id="asset_cd_corredor_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_corredor_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_corredor_erp_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_uf_erp" for="asset_cd_uf_erp"  value="#{iimsg.AssetVhrfv_asset_cd_uf_erp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_uf_erp" value="#{cadAssetVhrfvBean.asset_cd_uf_erp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_uf_erp','2','GUF',this.value);;" size="7" maxlength="5" tabindex="36" />
<h:commandButton id="asset_cd_uf_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_uf_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_uf_erp_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_municipio_erp" for="asset_cd_municipio_erp"  value="#{iimsg.AssetVhrfv_asset_cd_municipio_erp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_municipio_erp" value="#{cadAssetVhrfvBean.asset_cd_municipio_erp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_municipio_erp','2','RESID',this.value);;" size="12" maxlength="10" tabindex="37" />
<h:commandButton id="asset_cd_municipio_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>


<h:inputText id="asset_cd_municipio_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhrfvBean.asset_cd_municipio_erp_desc}"  styleClass="txlr pr5 tb100r"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_local_vli_erp" for="asset_cd_local_vli_erp"  value="#{iimsg.AssetVhrfv_asset_cd_local_vli_erp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_local_vli_erp" tabindex="38"  value="#{cadAssetVhrfvBean.asset_cd_local_vli_erp}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_local_vli_erp','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
