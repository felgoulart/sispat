


<h:inputHidden id="p_date_start" value="#{cadAssetVhwagBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetVhwagBean.p_date_end}"/>

<div class="containermod expand-max bg-transparent mt-3 mb-3">
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu_ident" for="p_asset_nu_ident"  value="#{iimsg.AssetVhwag_p_asset_nu_ident_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_nu_ident" tabindex="1"  value="#{cadAssetVhwagBean.p_asset_nu_ident}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu_ident','0',this.value);"/>
	   </div>
	  </div>
	  <div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetVhwag_p_asset_nu_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText id="p_asset_nu" tabindex="2"  value="#{cadAssetVhwagBean.p_asset_nu}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_vagao_serie_cfwagse" for="p_asset_cd_vagao_serie_cfwagse"  value="#{iimsg.AssetVhwag_p_asset_cd_vagao_serie_cfwagse_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_cd_vagao_serie_cfwagse" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_vagao_serie_cfwagse}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="3" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_vagao_serie_cfwagse_xsel" immediate="true" onmousedown="pw('CX'+'WAGSE', tran, this.id, 'yes');" />
		</div>
	</div>
	</div>
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_vagao_cfwagtp" for="p_asset_tp_vagao_cfwagtp"  value="#{iimsg.AssetVhwag_p_asset_tp_vagao_cfwagtp_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">

	<h:inputText  id="p_asset_tp_vagao_cfwagtp" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_tp_vagao_cfwagtp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="4" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_vagao_cfwagtp_xsel" immediate="true" onmousedown="pw('CX'+'WAGTP', tran, this.id, 'yes');" />
	</div>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_operacional_vg_unl" for="p_asset_cd_operacional_vg_unl"  value="#{iimsg.AssetVhwag_p_asset_cd_operacional_vg_unl_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText  id="p_asset_cd_operacional_vg_unl" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_operacional_vg_unl}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="5" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_operacional_vg_unl_xsel" immediate="true" onmousedown="pw('CX'+'CDOPU', tran, this.id, 'yes');" />
	</div>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_operacional_vg" for="p_asset_cd_operacional_vg"  value="#{iimsg.AssetVhwag_p_asset_cd_operacional_vg_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   		<h:inputText  id="p_asset_cd_operacional_vg" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_operacional_vg}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="6" />
			<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_operacional_vg_xsel" immediate="true" onmousedown="pw('CX'+'CDOPR', tran, this.id, 'yes');" />
	</div>
  </div>
  </div>

  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetVhwag_p_asset_cd_corredor_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="7" />
				<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
		</div>
		</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor_unl" for="p_asset_cd_corredor_unl"  value="#{iimsg.AssetVhwag_p_asset_cd_corredor_unl_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText  id="p_asset_cd_corredor_unl" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_corredor_unl}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="8" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_unl_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
	</div>
  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_px_local_vistoria" for="p_asset_px_local_vistoria"  value="#{iimsg.AssetVhwag_p_asset_px_local_vistoria_tt}"/>
	</div>
  	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText  id="p_asset_px_local_vistoria" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="9" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_px_local_vistoria_xsel" immediate="true" onmousedown="pw('CX'+'CDLMR', tran, this.id, 'yes');" />
	</div>
	</div>
  
  </div>

  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_propriedade" for="p_asset_tp_propriedade"  value="#{iimsg.AssetVhwag_p_asset_tp_propriedade_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText  id="p_asset_tp_propriedade" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="10" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_propriedade_xsel" immediate="true" onmousedown="pw('CX'+'TPPRP', tran, this.id, 'yes');" />
	</div>
  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_proprietaria_erp" for="p_asset_cd_proprietaria_erp"  value="#{iimsg.AssetVhwag_p_asset_cd_proprietaria_erp_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText  id="p_asset_cd_proprietaria_erp" onclick="clf(this);" value="#{cadAssetVhwagBean.p_asset_cd_proprietaria_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="11" />
	<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_proprietaria_erp_xsel" immediate="true" onmousedown="pw('CX'+'EMPRR', tran, this.id, 'yes');" />
	</div>
	</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetVhwag_asset_in_ultvist_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetVhwagBean.asset_in_ultvist}"/>
	<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="12"  value="#{cadAssetVhwagBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
	</div>
  </div>
  </div>
  </div>










