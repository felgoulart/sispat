
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhaux_chqtrc_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetVhaux_asset_st_geral_tt}"/>  </td> <%-- <top> --%>

<td  colspan ="4" width="300"   >


	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_st_geral" value="#{cadAssetVhauxBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_geral','3','CONSG',this.value);;" size="5" maxlength="3" tabindex="41" />
</div>
		<h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_st_geral_desc}"  styleClass="dscCodfCad"/>
		</div>
	</div>
</td> 
</tr> 
<tr>   
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="asset_ob" tabindex="42"  value="#{cadAssetVhauxBean.asset_ob}"  cols="60" rows="4" styleClass="asset_ob_rtfFontChoice" onchange="bv('','asset_ob','3',this.value);"/>
</td> 
</tr> 
</table> <%-- <explicit frame close> --%>
