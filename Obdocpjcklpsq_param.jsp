<table>  <%-- initial implicit frame open 555 090728--%>
</table> <%-- middle implicit frame close  777 --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_p_seltype" for="p_seltype"  value="#{iimsg.Obdocpjckl_p_seltype_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="300"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="p_seltype_bol" value="#{cadObdocpjcklBean.p_seltype}"/>
<h:selectBooleanCheckbox id="p_seltype" tabindex="1"  value="#{cadObdocpjcklBean.p_seltype_bol}" onclick="chkBoolean(this, 'cadForm:p_seltype_bol');"/>
</td> <%-- <close td> ccc --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_uploadSelection" for="uploadSelection"  value="#{iimsg.Obdocpjckl_uploadSelection_tt}"/>  </td> <%-- <top> --%>
<%-- prop Selection --%>
<td width="300"/>
<ps:psInputFile id="inputFile"  value="#{cadObdocpjcklBean.file}" styleClass="tb400r" /> ></td>
</td> <%-- <close td> ccc --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObdocpjcklBean.canUpload}" id="lbl_upload" for="upload"  value="#{iimsg.Obdocpjckl_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUploadOnly --%>
<td width="100"/>
<h:commandButton id="doUpload" rendered="#{cadObdocpjcklBean.canUpload}" action="#{cadObdocpjcklBean.doFileUpload}" image="../imagens/fileUpload3.gif" /></td>
</td> <%-- <close td> ccc --%>
