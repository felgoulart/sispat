<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadObxlsLocalBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
fcf('cadForm:uploadSelection');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
function loadObjt_pk(objt_pk) {
el('cadForm:obxls_id').value = objt_pk;
}
</SCRIPT>
<title><h:outputText value="#{cadObxlsLocalBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='obxlslocalcad';cadbeanx='cadObxlsLocalBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" enctype="multipart/form-data" >
<jsp:setProperty property="cadbeanx" name="cadObxlsLocalBean" value="cadObxlsLocalBean"/>
<h:inputHidden id="cadbeanx" value="#{cadObxlsLocalBean.cadbeanx}"  />
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbc" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<br>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadObxlsLocalBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'localpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadLocalBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadObxlsLocalBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obxlslocalcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObxlsLocalBean.doReturnMenu}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadObxlsLocalBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obxlslocalcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadObxlsLocalBean.doUpdate}">
<f:param name="cadbeanx" value="cadObxlsLocalBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadObxlsLocalBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadObxlsLocalBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadObxlsLocalBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadObxlsLocalBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadObxlsLocalBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obxlslocalcad'+'&ufmv='+stx">
<f:param name="tipo" value="obxlslocalcad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obxls');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObxlsLocalRfm" tabindex="-1" immediate="true" rendered="#{cadObxlsLocalBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ObxlsLocalRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadObxlsLocalBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadObxlsLocalBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadObxlsLocalBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadObxlsLocalBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadObxlsLocalBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadObxlsLocalBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadObxlsLocalBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadObxlsLocalBean.xmesg_st}" />
<h:outputText id="label_key_enter" style="display:none" value="#{iimsg.label_key_enter}" />
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="label_and" style="display:none" value="#{iimsg.label_and}" />
<h:outputText id="label_or" style="display:none" value="#{iimsg.label_or}" />
<h:outputText id="msg_actionValidOnlyForButtons" style="display:none" value="#{iimsg.msg_actionValidOnlyForButtons}" />
<h:outputText id="msg_actionNotValidForButtons" style="display:none" value="#{iimsg.msg_actionNotValidForButtons}" />
<h:outputText id="msg_cleanCurrentSelection" style="display:none" value="#{iimsg.msg_cleanCurrentSelection" />
<h:outputText id="msg_cleanSelectionToGetNewRecord" style="display:none" value="#{iimsg.msg_cleanSelectionToGetNewRecord" />
<h:outputText id="msg_fillTheField" style="display:none" value="#{iimsg.msg_fillTheField}" />
<h:outputText id="msg_itDoesntApply" style="display:none" value="#{iimsg.msg_itDoesntApply}" />
<h:outputText id="msg_cleanRecordToImport" style="display:none" value="#{iimsg.msg_cleanRecordToImport}" />
<h:outputText id="msg_selectFromListToExceuteFunction" style="display:none" value="#{iimsg.msg_selectFromListToExceuteFuncion}" />
<h:outputText id="msg_invalidOperation" style="display:none" value="#{iimsg.msg_invalidOperation}" />
<h:outputText id="msg_invalidValue" style="display:none" value="#{iimsg.msg_invalidValue}" />
<h:outputText id="msg_valueOf" style="display:none" value="#{iimsg.msg_valueOf}" />
<h:outputText id="msg_mustBe" style="display:none" value="#{iimsg.msg_mustBe}" />
<h:outputText id="msg_cannotBe" style="display:none" value="#{iimsg.msg_cannotBe}" />
<h:outputText id="msg_unlock" style="display:none" value="#{iimsg.msg_unlock}" />
<h:outputText id="multiple_porte" style="display:none" value="#{iimsg.multiple_porte}" />
<h:outputText id="no_porte" style="display:none" value="#{iimsg.no_porte}" />
<h:outputText id="sys_confirm_excluir" style="display:none" value="#{iimsg.sys_confirm_excluir}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
</td>
<td width="15" height="13" background="../imagens/thmeAsst/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeAsst/md_fio_dir1.gif" nowrap>&nbsp;</td>
</tr>
</table>
<!-- Botoes -->
</td>
</tr>
</table>
<!-- Barra -->
</td>
</tr>
<tr>
<td>
<!-- Moldura -->
<table id="moldura" class="tbm" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td background="../imagens/thmeAsst/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeAsst/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeAsst/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeAsst/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeAsst/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadObxlsLocalBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadObxlsLocalBean.canUpdate}" action="#{cadObxlsLocalBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<h:inputHidden id="obxls_id" value="#{cadObxlsLocalBean.obxls_id}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_uploadSelection" for="uploadSelection"  value="#{iimsg.ObxlsLocal_uploadSelection_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUpload --%>
<td width="600"/>
<ps:psInputFile id="inputFile"  value="#{cadObxlsLocalBean.file}" styleClass="tb400r" /> ></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obxls_tp" value="#{cadObxlsLocalBean.obxls_tp}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obxls_id_dir" for="obxls_id_dir"  value="#{iimsg.ObxlsLocal_obxls_id_dir_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="obxls_id_dir" tabindex="2"  value="#{cadObxlsLocalBean.obxls_id_dir}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','obxls_id_dir','0',this.value);"/>
<ps:psGraphicImage id="obxls_id_dir_vc" flagType="val" flag="#{cadObxlsLocalBean.obxls_id_dir_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obxls_dt" for="obxls_dt"  value="#{iimsg.ObxlsLocal_obxls_dt_tt}"/>  </td> <%-- <top> --%>
<%-- current DateTime --%>
<td  width="600" > <h:inputText id="obxls_dt" tabindex="-1"  onfocus="this.blur()" value="#{cadObxlsLocalBean.obxls_dt_str}" onchange="uf();" size="20" maxlength="20" styleClass="tbDhr"/>
<ps:psGraphicImage id="obxls_dt_vc" flagType="val" flag="#{cadObxlsLocalBean.obxls_dt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obxls_ds" value="#{cadObxlsLocalBean.obxls_ds}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obxls_nm_file" for="obxls_nm_file"  value="#{iimsg.ObxlsLocal_obxls_nm_file_tt}"/>  </td> <%-- <top> --%>
<%-- prop Non Key readOnly Type--%>
<td  width="600" > <h:inputText id="obxls_nm_file" tabindex="-1"  readonly="true" value="#{cadObxlsLocalBean.obxls_nm_file}"  styleClass="tbxr" size="30" maxlength="30"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObxlsLocalBean.canUpload}" id="lbl_upload" for="upload"  value="#{iimsg.ObxlsLocal_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUpload --%>
<td width="600"/>
<h:commandButton id="doUpload" rendered="#{cadObxlsLocalBean.canUpload}" action="#{cadObxlsLocalBean.doFileUpload}" image="../imagens/fileUpload3.gif" /></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObxlsLocalBean.canDownload}" id="lbl_download" for="download"  value="#{iimsg.ObxlsLocal_download_ta}"/>  </td> <%-- <top> --%>
<%-- prop buttonDownload --%>
<td width="600" />
<ps:psCommandLink id="download" rendered="#{cadObxlsLocalBean.canDownload}" styleClass="mnt"  action="#{cadObxlsLocalBean.downloadFile}" ativo="../imagens/fileDownload3.gif"  onmousedown="wtran=document.getElementById('cadForm:obxls_nm_file').value;el('fiiSaveValue').src = 'iiSaveValue.jsp?tipo='+wtran;">
</ps:psCommandLink>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/thmeAsst/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeAsst/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeAsst/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeAsst/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<!-- iFrames -->
<iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakht" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakhv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfkds" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiLocalidadesch" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiwsCEP" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveValue" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeSw" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeHelp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveFieldx" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTrainDelayCalc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="TrainOprDelay" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:inputHidden id="source" value="cadForm:"/>
<h:inputHidden id="sourcedesc" value="cadForm:nome"/>
<h:commandLink id="xsel_vali" action="#{cadObxlsLocalBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObxlsLocalBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_obxlslocal" action="#{cadObxlsLocalBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlslocal" action="#{cadObxlsLocalBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
<script>
// loadFieldsFromList  ------------------------------------
function mostraDados( obxls_id, obxls_id_dir, obxls_nm_file, obxls_ds, obxls_dt){
document.getElementById( "cadForm:obxls_id").value = obxls_id;
document.getElementById( "cadForm:obxls_sq").value = obxls_sq;
document.getElementById( "cadForm:obxls_ds").value = obxls_ds;
document.getElementById( "cadForm:lbl_obxls_nm_file").value = obxls_nm_file;
document.getElementById( "cadForm:obxls_nm_file").value = obxls_nm_file;

document.getElementById( "img_grande").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obxlslocal_nm_file +'&tipo=imagem';
document.getElementById( "img_grande").style.display = 'block';
}
<c:if test="${  cadObxlsLocalBean.obxls_nm_file !=null }">
mostraDados('<c:out value="${  cadObxlsLocalBean.obxls_id }" />','<c:out value="${  cadObxlsLocalBean.obxls_id_dir }" />','<c:out value="${  cadObxlsLocalBean.obxls_nm_file }" />','<c:out value="${  cadObxlsLocalBean.obxls_ds }" />','<c:out value="${  cadObxlsLocalBean.obxls_dt }" />');
</c:if>
</script>
