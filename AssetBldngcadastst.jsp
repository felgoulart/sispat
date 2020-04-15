 <div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetBldng_attb_tt_pct_tt}"/>
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:inputHidden id="asset_cl_imovel" value="#{cadAssetBldngBean.asset_cl_imovel}"/>
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_tipologia" for="asset_tp_tipologia"  value="#{iimsg.AssetBldng_asset_tp_tipologia_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_tipologia" value="#{cadAssetBldngBean.asset_tp_tipologia}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_tipologia','4','TIPOL',this.value);;" size="7" maxlength="5" tabindex="47" />
						<h:commandButton id="asset_tp_tipologia_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPOL', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_tp_tipologia_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_tipologia_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_edificacao" for="asset_tp_edificacao"  value="#{iimsg.AssetBldng_asset_tp_edificacao_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_edificacao" value="#{cadAssetBldngBean.asset_tp_edificacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_edificacao','4','TPEDF',this.value);;" size="7" maxlength="5" tabindex="48" />
						<h:commandButton id="asset_tp_edificacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPEDF', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_tp_edificacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_edificacao_desc}" styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_utilizacao" for="asset_tp_utilizacao"  value="#{iimsg.AssetBldng_asset_tp_utilizacao_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_utilizacao" value="#{cadAssetBldngBean.asset_tp_utilizacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_utilizacao','4','TIUTI',this.value);;" size="7" maxlength="5" tabindex="49" />
						<h:commandButton id="asset_tp_utilizacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIUTI', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_tp_utilizacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_utilizacao_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_ocupacao_terc" for="asset_tp_ocupacao_terc"  value="#{iimsg.AssetBldng_asset_tp_ocupacao_terc_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_ocupacao_terc" value="#{cadAssetBldngBean.asset_tp_ocupacao_terc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_ocupacao_terc','4','TPOCT',this.value);;" size="7" maxlength="5" tabindex="50" />
						<h:commandButton id="asset_tp_ocupacao_terc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPOCT', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_tp_ocupacao_terc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_ocupacao_terc_desc}"  styleClass="dscCodfCad"/>
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_indez" for="asset_vl_indez"  value="#{iimsg.AssetBldng_asset_vl_indez_tt}"/> 
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_vl_indez" tabindex="29"  value="#{cadAssetBldngBean.asset_vl_indez_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_vl_indez','2',valDec(this.value));"/>							
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetBldng_asset_ar_total_tt}"/> 
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ar_total" tabindex="29"  value="#{cadAssetBldngBean.asset_ar_total_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_ar_total','2',valDec(this.value));"/>							
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_padrao_construtivo_ed" for="asset_cd_padrao_construtivo_ed"  value="#{iimsg.AssetBldng_asset_cd_padrao_construtivo_ed_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_cd_padrao_construtivo_ed" value="#{cadAssetBldngBean.asset_cd_padrao_construtivo_ed}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_cd_padrao_construtivo_ed','4','EDPDC',this.value);;" size="5" maxlength="3" tabindex="53" />
						<h:commandButton id="asset_cd_padrao_construtivo_ed_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'EDPDC', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_cd_padrao_construtivo_ed_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_cd_padrao_construtivo_ed_desc}"  styleClass="dscCodfCad"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_edif_ferrov" for="asset_ar_edif_ferrov"  value="#{iimsg.AssetBldng_asset_ar_edif_ferrov_tt}"/> 
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ar_edif_ferrov" tabindex="29"  value="#{cadAssetBldngBean.asset_ar_edif_ferrov_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_ar_edif_ferrov','2',valDec(this.value));"/>			
				</div>
			</div>
			<div class="row mb-2 text-left">
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_nao_edif" for="asset_ar_nao_edif"  value="#{iimsg.AssetBldng_asset_ar_nao_edif_tt}"/> 
				</div>
				<div class="col-sm-4">
					<h:inputText id="asset_ar_nao_edif" tabindex="29"  value="#{cadAssetBldngBean.asset_ar_nao_edif_str}"  styleClass="form-control form-control-sm" size="14" maxlength="12" onchange="bv('','asset_ar_nao_edif','2',valDec(this.value));"/>
				</div>
				<div class="col-sm-2">
					<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_medidor" for="asset_tp_medidor"  value="#{iimsg.AssetBldng_asset_tp_medidor_tt}"/> 
				</div>
				<div class="col-sm-2">
					<div class="input-group input-group-sm mb-2">
						<h:inputText  id="asset_tp_medidor" value="#{cadAssetBldngBean.asset_tp_medidor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf" onchange="bdcd('','asset_tp_medidor','4','TPMED',this.value);;" size="12" maxlength="10" tabindex="56" />
						<h:commandButton id="asset_tp_medidor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPMED', tran, this.id, 'yes');" styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png"/>
					</div>
				</div>
				<div class="col-sm-2">
					<h:inputText id="asset_tp_medidor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_medidor_desc}" styleClass="dscCodfCad"/>
				</div>
			</div>
		</div>
	</div>
 <div class="card m-3">
	<div class="card-header rowreader ">   
		<h:outputText value="#{iimsg.AssetBldng_obs_tt_tt}"/>
	</div>
		<div class="card-body">
			<div class="row mb-2 text-left">
				<h:inputTextarea id="asset_ob2" tabindex="57"  value="#{cadAssetBldngBean.asset_ob}"  cols="60" rows="4" styleClass="form-control" onchange="bv('','asset_ob','4',this.value);" style="height:100px;"/>
			</div>
		</div>
	</div>
</div>






