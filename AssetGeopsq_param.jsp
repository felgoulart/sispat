<table>  <%-- initial implicit frame open 555 090728--%>
</table> <%-- middle implicit frame close  777 --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_p_date_start" for="p_date_start"  value="#{iimsg.AssetGeo_p_date_start_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="p_date_start" tabindex="1"  onclick="clf(this);" value="#{cadAssetGeoBean.p_date_start}" style="background: #FFFFAA;" styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','p_date_start','Invty','invty_cd','invty_nm',this.value);" size="6" maxlength="4" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="p_date_start_xsel" tabindex="-1" immediate="true" onmousedown="openningForm();pw('invtypsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="p_date_start_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetGeoBean.p_date_start_desc}" styleClass="txlr pr5 tb180r"/>
</td> <%-- <close td> ccc --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_p_date_end" for="p_date_end"  value="#{iimsg.AssetGeo_p_date_end_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="p_date_end" tabindex="2"  onclick="clf(this);" value="#{cadAssetGeoBean.p_date_end}" style="background: #FFFFAA;" styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','p_date_end','Invty','invty_cd','invty_nm',this.value);" size="6" maxlength="4" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="p_date_end_xsel" tabindex="-1" immediate="true" onmousedown="openningForm();pw('invtypsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="p_date_end_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetGeoBean.p_date_end_desc}" styleClass="txlr pr5 tb180r"/>
</td> <%-- <close td> ccc --%>
