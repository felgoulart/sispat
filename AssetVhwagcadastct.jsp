<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="IdentificaçãotesteArlindo"/>	
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_imobilizado" for="asset_nu_imobilizado"  value="#{iimsg.AssetVhwag_asset_nu_imobilizado_tt}"/>   
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_nu_imobilizado" tabindex="29"  value="#{cadAssetVhwagBean.asset_nu_imobilizado}" size="14" maxlength="12"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_imobilizado','2',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_erp" for="asset_ds_erp"  value="#{iimsg.AssetVhwag_asset_ds_erp_tt}"/>   
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ds_erp" tabindex="30"  value="#{cadAssetVhwagBean.asset_ds_erp}" size="82" maxlength="80"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_erp','2',this.value);"/>
				</div>				
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_plaqueta_erp" for="asset_cd_plaqueta_erp"  value="#{iimsg.AssetVhwag_asset_cd_plaqueta_erp_tt}"/>   
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_cd_plaqueta_erp" tabindex="31"  value="#{cadAssetVhwagBean.asset_cd_plaqueta_erp}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_plaqueta_erp','2',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_macro_classe_erp" for="asset_cd_macro_classe_erp"  value="#{iimsg.AssetVhwag_asset_cd_macro_classe_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_macro_classe_erp" value="#{cadAssetVhwagBean.asset_cd_macro_classe_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_macro_classe_erp','2','MCLAS',this.value);;" size="14" maxlength="12" tabindex="32" />
					<h:commandButton id="asset_cd_macro_classe_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'MCLAS', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	</div>	
				<div class="col-sm-2">
					<h:inputText id="asset_cd_macro_classe_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_macro_classe_erp_desc}"  styleClass="dscCodfCad"/>
				</div>		
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cl_imobilizado" for="asset_cl_imobilizado"  value="#{iimsg.AssetVhwag_asset_cl_imobilizado_tt}"/>   

				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cl_imobilizado" value="#{cadAssetVhwagBean.asset_cl_imobilizado}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cl_imobilizado','2','CIMOB',this.value);;" size="14" maxlength="12" tabindex="33" />
					<h:commandButton id="asset_cl_imobilizado_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CIMOB', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	</div>			
				<div class="col-sm-2">
					<h:inputText id="asset_cl_imobilizado_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cl_imobilizado_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_proprietaria_erp" for="asset_cd_proprietaria_erp"  value="#{iimsg.AssetVhwag_asset_cd_proprietaria_erp_tt}"/>   
				</div>		
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_proprietaria_erp" value="#{cadAssetVhwagBean.asset_cd_proprietaria_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_proprietaria_erp','2','EMPRR',this.value);;" size="10" maxlength="8" tabindex="34" />
					<h:commandButton id="asset_cd_proprietaria_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EMPRR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>		</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_proprietaria_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_proprietaria_erp_desc}" styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_propriedade_erp" for="asset_cd_propriedade_erp"  value="#{iimsg.AssetVhwag_asset_cd_propriedade_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_propriedade_erp" value="#{cadAssetVhwagBean.asset_cd_propriedade_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_propriedade_erp','2','PROPR',this.value);;" size="10" maxlength="8" tabindex="35" />
					<h:commandButton id="asset_cd_propriedade_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PROPR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	</div>			
				<div class="col-sm-2">
					<h:inputText id="asset_cd_propriedade_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_propriedade_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_classificacao_erp" for="asset_cd_classificacao_erp"  value="#{iimsg.AssetVhwag_asset_cd_classificacao_erp_tt}"/>   
				</div>		
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_classificacao_erp" value="#{cadAssetVhwagBean.asset_cd_classificacao_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_classificacao_erp','2','CLASS',this.value);;" size="10" maxlength="8" tabindex="36" />
					<h:commandButton id="asset_cd_classificacao_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CLASS', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>		</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_classificacao_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_classificacao_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_ramo_neg_erp" for="asset_cd_ramo_neg_erp"  value="#{iimsg.AssetVhwag_asset_cd_ramo_neg_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_ramo_neg_erp" value="#{cadAssetVhwagBean.asset_cd_ramo_neg_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_ramo_neg_erp','2','RANEG',this.value);;" size="10" maxlength="8" tabindex="37" />
					<h:commandButton id="asset_cd_ramo_neg_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RANEG', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	</div>			
				<div class="col-sm-2">
					<h:inputText id="asset_cd_ramo_neg_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_ramo_neg_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_local_vli_erp" for="asset_cd_local_vli_erp"  value="#{iimsg.AssetVhwag_asset_cd_local_vli_erp_tt}"/>   
				</div>		
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_local_vli_erp" value="#{cadAssetVhwagBean.asset_cd_local_vli_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_local_vli_erp','2','LCVLI',this.value);;" size="10" maxlength="8" tabindex="38" />
					<h:commandButton id="asset_cd_local_vli_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LCVLI', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>		</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_local_vli_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_local_vli_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
		</div>
</div>

  
<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_vida_util_tt_tt}"/>	
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_vida_util_anos" for="asset_vl_vida_util_anos"  value="#{iimsg.AssetVhwag_asset_vl_vida_util_anos_tt}"/>   
				</div>
				<div class="col-sm-4">
 					<h:inputText id="asset_vl_vida_util_anos" tabindex="39"  value="#{cadAssetVhwagBean.asset_vl_vida_util_anos}"  styleClass="form-control form-control-sm" size="4" maxlength="2" onchange="bv('','asset_vl_vida_util_anos','2',valNum(this.value));"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_vida_util_periodos" for="asset_vl_vida_util_periodos"  value="#{iimsg.AssetVhwag_asset_vl_vida_util_periodos_tt}"/>   
				</div>
				<div class="col-sm-4">
 					<h:inputText id="asset_vl_vida_util_periodos" tabindex="40"  value="#{cadAssetVhwagBean.asset_vl_vida_util_periodos}"  styleClass="form-control form-control-sm" size="4" maxlength="2" onchange="bv('','asset_vl_vida_util_periodos','2',valNum(this.value));"/>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_deprec_tt_tt}"/>
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_aquisicao" for="asset_vl_aquisicao"  value="#{iimsg.AssetVhwag_asset_vl_aquisicao_tt}"/>   
				</div>
				<div class="col-sm-4">
 					<h:inputText id="asset_vl_aquisicao" tabindex="41"  value="#{cadAssetVhwagBean.asset_vl_aquisicao_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_aquisicao','2',valDec(this.value));"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_capitalizacao" for="asset_dt_capitalizacao"  value="#{iimsg.AssetVhwag_asset_dt_capitalizacao_tt}"/>   
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_dt_capitalizacao_str" tabindex="42"  value="#{cadAssetVhwagBean.asset_dt_capitalizacao_str}"  styleClass="form-control form-control-sm" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_capitalizacao_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_capitalizacao_str', 'cadForm:asset_vl_deprec_mensal', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_capitalizacao_str','2',this.value);"  />
					<img src="../imagens/btCalendar_orig.gif" styleClass="btn btncodf" onclick="mostraCalendario('cadForm:asset_dt_capitalizacao_str', 'asset_dt_capitalizacaoCal');" style="cursor: hand"/>
					<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;"></div>
					<div id="asset_dt_capitalizacaoCal" style="position: absolute; z-index: 1;"></div>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_deprec_mensal" for="asset_vl_deprec_mensal"  value="#{iimsg.AssetVhwag_asset_vl_deprec_mensal_tt}"/>   
				</div>
				<div class="col-sm-4">
 					<h:inputText id="asset_vl_deprec_mensal" tabindex="43"  value="#{cadAssetVhwagBean.asset_vl_deprec_mensal_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_deprec_mensal','2',valDec(this.value));"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_deprec_acumulada" for="asset_vl_deprec_acumulada"  value="#{iimsg.AssetVhwag_asset_vl_deprec_acumulada_tt}"/>   
				</div>
				<div class="col-sm-4">
 					<h:inputText id="asset_vl_deprec_acumulada" tabindex="44"  value="#{cadAssetVhwagBean.asset_vl_deprec_acumulada_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_deprec_acumulada','2',valDec(this.value));"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_contabil" for="asset_vl_contabil"  value="#{iimsg.AssetVhwag_asset_vl_contabil_tt}"/>   
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_vl_contabil" tabindex="45"  value="#{cadAssetVhwagBean.asset_vl_contabil_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_contabil','2',valDec(this.value));"/>
				</div>
			</div>
		</div>
</div>
 
<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_locerp_tt_tt}"/>
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor_erp" for="asset_cd_corredor_erp"  value="#{iimsg.AssetVhwag_asset_cd_corredor_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_corredor_erp" value="#{cadAssetVhwagBean.asset_cd_corredor_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_corredor_erp','2','CDCRR',this.value);;" size="12" maxlength="10" tabindex="46" />
					<h:commandButton id="asset_cd_corredor_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div></div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_corredor_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_corredor_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_uf_erp" for="asset_cd_uf_erp"  value="#{iimsg.AssetVhwag_asset_cd_uf_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_uf_erp" value="#{cadAssetVhwagBean.asset_cd_uf_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_uf_erp','2','GUF',this.value);;" size="7" maxlength="5" tabindex="47" />
					<h:commandButton id="asset_cd_uf_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div></div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_uf_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_uf_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_municipio_erp" for="asset_cd_municipio_erp"  value="#{iimsg.AssetVhwag_asset_cd_municipio_erp_tt}"/>   
				</div>
				<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_municipio_erp" value="#{cadAssetVhwagBean.asset_cd_municipio_erp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_municipio_erp','2','RESID',this.value);;" size="12" maxlength="10" tabindex="48" />
					<h:commandButton id="asset_cd_municipio_erp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div></div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_municipio_erp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_municipio_erp_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
		</div>
</div>

	  
	    


		
	



