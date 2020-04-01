<table>  <%-- initial implicit frame open 555 090728--%>
</table> <%-- middle implicit frame close  777 --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="p_date_start" value="#{cadAssetYrdsdBean.p_date_start}"/>
<%-- Hidden --%>
<h:inputHidden id="p_date_end" value="#{cadAssetYrdsdBean.p_date_end}"/>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_range_sqlparm" for="asset_km_range_sqlparm"  value="#{iimsg.AssetYrdsd_asset_km_range_sqlparm_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="300" class="pr5"> <h:inputText id="asset_km_range_sqlparm" tabindex="1"  value="#{cadAssetYrdsdBean.asset_km_range_sqlparm_str}" style="background: #FFFFAA;" styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_km_range_sqlparm','0',valDec(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="asset_km_range_sqlparmx" value="#{cadAssetYrdsdBean.asset_km_range_sqlparmx}"/>
