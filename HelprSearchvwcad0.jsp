<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadHelprSearchvwBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardSyst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../tinymce/jscripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------
<!-- mce rtfReadOnly -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "help_ds_rtfReadOnly",
language : "",
theme_advanced_buttons1 : "fullscreen",
readonly : true,
content_css : "../tinymce/jscripts/tiny_mce/readOnlySyst.css"
});
function testUpdate() {
document.getElementById('cadForm:aUpdate').onclick();
upflag=0;
}

function loadPage(number) {
lpCaller();
fcf('cadForm:help_cd');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleSyst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadHelprSearchvwBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='helprsearchvwcad';cadbeanx='cadHelprSearchvwBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<%@include file="projHeaderHlp.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbc96" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<h:outputText value="#{cadHelprSearchvwBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeSyst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'helprsearchvwpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadHelprvwBean.doSelecionarBackx}"/>
<h:commandButton id="aHelpHelprSearchvwRfm" tabindex="-1" immediate="true" rendered="#{cadHelprSearchvwBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'HelprSearchvwRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadHelprSearchvwBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadHelprSearchvwBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadHelprSearchvwBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadHelprSearchvwBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadHelprSearchvwBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadHelprSearchvwBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadHelprSearchvwBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadHelprSearchvwBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/thmeSyst/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeSyst/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeSyst/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<table   >  <%-- <mesg frame open> --%>
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadHelprSearchvwBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadHelprSearchvwBean.canUpdate}" action="#{cadHelprSearchvwBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="60" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_help_cd" for="help_cd"  value="#{iimsg.HelprSearchvw_help_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="200" > <h:inputText id="help_cd" tabindex="-1"  readonly="true" value="#{cadHelprSearchvwBean.help_cd}"  styleClass="txl pl5 tbxr" size="35" maxlength="35"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="help_lg" value="#{cadHelprSearchvwBean.help_lg}"/>
<%-- Hidden --%>
<h:inputHidden id="help_tp" value="#{cadHelprSearchvwBean.help_tp}"/>
<%-- Hidden --%>
<h:inputHidden id="help_st" value="#{cadHelprSearchvwBean.help_st}"/>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="2" width="520"   >
<h:inputText id="help_nm" tabindex="-1"  readonly="true" value="#{cadHelprSearchvwBean.help_nm}" size="100" maxlength="100"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="help_ds" tabindex="3"  value="#{cadHelprSearchvwBean.help_ds}" cols="100" rows="33" styleClass="help_ds_rtfReadOnly"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- middle implicit frame close  777 --%>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/thmeSyst/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeSyst/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="Help" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadHelprSearchvwBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelprSearchvwBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_help" action="#{cadHelpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_helprsearchvw" action="#{cadHelprSearchvwBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helprsearchvw" action="#{cadHelprSearchvwBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_Help" action="#{cadHelpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_Help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_Help" action="#{cadHelpBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
