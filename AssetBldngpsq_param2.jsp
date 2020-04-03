
<h:inputHidden id="p_date_start" value="#{cadAssetInvasBean.p_date_start}"/>

<h:inputHidden id="p_date_end" value="#{cadAssetInvasBean.p_date_end}"/>

<div class="bg-transparent mt-3 internoFiltro">

	<div class="rowFiltro">
	<h:outputLabel  styleClass="h6"  id="lbl_p_asset_nu" for="p_asset_nu"  value="#{iimsg.AssetBldng_p_asset_nu_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	
		<h:inputText id="p_asset_nu" tabindex="1"  value="#{cadAssetBldngBean.p_asset_nu}" size="25" maxlength="320"  styleClass="form-control form-control-sm" onchange="bv('','p_asset_nu','0',this.value);"/>
	   </div>
	  </div>

	<div class="rowFiltro">
			<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_tipologia" for="p_asset_tp_tipologia"  value="#{iimsg.AssetBldng_p_asset_tp_tipologia_tt}"/>	
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText  id="p_asset_tp_tipologia" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_tp_tipologia}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="3" />
		<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_tp_tipologia_xsel" immediate="true" onmousedown="pw('CX'+'TIPOL', tran, this.id, 'yes');" /> 

	  </div>
    </div>
	
	
	<div class="rowFiltro">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_tp_utilizacao" for="p_asset_tp_utilizacao"  value="#{iimsg.AssetBldng_p_asset_tp_utilizacao_tt}"/>

	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
		<h:inputText  id="p_asset_tp_utilizacao" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_tp_utilizacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm"  tabindex="4" />	

	  </div>
    </div>


		<div class="rowFiltro">
			<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_uf" for="p_asset_cd_uf"  value="#{iimsg.AssetBldng_p_asset_cd_uf_tt}"/>

	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText  id="p_asset_cd_uf" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_uf}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="6" />
	   	<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_cd_uf_xsel" immediate="true" onmousedown="pw('CX'+'GUF', tran, this.id, 'yes');" />

	  </div>
    </div>
	
		<div class="rowFiltro">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfresid" for="p_asset_cd_cfresid"  value="#{iimsg.AssetBldng_p_asset_cd_cfresid_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		
				<h:inputText  id="p_asset_cd_cfresid" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="11" />
	   	<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_cd_cfresid_xsel" immediate="true" onmousedown="pw('CX'+'RESID', tran, this.id, 'yes');" />
	  </div>
    </div>
	
	

		<div class="rowFiltro">
			<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_corredor" for="p_asset_cd_corredor"  value="#{iimsg.AssetBldng_p_asset_cd_corredor_tt}"/>


	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText  id="p_asset_cd_corredor" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="12" />
	   	<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_cd_corredor_xsel" immediate="true" onmousedown="pw('CX'+'CDCRR', tran, this.id, 'yes');" />

	  </div>
    </div>

		<div class="rowFiltro">
			<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_trecho" for="p_asset_cd_trecho"  value="#{iimsg.AssetBldng_p_asset_cd_trecho_tt}"/>

		
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText  id="p_asset_cd_trecho" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_trecho}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="13" />
	   	<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_cd_trecho_xsel" immediate="true" onmousedown="pw('CX'+'TRCHO', tran, this.id, 'yes');" />

	  </div>
    </div>

		<div class="rowFiltro">
				<h:outputLabel  styleClass="h6"  id="lbl_p_asset_cd_cfreslc" for="p_asset_cd_cfreslc"  value="#{iimsg.AssetBldng_p_asset_cd_cfreslc_tt}"/>

		
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText  id="p_asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetBldngBean.p_asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm inputcodf"  tabindex="14" />
	   	<h:commandButton  styleClass="btn btncodf" image="../fa/svgs/solid/searchgray.png" id="p_asset_cd_cfreslc_xsel" immediate="true" onmousedown="pw('CX'+'RESLC', tran, this.id, 'yes');" />

	  </div>
    </div>
	
	

		<div class="rowFiltro">
		<h:outputLabel  styleClass="h6"  id="lbl_p_asset_km_ini" for="p_asset_km_ini"  value="#{iimsg.AssetBldng_p_asset_km_ini_tt}"/>
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText id="p_asset_km_ini" tabindex="15"  value="#{cadAssetBldngBean.p_asset_km_ini_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','p_asset_km_ini','0',valDec(this.value));"/>

	  </div>
    </div>
		<div class="rowFiltro">
		<h:outputLabel  styleClass="h6"  id="lbl_asset_km_range_sqlparm" for="asset_km_range_sqlparm"  value="Faixa KM de Busca"/>
		
	</div>
	<div class="rowFiltro">
	  <div class="input-group input-group-sm mb-2">
	  		<h:inputText id="asset_km_range_sqlparm" tabindex="16"  value="#{cadAssetBldngBean.asset_km_range_sqlparm_str}"  styleClass="form-control form-control-sm" size="12" maxlength="10" onchange="bv('','asset_km_range_sqlparm','0',valDec(this.value));"/>
		<h:inputHidden id="asset_km_range_sqlparmx" value="#{cadAssetBldngBean.asset_km_range_sqlparmx}"/>

	  </div>
    </div>




	

</div>




