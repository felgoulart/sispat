

<h:inputHidden id="p_date_start" value="#{cadAssetBldngBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetBldngBean.p_date_end}"/>

<div class="containermod expand-max bg-transparent mt-3 mb-3">
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetBldng_p_asset_nu_tt}"/>
	<h:inputText id="p_asset_nu" tabindex="1"  value="#{cadAssetBldngBean.p_asset_nu}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_ds_anexo" for="p_asset_ds_anexo"  value="#{iimsg.AssetBldng_p_asset_ds_anexo_tt}"/>
	<h:inputText id="p_asset_ds_anexo" tabindex="2"  value="#{cadAssetBldngBean.p_asset_ds_anexo}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_ds_anexo','0',this.value);"/>
	</div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_tipologia" for="p_asset_tp_tipologia"  value="#{iimsg.AssetBldng_p_asset_tp_tipologia_tt}"/>
		<div class="input-group input-group-sm"> 
		<h:inputText  id="p_asset_tp_tipologia" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_tp_tipologia}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="3" />
		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_tipologia_xsel" immediate="true" onmousedown="pw('CX'+'TIPOL', tran, this.id, 'yes');" /> 
		</div>
	</div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_utilizacao" for="p_asset_tp_utilizacao"  value="#{iimsg.AssetBldng_p_asset_tp_utilizacao_tt}"/>
		<h:inputText  id="p_asset_tp_utilizacao" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_tp_utilizacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="4" />	
	</div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_plaqueta_erp" for="p_asset_cd_plaqueta_erp"  value="#{iimsg.AssetBldng_p_asset_cd_plaqueta_erp_tt}"/>
		<h:inputText id="p_asset_cd_plaqueta_erp" tabindex="8"  value="#{cadAssetBldngBean.p_asset_cd_plaqueta_erp}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_cd_plaqueta_erp','0',this.value);"/>		
	</div>
		<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_proprietaria_erp" for="p_asset_cd_proprietaria_erp"  value="#{iimsg.AssetBldng_p_asset_cd_proprietaria_erp_tt}"/>
		<div class="input-group input-group-sm"> 
		<h:inputText  id="p_asset_cd_proprietaria_erp" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_proprietaria_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="5" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_proprietaria_erp_xsel" immediate="true" onmousedown="pw('CX'+'EMPRR', tran, this.id, 'yes');" />
	   </div>
	</div>		
 </div>
 
  <div class="row text-left PsqDsc">
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  Galpao
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  </div>
 
 <hr class="style1">
 
	 <div class="row text-left">

	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_uf" for="p_asset_cd_uf"  value="#{iimsg.AssetBldng_p_asset_cd_uf_tt}"/>
	  <div class="input-group input-group-sm">   
		<h:inputText  id="p_asset_cd_uf" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_uf}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="6" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_uf_xsel" immediate="true" onmousedown="pw('CX'+'GUF', tran, this.id, 'yes');" />
	   </div>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_propriedade_erp" for="p_asset_cd_propriedade_erp"  value="#{iimsg.AssetBldng_p_asset_cd_propriedade_erp_tt}"/>
	  <div class="input-group input-group-sm"> 
	   <h:inputText  id="p_asset_cd_propriedade_erp" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_propriedade_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="7" />
	   <h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_propriedade_erp_xsel" immediate="true" onmousedown="pw('CX'+'PROPR', tran, this.id, 'yes');" />
	   </div>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nm_logradouro" for="p_asset_nm_logradouro"  value="#{iimsg.AssetBldng_p_asset_nm_logradouro_tt}"/>
	<h:inputText id="p_asset_nm_logradouro" tabindex="9"  value="#{cadAssetBldngBean.p_asset_nm_logradouro}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nm_logradouro','0',this.value);"/>
	</div>  
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nm_bairro" for="p_asset_nm_bairro"  value="#{iimsg.AssetBldng_p_asset_nm_bairro_tt}"/>
	<h:inputText id="p_asset_nm_bairro" tabindex="10"  value="#{cadAssetBldngBean.p_asset_nm_bairro}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nm_bairro','0',this.value);"/>
	</div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfresid" for="p_asset_cd_cfresid"  value="#{iimsg.AssetBldng_p_asset_cd_cfresid_tt}"/>
	  <div class="input-group input-group-sm">   
		<h:inputText  id="p_asset_cd_cfresid" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="11" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_cfresid_xsel" immediate="true" onmousedown="pw('CX'+'RESID', tran, this.id, 'yes');" />
	   </div>
    </div>   
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetBldng_p_asset_cd_corredor_tt}"/>
	<div class="input-group input-group-sm"> 
		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="12" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
	   </div>
  </div>
 </div>
  <div class="row text-left PsqDsc">
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  </div>
  
  <hr class="style1">
  
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_trecho" for="p_asset_cd_trecho"  value="#{iimsg.AssetBldng_p_asset_cd_trecho_tt}"/>
	  <div class="input-group input-group-sm"> 
		<h:inputText  id="p_asset_cd_trecho" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_trecho}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="13" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_trecho_xsel" immediate="true" onmousedown="pw('CX'+'TRCHO', tran, this.id, 'yes');" />
	   </div>  
	 </div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfreslc" for="p_asset_cd_cfreslc"  value="#{iimsg.AssetBldng_p_asset_cd_cfreslc_tt}"/>
	<div class="input-group input-group-sm"> 
		<h:inputText  id="p_asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="14" />
	   	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_cfreslc_xsel" immediate="true" onmousedown="pw('CX'+'RESLC', tran, this.id, 'yes');" />
	 </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_km_ini" for="p_asset_km_ini"  value="#{iimsg.AssetBldng_p_asset_km_ini_tt}"/>
	<div class="input-group input-group-sm"> 
		<h:inputText id="p_asset_km_ini" tabindex="15"  value="#{cadAssetBldngBean.p_asset_km_ini_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','p_asset_km_ini','0',valDec(this.value));"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_asset_km_range_sqlparm" for="asset_km_range_sqlparm"  value="Faixa KM de Busca"/>
	  <div class="input-group input-group-sm"> 
		<h:inputText id="asset_km_range_sqlparm" tabindex="16"  value="#{cadAssetBldngBean.asset_km_range_sqlparm_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_range_sqlparm','0',valDec(this.value));"/>
		<h:inputHidden id="asset_km_range_sqlparmx" value="#{cadAssetBldngBean.asset_km_range_sqlparmx}"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetBldng_asset_in_ultvist_tt}"/>
	  <div class="input-group input-group-sm"> 
		<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetBldngBean.asset_in_ultvist}"/>
		<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="17"  value="#{cadAssetBldngBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
	   </div>
	  </div><div class="col-sm-2">
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm"> 
	   
	   </div>
	  </div>
    </div>
   <div class="row text-left PsqDsc">
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  <div class="col-sm-2">
  </div>
  </div>
  <hr class="style1">
 </div>





