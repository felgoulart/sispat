<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_p_seltype" for="p_seltype"  value="#{iimsg.Obdocpj_p_seltype_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="p_seltype_bol" value="#{cadObdocpjBean.p_seltype}"/>
<h:selectBooleanCheckbox id="p_seltype" tabindex="1"  value="#{cadObdocpjBean.p_seltype_bol}" onclick="chkBoolean(this, 'cadForm:p_seltype_bol');"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_uploadSelection" for="uploadSelection"  value="#{iimsg.Obdocpj_uploadSelection_tt}"/>  </td> <%-- <top> --%>
<%-- prop Selection --%>
<td width="600"/>
<ps:psInputFile id="inputFile"  value="#{cadObdocpjBean.file}" styleClass="tb400r" /> ></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObdocpjBean.canUpload}" id="lbl_upload" for="upload"  value="#{iimsg.Obdocpj_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUploadOnly --%>
<td width="600"/>
<h:commandButton id="doUpload" rendered="#{cadObdocpjBean.canUpload}" action="#{cadObdocpjBean.doFileUpload}" image="../imagens/fileUpload3.gif" /></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
