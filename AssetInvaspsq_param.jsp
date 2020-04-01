
<h:inputHidden id="p_date_start" value="#{cadAssetInvasBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetInvasBean.p_date_end}"/>

<div class="containermod expand-max bg-transparent mt-3 mb-3">
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetInvas_p_asset_nu_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_nu" tabindex="1"  value="#{cadAssetInvasBean.p_asset_nu}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	   </div>
	  </div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu_pross_reinpss" for="p_asset_nu_pross_reinpss"  value="#{iimsg.AssetInvas_p_asset_nu_pross_reinpss_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_nu_pross_reinpss" tabindex="2"  value="#{cadAssetInvasBean.p_asset_nu_pross_reinpss}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu_pross_reinpss','0',this.value);"/>

	  </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_invasao" for="p_asset_tp_invasao"  value="#{iimsg.AssetInvas_p_asset_tp_invasao_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_tp_invasao" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_tp_invasao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="3" />

		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_invasao_xsel" immediate="true" onmousedown="pw('CX'+'TPIVS', tran, this.id, 'yes');" />
	   </div>
    </div>
 </div>

  <div class="row text-left">

	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_uf" for="p_asset_cd_uf"  value="#{iimsg.AssetInvas_p_asset_cd_uf_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_cd_uf" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_cd_uf}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="4" />

		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_uf_xsel" immediate="true" onmousedown="pw('CX'+'GUF', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetInvas_p_asset_cd_corredor_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="5" />
<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
	</div>
    </div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nm_logradouro" for="p_asset_nm_logradouro"  value="#{iimsg.AssetInvas_p_asset_nm_logradouro_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_nm_logradouro" tabindex="6"  value="#{cadAssetInvasBean.p_asset_nm_logradouro}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nm_logradouro','0',this.value);"/>
	   </div>
	  </div>
    </div>


  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nm_bairro" for="p_asset_nm_bairro"  value="#{iimsg.AssetInvas_p_asset_nm_bairro_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_nm_bairro" tabindex="7"  value="#{cadAssetInvasBean.p_asset_nm_bairro}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nm_bairro','0',this.value);"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfresid" for="p_asset_cd_cfresid"  value="#{iimsg.AssetInvas_p_asset_cd_cfresid_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_cd_cfresid" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="8" />
<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_cfresid_xsel" immediate="true" onmousedown="pw('CX'+'RESID', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfreslc" for="p_asset_cd_cfreslc"  value="#{iimsg.AssetInvas_p_asset_cd_cfreslc_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="9" />
<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_cfreslc_xsel" immediate="true" onmousedown="pw('CX'+'RESLC', tran, this.id, 'yes');" />
	   </div>
    </div>
	</div>
	
  <div class="row text-left">

	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfreslc_prx" for="p_asset_cd_cfreslc_prx"  value="#{iimsg.AssetInvas_p_asset_cd_cfreslc_prx_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText  id="p_asset_cd_cfreslc_prx" onclick="clf(this);" value="#{cadAssetInvasBean.p_asset_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="10" />
<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_cfreslc_prx_xsel" immediate="true" onmousedown="pw('CX'+'RESLC', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_km_ini" for="p_asset_km_ini"  value="#{iimsg.AssetInvas_p_asset_km_ini_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_km_ini" tabindex="11"  value="#{cadAssetInvasBean.p_asset_km_ini_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','p_asset_km_ini','0',valDec(this.value));"/>
	   </div>
	  </div>
	<div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_asset_km_range_sqlparm" for="asset_km_range_sqlparm"  value="#{iimsg.AssetInvas_asset_km_range_sqlparm_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="asset_km_range_sqlparm" tabindex="12"  value="#{cadAssetInvasBean.asset_km_range_sqlparm_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_range_sqlparm','0',valDec(this.value));"/>
	   </div>
		<h:inputHidden id="asset_km_range_sqlparmx" value="#{cadAssetInvasBean.asset_km_range_sqlparmx}"/>
	   </div>
    </div>
  </div>


</div>




