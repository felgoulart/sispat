<table      >  <%-- <explicit frame open> --%>
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetVhwag_asset_st_geral_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="150"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div>
		<h:inputText  id="asset_st_geral" value="#{cadAssetVhwagBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_geral','3','CONSG',this.value);;" size="5" maxlength="3" tabindex="49" />	
		<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_geral_desc}"  styleClass="dscCodfCad"/>
	</div>
	</div>
		</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_chqtrc_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_engate1" for="asset_st_engate1"  value="#{iimsg.AssetVhwag_asset_st_engate1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:commandButton id="asset_st_engate1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div>
		<h:inputText  id="asset_st_engate1" value="#{cadAssetVhwagBean.asset_st_engate1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_engate1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="50" />	
		<h:inputText id="asset_st_engate1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_engate1_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
		</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_engate2" for="asset_st_engate2"  value="#{iimsg.AssetVhwag_asset_st_engate2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:commandButton id="asset_st_engate2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText  id="asset_st_engate2" value="#{cadAssetVhwagBean.asset_st_engate2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_engate2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="51" />
		<h:inputText id="asset_st_engate2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_engate2_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_ap_chqtrc1" for="asset_st_ap_chqtrc1"  value="#{iimsg.AssetVhwag_asset_st_ap_chqtrc1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:commandButton id="asset_st_ap_chqtrc1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText  id="asset_st_ap_chqtrc1" value="#{cadAssetVhwagBean.asset_st_ap_chqtrc1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_ap_chqtrc1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="52" />
		<h:inputText id="asset_st_ap_chqtrc1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_ap_chqtrc1_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_ap_chqtrc2" for="asset_st_ap_chqtrc2"  value="#{iimsg.AssetVhwag_asset_st_ap_chqtrc2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_ap_chqtrc2" value="#{cadAssetVhwagBean.asset_st_ap_chqtrc2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_ap_chqtrc2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="53" />
		</div>
		<h:commandButton id="asset_st_ap_chqtrc2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		<h:inputText id="asset_st_ap_chqtrc2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_ap_chqtrc2_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_frebag_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_vvl_freio" for="asset_st_vvl_freio"  value="#{iimsg.AssetVhwag_asset_st_vvl_freio_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_vvl_freio" value="#{cadAssetVhwagBean.asset_st_vvl_freio}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_vvl_freio','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="54" />
		</div>
		<h:commandButton id="asset_st_vvl_freio_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_vvl_freio_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_vvl_freio_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_cil_freio" for="asset_st_cil_freio"  value="#{iimsg.AssetVhwag_asset_st_cil_freio_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_cil_freio" value="#{cadAssetVhwagBean.asset_st_cil_freio}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_cil_freio','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="55" />
		</div>
		<h:commandButton id="asset_st_cil_freio_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_cil_freio_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_cil_freio_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_reserv_ar" for="asset_st_reserv_ar"  value="#{iimsg.AssetVhwag_asset_st_reserv_ar_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_reserv_ar" value="#{cadAssetVhwagBean.asset_st_reserv_ar}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_reserv_ar','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="56" />
		</div>
		<h:commandButton id="asset_st_reserv_ar_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_reserv_ar_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_reserv_ar_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_vvl_emerg" for="asset_st_vvl_emerg"  value="#{iimsg.AssetVhwag_asset_st_vvl_emerg_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_vvl_emerg" value="#{cadAssetVhwagBean.asset_st_vvl_emerg}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_vvl_emerg','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="57" />
		</div>
		<h:commandButton id="asset_st_vvl_emerg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_vvl_emerg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_vvl_emerg_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_truqe_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_lateral1" for="asset_st_trq_lateral1"  value="#{iimsg.AssetVhwag_asset_st_trq_lateral1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_lateral1" value="#{cadAssetVhwagBean.asset_st_trq_lateral1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_lateral1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="58" />
		</div>
		<h:commandButton id="asset_st_trq_lateral1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_lateral1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_lateral1_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_lateral2" for="asset_st_trq_lateral2"  value="#{iimsg.AssetVhwag_asset_st_trq_lateral2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_lateral2" value="#{cadAssetVhwagBean.asset_st_trq_lateral2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_lateral2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="59" />
		</div>
		<h:commandButton id="asset_st_trq_lateral2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_lateral2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_lateral2_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_trvprc1" for="asset_st_trq_trvprc1"  value="#{iimsg.AssetVhwag_asset_st_trq_trvprc1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_trvprc1" value="#{cadAssetVhwagBean.asset_st_trq_trvprc1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_trvprc1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="60" />
		</div>
		<h:commandButton id="asset_st_trq_trvprc1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_trvprc1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_trvprc1_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_trvprc2" for="asset_st_trq_trvprc2"  value="#{iimsg.AssetVhwag_asset_st_trq_trvprc2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_trvprc2" value="#{cadAssetVhwagBean.asset_st_trq_trvprc2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_trvprc2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="61" />
		</div>
		<h:commandButton id="asset_st_trq_trvprc2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_trvprc2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_trvprc2_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_trgfreio1" for="asset_st_trq_trgfreio1"  value="#{iimsg.AssetVhwag_asset_st_trq_trgfreio1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_trgfreio1" value="#{cadAssetVhwagBean.asset_st_trq_trgfreio1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_trgfreio1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="62" />
		</div>
		<h:commandButton id="asset_st_trq_trgfreio1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_trgfreio1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_trgfreio1_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_trq_trgfreio2" for="asset_st_trq_trgfreio2"  value="#{iimsg.AssetVhwag_asset_st_trq_trgfreio2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_trq_trgfreio2" value="#{cadAssetVhwagBean.asset_st_trq_trgfreio2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_trq_trgfreio2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="63" />
		</div>
		<h:commandButton id="asset_st_trq_trgfreio2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_trq_trgfreio2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_trq_trgfreio2_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_rodeiro_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_rodeiro1" for="asset_st_rodeiro1"  value="#{iimsg.AssetVhwag_asset_st_rodeiro1_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_rodeiro1" value="#{cadAssetVhwagBean.asset_st_rodeiro1}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_rodeiro1','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="64" />
		</div>
		<h:commandButton id="asset_st_rodeiro1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_rodeiro1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_rodeiro1_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_rodeiro2" for="asset_st_rodeiro2"  value="#{iimsg.AssetVhwag_asset_st_rodeiro2_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="6" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_rodeiro2" value="#{cadAssetVhwagBean.asset_st_rodeiro2}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_rodeiro2','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="65" />
		</div>
		<h:commandButton id="asset_st_rodeiro2_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_rodeiro2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_rodeiro2_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_super_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_estrutura_cx" for="asset_st_estrutura_cx"  value="#{iimsg.AssetVhwag_asset_st_estrutura_cx_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_estrutura_cx" value="#{cadAssetVhwagBean.asset_st_estrutura_cx}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_estrutura_cx','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="66" />
		</div>
		<h:commandButton id="asset_st_estrutura_cx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_estrutura_cx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_estrutura_cx_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_longarina" for="asset_st_longarina"  value="#{iimsg.AssetVhwag_asset_st_longarina_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_longarina" value="#{cadAssetVhwagBean.asset_st_longarina}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_longarina','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="67" />
		</div>
		<h:commandButton id="asset_st_longarina_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_longarina_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_longarina_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
<td        width="15%" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_portas" for="asset_st_portas"  value="#{iimsg.AssetVhwag_asset_st_portas_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="550"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
		<h:inputText  id="asset_st_portas" value="#{cadAssetVhwagBean.asset_st_portas}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_portas','3','CONSV',this.value);;" size="5" maxlength="3" tabindex="68" />
		</div>
		<h:commandButton id="asset_st_portas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
		</div> <h:inputText id="asset_st_portas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhwagBean.asset_st_portas_desc}"  styleClass="dscCodfCad"/>
		</div>
</td> 
</tr> 
<tr>   
<td    colspan ="12"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhwag_obs_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   
<%-- inputTextArea --%>
<td   colspan="6" >  <h:inputTextarea id="asset_ob" tabindex="69"  value="#{cadAssetVhwagBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','3',this.value);"/>
</td> 
</tr> 
</table> <%-- middle implicit frame close  777 --%>