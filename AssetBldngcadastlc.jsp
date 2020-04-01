
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetBldng_loca_zp_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetBldng_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_corredor" value="#{cadAssetBldngBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','3','CDCRR',this.value);;" size="7" maxlength="5" tabindex="34" />
</div>
		<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_trecho" for="asset_cd_trecho"  value="#{iimsg.AssetBldng_asset_cd_trecho_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_trecho" value="#{cadAssetBldngBean.asset_cd_trecho}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_trecho','3','TRCHO',this.value);;" size="7" maxlength="5" tabindex="35" />
</div>
		<h:commandButton id="asset_cd_trecho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCHO', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_trecho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_trecho_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetBldng_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="200"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetBldngBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc','3','RESLC',this.value);;" size="12" maxlength="10" tabindex="36" />
</div>
		<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_cfreslc_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_logradouro" for="asset_nm_logradouro"  value="#{iimsg.AssetBldng_asset_nm_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_nm_logradouro" tabindex="37"  value="#{cadAssetBldngBean.asset_nm_logradouro}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_logradouro','3',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_logradouro" for="asset_nu_logradouro"  value="#{iimsg.AssetBldng_asset_nu_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_logradouro" tabindex="38"  value="#{cadAssetBldngBean.asset_nu_logradouro}" size="12" maxlength="10"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_logradouro','3',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_compl" for="asset_ds_compl"  value="#{iimsg.AssetBldng_asset_ds_compl_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_compl" tabindex="39"  value="#{cadAssetBldngBean.asset_ds_compl}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_compl','3',this.value);"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_bairro" for="asset_nm_bairro"  value="#{iimsg.AssetBldng_asset_nm_bairro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_bairro" tabindex="40"  value="#{cadAssetBldngBean.asset_nm_bairro}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_bairro','3',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetBldng_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_cfresid" value="#{cadAssetBldngBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfresid','3','RESID',this.value);;" size="7" maxlength="5" tabindex="41" />
</div>
		<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_cfresid_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_uf" for="asset_cd_uf"  value="#{iimsg.AssetBldng_asset_cd_uf_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_cd_uf" value="#{cadAssetBldngBean.asset_cd_uf}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_uf','3','GUF',this.value);;" size="5" maxlength="3" tabindex="42" />
</div>
		<h:commandButton id="asset_cd_uf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_uf_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetBldng_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_ini" tabindex="43"  value="#{cadAssetBldngBean.asset_km_ini_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','asset_km_ini','3',valDec(this.value));"/>

</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_acessibilidade" for="asset_tp_acessibilidade"  value="#{iimsg.AssetBldng_asset_tp_acessibilidade_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_acessibilidade" value="#{cadAssetBldngBean.asset_tp_acessibilidade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_acessibilidade','3','SN',this.value);;" size="7" maxlength="5" tabindex="44" />
</div>
		<h:commandButton id="asset_tp_acessibilidade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SN', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_acessibilidade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_acessibilidade_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_acesso_rodv" for="asset_tp_acesso_rodv"  value="#{iimsg.AssetBldng_asset_tp_acesso_rodv_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_acesso_rodv" value="#{cadAssetBldngBean.asset_tp_acesso_rodv}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_acesso_rodv','3','TPACR',this.value);;" size="22" maxlength="20" tabindex="45" />
</div>
		<h:commandButton id="asset_tp_acesso_rodv_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPACR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_tp_acesso_rodv_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_acesso_rodv_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="200" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetBldng_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_vl_coords" tabindex="46"  value="#{cadAssetBldngBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_coords','3',this.value);"/>

</td> 
</tr> 
</table> <%-- <explicit frame close> --%>
