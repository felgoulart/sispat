
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetBldng_attb_tt_pct_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<%-- Hidden --%>
<h:inputHidden id="asset_cl_imovel" value="#{cadAssetBldngBean.asset_cl_imovel}"/>
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_tipologia" for="asset_tp_tipologia"  value="#{iimsg.AssetBldng_asset_tp_tipologia_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_tipologia" value="#{cadAssetBldngBean.asset_tp_tipologia}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_tipologia','4','TIPOL',this.value);;" size="7" maxlength="5" tabindex="47" />
</div>
		<h:commandButton id="asset_tp_tipologia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPOL', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_tipologia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_tipologia_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_edificacao" for="asset_tp_edificacao"  value="#{iimsg.AssetBldng_asset_tp_edificacao_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_edificacao" value="#{cadAssetBldngBean.asset_tp_edificacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_edificacao','4','TPEDF',this.value);;" size="7" maxlength="5" tabindex="48" />
</div>
		<h:commandButton id="asset_tp_edificacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPEDF', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_edificacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_edificacao_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_utilizacao" for="asset_tp_utilizacao"  value="#{iimsg.AssetBldng_asset_tp_utilizacao_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_utilizacao" value="#{cadAssetBldngBean.asset_tp_utilizacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_utilizacao','4','TIUTI',this.value);;" size="7" maxlength="5" tabindex="49" />
</div>
		<h:commandButton id="asset_tp_utilizacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIUTI', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_utilizacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_utilizacao_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_ocupacao_terc" for="asset_tp_ocupacao_terc"  value="#{iimsg.AssetBldng_asset_tp_ocupacao_terc_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_ocupacao_terc" value="#{cadAssetBldngBean.asset_tp_ocupacao_terc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_ocupacao_terc','4','TPOCT',this.value);;" size="7" maxlength="5" tabindex="50" />
</div>
		<h:commandButton id="asset_tp_ocupacao_terc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPOCT', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_ocupacao_terc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_ocupacao_terc_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_indez" for="asset_vl_indez"  value="#{iimsg.AssetBldng_asset_vl_indez_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="300" class="pr5"> <h:inputText id="asset_vl_indez" tabindex="51"  value="#{cadAssetBldngBean.asset_vl_indez_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_indez','4',valDec(this.value));"/>

</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetBldng_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_total" tabindex="52"  value="#{cadAssetBldngBean.asset_ar_total_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_total','4',valDec(this.value));"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_padrao_construtivo_ed" for="asset_cd_padrao_construtivo_ed"  value="#{iimsg.AssetBldng_asset_cd_padrao_construtivo_ed_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_padrao_construtivo_ed" value="#{cadAssetBldngBean.asset_cd_padrao_construtivo_ed}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_padrao_construtivo_ed','4','EDPDC',this.value);;" size="5" maxlength="3" tabindex="53" />
</div>
		<h:commandButton id="asset_cd_padrao_construtivo_ed_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDPDC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_padrao_construtivo_ed_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_padrao_construtivo_ed_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_edif_ferrov" for="asset_ar_edif_ferrov"  value="#{iimsg.AssetBldng_asset_ar_edif_ferrov_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_edif_ferrov" tabindex="54"  value="#{cadAssetBldngBean.asset_ar_edif_ferrov_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_edif_ferrov','4',valDec(this.value));"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_nao_edif" for="asset_ar_nao_edif"  value="#{iimsg.AssetBldng_asset_ar_nao_edif_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_nao_edif" tabindex="55"  value="#{cadAssetBldngBean.asset_ar_nao_edif_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_nao_edif','4',valDec(this.value));"/>

</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_medidor" for="asset_tp_medidor"  value="#{iimsg.AssetBldng_asset_tp_medidor_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="300"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_medidor" value="#{cadAssetBldngBean.asset_tp_medidor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_medidor','4','TPMED',this.value);;" size="12" maxlength="10" tabindex="56" />
</div>
		<h:commandButton id="asset_tp_medidor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMED', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_medidor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_medidor_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetBldng_obs_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="57"  value="#{cadAssetBldngBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','4',this.value);"/>
</td> 
</tr> 
</table> <%-- <explicit frame close> --%>
