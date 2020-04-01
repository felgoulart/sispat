<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadPjausPpaobtvBean");%>
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
<script src="../PjausPpaobtvfunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

// Main Divs Declarations...
var arAbas = new Array();
arAbas[1] = new stAba('aba_pjtst','abc_pjtst','flg_pjtst','u','a','aba_pjtst');
arAbas[2] = new stAba('aba_pjtrg','abc_pjtrg','flg_pjtrg','u','a','aba_pjtrg');
arAbas[3] = new stAba('aba_pjint','abc_pjint','flg_pjint','u','a','aba_pjint');
arAbas[4] = new stAba('aba_pjana','abc_pjana','flg_pjana','u','a','aba_pjana');
arAbas[5] = new stAba('aba_pjanh','abc_pjanh','flg_pjanh','u','a','aba_pjanh');
arAbas[6] = new stAba('aba_pjtrq','abc_pjtrq','flg_pjtrq','u','a','aba_pjtrq');
// Sub Divs Declarations...
var arSubAbas = new Array();
function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:pjaus_id').readOnly = true;
el('cadForm:pjaus_id').className = 'tbxr';
}
mesgStyleStub(rel('cadForm:xmesg_rc'),rel('cadForm:xmesg_st'));
// Main Stubs Declarations...
if (number == 1) { AlternarFlag(xxtabsvf); }
if (number == 2) { AlternarFlag(xxtabsvf); }
if (number == 3) { AlternarFlag(xxtabsvf); }
if (number == 4) { AlternarFlag(xxtabsvf); }
if (number == 5) { AlternarFlag(xxtabsvf); }
if (number == 6) { AlternarFlag(xxtabsvf); }
}
</SCRIPT>
<title><h:outputText value="#{cadPjausPpaobtvBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();"  onload="window.focus();loading();ufmvini();tran='pjausppaobtvcad';cadbeanx='cadPjausPpaobtvBean'; loadPage(<%= request.getAttribute("pagina") %>); AlternarAbas(parent.cadbeanx, <%=(Object)session.getAttribute(("cadPjausPpaobtvBeanx"))%>);AlternarSubAbas();">
<h:form id="cadForm" target="mesg">
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
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadPjausPpaobtvBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjausppaobtvpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjausPpaobtvBean.doSelecionarNullOnly}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjausppaobtvcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadPjausPpaobtvBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadPjausPpaobtvBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjausppaobtvcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadPjausPpaobtvBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadPjausPpaobtvBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadPjausPpaobtvBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadPjausPpaobtvBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadPjausPpaobtvBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadPjausPpaobtvBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjausppaobtvcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjaus');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjausRfm" tabindex="-1" immediate="true" rendered="#{cadPjausPpaobtvBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'PjausRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadPjausPpaobtvBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjausPpaobtvBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadPjausPpaobtvBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadPjausPpaobtvBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadPjausPpaobtvBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadPjausPpaobtvBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadPjausPpaobtvBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadPjausPpaobtvBean.xmesg_st}" />
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
<table class="tbab" width="990" height="20" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="" id="aba_pjtst" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjtst" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 1);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_STATUS_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_pjtrg" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjtrg" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 2);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_REGISTER_UV_st}"/>
</h:outputLink>
</td>
<td width="200" id="aba_pjint" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjint" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 3);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_INTERF_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_pjana" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjana" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 4);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_ANALISE_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_pjanh" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjanh" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 5);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_ANALISEH_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_pjtrq" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_pjtrq" class="btp" align="absmiddle" style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 6);" styleClass="mnt">
<h:outputText value="#{iimsg.PjausPpaobtv_D00_REQUEST_UV_st}"/>
</h:outputLink>
</td>
<td width="20" id="aba_tp" class="abs" align="center">
<img id="flg_abatp" class="btp" align="absmiddle"/>
</td>
</tr>
<tr id="tr_aba_notr" style="display: none" > <td width="" id="aba_notr">
<A><img id="flg_notr"/></A>
</td> </tr>
<!-- Closing Which Table ? -->
</table>
</tr>
<tr>
<td align="center">
<!-- UV-UV-Stubs/MV D00_STATUS_UV-->
<div id="abc_pjtst" style="display: none">
<%@include file="PjausPpaobtvcadpjtst.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_REGISTER_UV-->
<div id="abc_pjtrg" style="display: none">
<%@include file="PjausPpaobtvcadpjtrg.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_INTERF_UV-->
<div id="abc_pjint" style="display: none">
<%@include file="PjausPpaobtvcadpjint.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_ANALISE_UV-->
<div id="abc_pjana" style="display: none">
<%@include file="PjausPpaobtvcadpjana.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_ANALISEH_UV-->
<div id="abc_pjanh" style="display: none">
<%@include file="PjausPpaobtvcadpjanh.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_REQUEST_UV-->
<div id="abc_pjtrq" style="display: none">
<%@include file="PjausPpaobtvcadpjtrq.jsp"%>
</div>
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
<iframe id="ObxlsPpaobtv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjaus" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="solic" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fSolicsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fSolicsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjckl" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjeml" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsoengha" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsoinfra" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsomambt" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsofbrot" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsooutrs" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpj" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadPjausPpaobtvBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjausPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obimgpj" action="#{cadObimgpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpj" action="#{cadObdocpjBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obdocpj" action="#{cadObdocpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpjckl" action="#{cadObdocpjcklBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obdocpjckl" action="#{cadObdocpjcklBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpjeml" action="#{cadObdocpjemlBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obdocpjeml" action="#{cadObdocpjemlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsoengha" action="#{cadPjhsoenghaBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsoengha" action="#{cadPjhsoenghaBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsoengha" action="#{cadPjhsoenghaBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsoinfra" action="#{cadPjhsoinfraBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsoinfra" action="#{cadPjhsoinfraBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsoinfra" action="#{cadPjhsoinfraBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsomambt" action="#{cadPjhsomambtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsomambt" action="#{cadPjhsomambtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsomambt" action="#{cadPjhsomambtBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsofbrot" action="#{cadPjhsofbrotBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsofbrot" action="#{cadPjhsofbrotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsofbrot" action="#{cadPjhsofbrotBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsooutrs" action="#{cadPjhsooutrsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsooutrs" action="#{cadPjhsooutrsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsooutrs" action="#{cadPjhsooutrsBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjhsp" action="#{cadPjhspBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_pjhsp" action="#{cadPjhspBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_pjhsp" action="#{cadPjhspBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsp" action="#{cadPjhspBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsPpaobtv" action="#{cadObxlsPpaobtvBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsPpaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsPpaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solex" action="#{cadSolexBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solex" action="#{cadSolexBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solex" action="#{cadSolexBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solin" action="#{cadSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solin" action="#{cadSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solcs" action="#{cadSolcsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solcs" action="#{cadSolcsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solcs" action="#{cadSolcsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solot" action="#{cadSolotBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solot" action="#{cadSolotBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solot" action="#{cadSolotBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimgpj" action="#{cadObimgpjBean.doSelecionarNullOnly}" immediate="true"/>
<h:commandLink id="xnew_obimgpj" action="#{cadObimgpjBean.doNovo}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_pjausppaobtv" action="#{cadPjausPpaobtvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjausppaobtv" action="#{cadPjausPpaobtvBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
