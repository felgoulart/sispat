
<table      >  <%-- <explicit frame open> --%>
<tr>   
<td    colspan ="4"   width="100%" > 
<table width="100%"  bgcolor="D4DDE6" > 
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> 
<h:outputText value="#{iimsg.AssetVhaux_loca_zp_tt_tt}"/>
</td>
</td> 
</tr>
</table >
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetVhaux_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


<h:inputText  id="asset_cd_corredor" onclick="clf(this);" value="#{cadAssetVhauxBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_corredor','2','CDCRR',this.value);;" size="12" maxlength="10" tabindex="17" />
</div>
		<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_cd_corredor_desc}" styleClass="dscCodfCad"/>
</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetVhaux_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>

<td   width="700"   >


<h:inputText  id="asset_cd_cfreslc" onclick="clf(this);" value="#{cadAssetVhauxBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_cd_cfreslc','2','RESLC',this.value);;" size="7" maxlength="5" tabindex="18" />
</div>
		<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetVhauxBean.asset_cd_cfreslc_desc}" styleClass="dscCodfCad"/>
</td> 
</tr> 
<tr>   
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetVhaux_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_ltde" tabindex="19"  value="#{cadAssetVhauxBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_ltde','2',this.value);"/>

</td> 
<td        width="300" > 

<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetVhaux_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_lgtd" tabindex="20"  value="#{cadAssetVhauxBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="form-control form-control-sm" onchange="bv('','asset_vl_lgtd','2',this.value);"/>

</td> 
</tr> 
</table> <%-- <explicit frame close> --%>
