
<h:inputHidden id="p_date_start" value="#{cadAssetEqgptBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetEqgptBean.p_date_end}"/>

<div class="containermod expand-max bg-transparent mt-3 mb-3">
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetEqgpt_p_asset_nu_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_nu" tabindex="1"  value="#{cadAssetEqgptBean.p_asset_nu}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	   </div>
	  </div><div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_serie" for="p_asset_cd_serie"  value="#{iimsg.AssetEqgpt_p_asset_cd_serie_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText id="p_asset_cd_serie" tabindex="2"  value="#{cadAssetEqgptBean.p_asset_cd_serie}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_cd_serie','0',this.value);"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_plaqueta_erp" for="p_asset_cd_plaqueta_erp"  value="#{iimsg.AssetEqgpt_p_asset_cd_plaqueta_erp_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_cd_plaqueta_erp" tabindex="3"  value="#{cadAssetEqgptBean.p_asset_cd_plaqueta_erp}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_cd_plaqueta_erp','0',this.value);"/>
	   </div>
	  </div>
	  </div>

	  <div class="row text-left">
	  <div class="col-sm-2">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu_imobilizado" for="p_asset_nu_imobilizado"  value="#{iimsg.AssetEqgpt_p_asset_nu_imobilizado_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_nu_imobilizado" tabindex="4"  value="#{cadAssetEqgptBean.p_asset_nu_imobilizado}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu_imobilizado','0',this.value);"/>
	   </div>
	  </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_vhaux" for="p_asset_tp_vhaux"  value="#{iimsg.AssetEqgpt_p_asset_tp_vhaux_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	  
		<h:inputText  id="p_asset_tp_vhaux" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_tp_vhaux}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="5" />
				<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_vhaux_xsel" immediate="true" onmousedown="pw('CX'+'VHXTP', tran, this.id, 'yes');" />
	   </div>
		</div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_st_geral" for="p_asset_st_geral"  value="#{iimsg.AssetEqgpt_p_asset_st_geral_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_st_geral" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_st_geral}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="6" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_st_geral_xsel" immediate="true" onmousedown="pw('CX'+'CONSG', tran, this.id, 'yes');" />
	   </div>
    </div>
  </div>

  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetEqgpt_p_asset_cd_corredor_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="7" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
	   </div>
	   </div>
    
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_px_local_vistoria" for="p_asset_px_local_vistoria"  value="#{iimsg.AssetEqgpt_p_asset_px_local_vistoria_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_px_local_vistoria" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="8" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_px_local_vistoria_xsel" immediate="true" onmousedown="pw('CX'+'CDLMR', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_propriedade" for="p_asset_tp_propriedade"  value="#{iimsg.AssetEqgpt_p_asset_tp_propriedade_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_tp_propriedade" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="9" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_propriedade_xsel" immediate="true" onmousedown="pw('CX'+'TPPRP', tran, this.id, 'yes');" />
	   </div>
	   </div>
	   </div>
  <div class="row text-left">
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_propriedade_erp" for="p_asset_cd_propriedade_erp"  value="#{iimsg.AssetEqgpt_p_asset_cd_propriedade_erp_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_cd_propriedade_erp" onclick="clf(this);" value="#{cadAssetEqgptBean.p_asset_cd_propriedade_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="10" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_propriedade_erp_xsel" immediate="true" onmousedown="pw('CX'+'PROPR', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="col-sm-2">
	<h:outputLabel  styleClass="h6"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetEqgpt_asset_in_ultvist_tt}"/>
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetEqgptBean.asset_in_ultvist}"/>
		<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="11"  value="#{cadAssetEqgptBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
	   </div>
	  </div>
	  <div class="col-sm-2">
	</div>
	<div class="col-sm-2">
	  <div class="input-group input-group-sm mb-2">
	   
	   </div>
	  </div>
    </div>
 
 </div>




