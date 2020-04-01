
<h:inputHidden id="p_date_start" value="#{cadAssetVhpaxBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetVhpaxBean.p_date_end}"/>

<div class="bg-transparent mt-3">

	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu_ident" for="p_asset_nu_ident"  value="#{iimsg.AssetVhpax_p_asset_nu_ident_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
	   <h:inputText id="p_asset_nu_ident" tabindex="1"  value="#{cadAssetVhpaxBean.p_asset_nu_ident}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu_ident','0',this.value);"/>
	   </div>
	  </div>
    <div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetVhpax_p_asset_nu_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
	   <h:inputText id="p_asset_nu" tabindex="2"  value="#{cadAssetVhpaxBean.p_asset_nu}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	   </div>
	  </div>
		<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu_imobilizado" for="p_asset_nu_imobilizado"  value="#{iimsg.AssetVhpax_p_asset_nu_imobilizado_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
	<h:inputText id="p_asset_nu_imobilizado" tabindex="3"  value="#{cadAssetVhpaxBean.p_asset_nu_imobilizado}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu_imobilizado','0',this.value);"/>
	   </div>
	  </div>

 
	


    <div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_serie" for="p_asset_cd_serie"  value="#{iimsg.AssetVhpax_p_asset_cd_serie_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_cd_serie" tabindex="4"  value="#{cadAssetVhpaxBean.p_asset_cd_serie}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_cd_serie','0',this.value);"/>
	   </div>
	  </div>
 
	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_plaqueta_erp" for="p_asset_cd_plaqueta_erp"  value="#{iimsg.AssetVhpax_p_asset_cd_plaqueta_erp_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_cd_plaqueta_erp" tabindex="5"  value="#{cadAssetVhpaxBean.p_asset_cd_plaqueta_erp}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_cd_plaqueta_erp','0',this.value);"/>
	   </div>
	  </div>
    <div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetVhpax_p_asset_cd_corredor_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetVhpaxBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="6" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />
	   </div>
    </div>


 
	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_px_local_vistoria" for="p_asset_px_local_vistoria"  value="#{iimsg.AssetVhpax_p_asset_px_local_vistoria_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_px_local_vistoria" onclick="clf(this);" value="#{cadAssetVhpaxBean.p_asset_px_local_vistoria}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="7" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_px_local_vistoria_xsel" immediate="true" onmousedown="pw('CX'+'CDLMR', tran, this.id, 'yes');" />
	   </div>
    </div>
	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_ds_acesso_rodv" for="p_asset_ds_acesso_rodv"  value="#{iimsg.AssetVhpax_p_asset_ds_acesso_rodv_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText id="p_asset_ds_acesso_rodv" tabindex="8"  value="#{cadAssetVhpaxBean.p_asset_ds_acesso_rodv}" size="25" maxlength="23"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_ds_acesso_rodv','0',this.value);"/>
	   </div>
	  </div>

	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_propriedade" for="p_asset_tp_propriedade"  value="#{iimsg.AssetVhpax_p_asset_tp_propriedade_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
		<h:inputText  id="p_asset_tp_propriedade" onclick="clf(this);" value="#{cadAssetVhpaxBean.p_asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="9" />
	   		<h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_tp_propriedade_xsel" immediate="true" onmousedown="pw('CX'+'TPPRP', tran, this.id, 'yes');" />
	   </div>
    </div>

	
	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_propriedade_erp" for="p_asset_cd_propriedade_erp"  value="#{iimsg.AssetVhpax_p_asset_cd_propriedade_erp_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	   
	   <h:inputText  id="p_asset_cd_propriedade_erp" onclick="clf(this);" value="#{cadAssetVhpaxBean.p_asset_cd_propriedade_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="10" />
	   
	   <h:commandButton  styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png" id="p_asset_cd_propriedade_erp_xsel" immediate="true" onmousedown="pw('CX'+'PROPR', tran, this.id, 'yes');" />
	  </div>
    </div>
  </div>



