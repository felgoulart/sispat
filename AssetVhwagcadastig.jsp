<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetVhwagBean.asset_cd_cfinvty}"/>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetVhwagBean.asset_cd_hierarquico}"/>
<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_infger_tt_tt}"/>
	</div>
	<div class="card-body">
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetVhwag_asset_dt_vistoria_tt}"/>  
			</div>
			<div class="col-sm-4">
				<div class="input-group">
					<h:inputText id="asset_dt_vistoria_str" tabindex="3"  value="#{cadAssetVhwagBean.asset_dt_vistoria_str}"  styleClass="form-control form-control-sm" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_cd_cfinvty', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
						<div class="input-group-append">
							<button class="btn btncodf" type="button" id="button-addon2"><img src="../fa/svgs/solid/calendargray.png" styleClass="btn btncodf" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/></button>
						</div>
						<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">	</div>
				</div>	
			</div>				
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetVhwag_asset_id_tt}"/>  
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_id" tabindex="2"  onclick="clf(this);" value="#{cadAssetVhwagBean.asset_id}"  styleClass="form-control form-control-sm" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_id','Asset','','asset_nu',this.value);" size="22" maxlength="20" />
			</div>
		</div>
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetVhwag_asset_nu_tt}"/>  
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_nu" tabindex="4"  value="#{cadAssetVhwagBean.asset_nu}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu','1',this.value);"/>
			</div>				
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_nu_ident" for="asset_nu_ident"  value="Número do Vagão"/>  
			</div>
			<div class="col-sm-4">
				<h:inputText id="asset_nu_ident" tabindex="5"  value="#{cadAssetVhwagBean.asset_nu_ident}" size="32" maxlength="30"  styleClass="form-control form-control-sm" onchange="bv('','asset_nu_ident','1',this.value);"/>
			</div>
		</div>
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_vagao_serie_cfwagse" for="asset_cd_vagao_serie_cfwagse"  value="#{iimsg.AssetVhwag_asset_cd_vagao_serie_cfwagse_tt}"/>  
			</div>
			<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_vagao_serie_cfwagse" value="#{cadAssetVhwagBean.asset_cd_vagao_serie_cfwagse}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_vagao_serie_cfwagse','1','WAGSE',this.value);;" size="7" maxlength="5" tabindex="6" />
					<h:commandButton id="asset_cd_vagao_serie_cfwagse_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'WAGSE', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	
			</div>				
			<div class="col-sm-2">
				<h:inputText id="asset_cd_vagao_serie_cfwagse_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_vagao_serie_cfwagse_desc}" styleClass="dscCodfCad"/>
			</div>
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_vagao_cfwagtp" for="asset_tp_vagao_cfwagtp"  value="#{iimsg.AssetVhwag_asset_tp_vagao_cfwagtp_tt}"/>  
			</div>
			<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_tp_vagao_cfwagtp" value="#{cadAssetVhwagBean.asset_tp_vagao_cfwagtp}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_vagao_cfwagtp','1','WAGTP',this.value);;" size="5" maxlength="3" tabindex="7" />
					<h:commandButton id="asset_tp_vagao_cfwagtp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'WAGTP', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>
			</div>
			<div class="col-sm-2">
				<h:inputText id="asset_tp_vagao_cfwagtp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_tp_vagao_cfwagtp_desc}"  styleClass="dscCodfCad"/>
			</div>
		</div>
		<div class="row mb-2 text-left">
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_propriedade" for="asset_tp_propriedade"  value="#{iimsg.AssetVhwag_asset_tp_propriedade_tt}"/>  
			</div>
			<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_tp_propriedade" value="#{cadAssetVhwagBean.asset_tp_propriedade}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_propriedade','1','TPPRP',this.value);;" size="5" maxlength="3" tabindex="8" />
					<h:commandButton id="asset_tp_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRP', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>	
			</div>				
			<div class="col-sm-2">
				<h:inputText id="asset_tp_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_tp_propriedade_desc}"  styleClass="dscCodfCad"/>
			</div>
			<div class="col-sm-2">
				<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_operacional_vg" for="asset_cd_operacional_vg"  value="#{iimsg.AssetVhwag_asset_cd_operacional_vg_tt}"/>  
			</div>
			<div class="col-sm-2">
				<div class="input-group input-group-sm mb-2">
					<h:inputText  id="asset_cd_operacional_vg" value="#{cadAssetVhwagBean.asset_cd_operacional_vg}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_operacional_vg','1','CDOPR',this.value);;" size="5" maxlength="3" tabindex="9" />
					<h:commandButton id="asset_cd_operacional_vg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDOPR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
				</div>
			</div>
			<div class="col-sm-2">
					<h:inputText id="asset_cd_operacional_vg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_operacional_vg_desc}"  styleClass="dscCodfCad"/>
			</div>
		</div>
	</div>
</div>
<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="Localização"/>	
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhwag_asset_cd_corredor_tt}"/>  
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_cd_corredor" value="#{cadAssetVhwagBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="21" />
						<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>				
				<div class="col-sm-2">
					<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_posmatrodante" for="asset_tp_posmatrodante"  value="#{iimsg.AssetVhwag_asset_tp_posmatrodante_tt}"/>  
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_posmatrodante" value="#{cadAssetVhwagBean.asset_tp_posmatrodante}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_posmatrodante','1','PMTDT',this.value);;" size="7" maxlength="5" tabindex="22" />
						<h:commandButton id="asset_tp_posmatrodante_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PMTDT', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>				
				<div class="col-sm-2">
					<h:inputText id="asset_tp_posmatrodante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_tp_posmatrodante_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_px_local_vistoria" for="asset_px_local_vistoria"  value="#{iimsg.AssetVhwag_asset_px_local_vistoria_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ds_acesso_rodv" tabindex="24"  value="#{cadAssetVhwagBean.asset_ds_acesso_rodv}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_acesso_rodv','1',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetVhwag_asset_km_fim_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_km_fim" tabindex="25"  value="#{cadAssetVhwagBean.asset_km_fim_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetVhwag_asset_vl_coords_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_vl_coords" tabindex="26"  value="#{cadAssetVhwagBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_coords','1',this.value);"/>
				</div>				
			</div>
		</div>
</div>
<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_loca_unl_tt_tt}"/>
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_px_local_vistoria_unl" for="asset_px_local_vistoria_unl"  value="#{iimsg.AssetVhwag_asset_px_local_vistoria_unl_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_px_local_vistoria_unl" tabindex="10"  value="#{cadAssetVhwagBean.asset_px_local_vistoria_unl}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_px_local_vistoria_unl','1',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_px_corredor_unl" for="asset_px_corredor_unl"  value="Corredor UNILOG"/>  
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_cd_corredor_unl" value="#{cadAssetVhwagBean.asset_cd_corredor_unl}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_corredor_unl','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="11" />
						<h:commandButton id="asset_cd_corredor_unl_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_corredor_unl_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_corredor_unl_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_ds_atividade" for="asset_ds_atividade"  value="#{iimsg.AssetVhwag_asset_ds_atividade_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ds_atividade" tabindex="12"  value="#{cadAssetVhwagBean.asset_ds_atividade}" size="52" maxlength="50"  styleClass="form-control form-control-sm" onchange="bv('','asset_ds_atividade','1',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_qt_dias_parados" for="asset_qt_dias_parados"  value="#{iimsg.AssetVhwag_asset_qt_dias_parados_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_qt_dias_parados" tabindex="13"  value="#{cadAssetVhwagBean.asset_qt_dias_parados}"  styleClass="form-control form-control-sm" size="4" maxlength="2" onchange="bv('','asset_qt_dias_parados','1',valNum(this.value));"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_nm_cfresid_unl" for="asset_nm_cfresid_unl"  value="#{iimsg.AssetVhwag_asset_nm_cfresid_unl_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_nm_cfresid_unl" tabindex="14"  value="#{cadAssetVhwagBean.asset_nm_cfresid_unl}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_nm_cfresid_unl','1',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_operacional_vg_unl" for="asset_cd_operacional_vg_unl"  value="#{iimsg.AssetVhwag_asset_cd_operacional_vg_unl_tt}"/>  
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_cd_operacional_vg_unl" value="#{cadAssetVhwagBean.asset_cd_operacional_vg_unl}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_operacional_vg_unl','1','CDOPU',this.value);;" size="5" maxlength="3" tabindex="15" />
						<h:commandButton id="asset_cd_operacional_vg_unl_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDOPU', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_operacional_vg_unl_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_operacional_vg_unl_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_propriedade_unl" for="asset_cd_propriedade_unl"  value="#{iimsg.AssetVhwag_asset_cd_propriedade_unl_tt}"/>  
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_cd_propriedade_unl" value="#{cadAssetVhwagBean.asset_cd_propriedade_unl}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_propriedade_unl','1','TPPRU',this.value);;" size="27" maxlength="25" tabindex="16" />
						<h:commandButton id="asset_cd_propriedade_unl_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPPRU', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_propriedade_unl_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_cd_propriedade_unl_desc}"  styleClass="dscCodfCad"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_dt_itf_unl" for="asset_dt_itf_unl"  value="#{iimsg.AssetVhwag_asset_dt_itf_unl_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_dt_itf_unl" tabindex="-1"  onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_dt_itf_unl_str}" size="0" maxlength="10"  styleClass="form-control form-control-sm" />
				</div>
			</div>
		</div>
</div>

<div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetVhwag_ifcpl_tt_tt}"/>	
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_carta_subst" for="asset_cd_carta_subst"  value="#{iimsg.AssetVhwag_asset_cd_carta_subst_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_cd_carta_subst" tabindex="17"  value="#{cadAssetVhwagBean.asset_cd_carta_subst}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','asset_cd_carta_subst','1',this.value);"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_st_pcm" for="asset_st_pcm"  value="#{iimsg.AssetVhwag_asset_st_pcm_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_st_pcm" tabindex="18"  value="#{cadAssetVhwagBean.asset_st_pcm}" size="27" maxlength="25"  styleClass="form-control form-control-sm" onchange="bv('','asset_st_pcm','1',this.value);"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_indez_dnit" for="asset_vl_indez_dnit"  value="#{iimsg.AssetVhwag_asset_vl_indez_dnit_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_vl_indez_dnit" tabindex="19"  value="#{cadAssetVhwagBean.asset_vl_indez_dnit_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_indez_dnit','1',valDec(this.value));"/>
				</div>				
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_indez_mrc" for="asset_vl_indez_mrc"  value="#{iimsg.AssetVhwag_asset_vl_indez_mrc_tt}"/>  
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_vl_indez_mrc" tabindex="20"  value="#{cadAssetVhwagBean.asset_vl_indez_mrc_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_indez_mrc','1',valDec(this.value));"/>
				</div>
			</div>
		</div>
</div>


	
<div class="card m-3">
	<div class="card-header rowreader"> 	
		<div class = "row">
			<div class="col-sm-6" align="left">					
				<h:outputText    value="#{iimsg.AssetVhwag_asset_im_tt_tt}"/>
			</div>
			<div class="col-sm-6" align="right">	
				<h:commandButton id="obimg" style="vertical-align:bottom" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhwagcad&tipo='+wtran+'&valor='+valor1;"  image="fa/svgs/solid/imagedark.png"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				<h:commandButton id="asset_docs_xsel" style="vertical-align:bottom" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetvhwagcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="fa/svgs/solid/folderopendark.png" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=WG';">				<h:graphicImage id="flag_imggeo_asset_geo_ongrid2" value="fa/svgs/solid/globedark.png" /></h:outputLink>
				<h:inputHidden id="sel_asset_idasset_geolink_bt" value="#{cadAssetVhwagBean.asset_id}"/>
			</div>		
		</div>
	</div>
	<div class="card-body">
			<div class="row">
			</div>
			<div class="row">
				<div class="col-sm-4">
					<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
				</div>
				<div class="col-sm-4">
					<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />			
				</div>
				<div class="col-sm-4">
					<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />			
				</div>
			</div>
	</div>
</div> 



<script>
function mostraDados1( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande1").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande1").style.display = 'block';
}
}
function mostraDados2( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande2").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande2").style.display = 'block';
}
}
function mostraDados3( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande3").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande3").style.display = 'block';
}
}
<c:if test="${ cadAssetVhwagBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetVhwagBean.asset_id }" />','','','<c:out value="${  cadAssetVhwagBean.assetvhwag_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetVhwagBean.asset_id }" />','','','<c:out value="${  cadAssetVhwagBean.assetvhwag_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetVhwagBean.asset_id }" />','','','<c:out value="${  cadAssetVhwagBean.assetvhwag_nm_image3 }" />');
</c:if>
</script>
