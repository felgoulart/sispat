<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadAssetBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardGray.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../Assetfunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../tinymce/jscripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------
<!-- mce rtfFontChoice -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "asset_ds_rtfFontChoice",
language : "",
plugins : "save,inlinepopups,safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,justifyfull,|,cut,copy,paste,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,fullscreen",
theme_advanced_buttons2 : "",
theme_advanced_buttons3 : "",
theme_advanced_buttons4 : "",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true,
save_onsavecallback : "testUpdate"
});
<!-- mce rtfFontChoice -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "asset_ob_rtfFontChoice",
language : "",
plugins : "save,inlinepopups,safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,justifyfull,|,cut,copy,paste,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,fullscreen",
theme_advanced_buttons2 : "",
theme_advanced_buttons3 : "",
theme_advanced_buttons4 : "",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true,
save_onsavecallback : "testUpdate"
});
function testUpdate() {
document.getElementById('cadForm:aUpdate').onclick();
upflag=0;
}

// Main Divs Declarations...
var arAbas = new Array();
arAbas[1] = new stAba('aba_astrg','abc_astrg','flg_astrg','u','a','astrg');
arAbas[2] = new stAba('aba_astlc','abc_astlc','flg_astlc','u','a','astlc');
arAbas[3] = new stAba('aba_astat','abc_astat','flg_astat','u','a','astat');
arAbas[4] = new stAba('aba_astbp','abc_astbp','flg_astbp','u','a','astbp');
arAbas[5] = new stAba('aba_astsr','abc_astsr','flg_astsr','u','a','astsr');
arAbas[6] = new stAba('aba_astoc','abc_astoc','flg_astoc','u','a','astoc');
arAbas[7] = new stAba('aba_astev','abc_astev','flg_astev','u','a','astev');
arAbas[8] = new stAba('aba_astsv','abc_astsv','flg_astsv','u','a','astsv');
arAbas[9] = new stAba('aba_astob','abc_astob','flg_astob','u','a','astob');
arAbas[10] = new stAba('aba_astex','abc_astex','flg_astex','u','a','astex');
// Sub Divs Declarations...
var arSubAbas = new Array();
function loadPage(number) {
mesgStyleStub(rel('cadForm:xmesg_rc'),rel('cadForm:xmesg_st'));
// Main Stubs Declarations...
if (number == 1) { AlternarFlag(xxtabsvf); }
if (number == 2) { AlternarFlag(xxtabsvf); }
if (number == 3) { AlternarFlag(xxtabsvf); }
if (number == 4) { AlternarFlag(xxtabsvf); }
if (number == 5) { AlternarFlag(xxtabsvf); }
if (number == 6) { AlternarFlag(xxtabsvf); }
if (number == 7) { AlternarFlag(xxtabsvf); }
if (number == 8) { AlternarFlag(xxtabsvf); }
if (number == 9) { AlternarFlag(xxtabsvf); }
if (number == 10) { AlternarFlag(xxtabsvf); }
}
</SCRIPT>
<title><h:outputText value="#{cadAssetBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();"  onload="window.focus();loading();ufmvini();tran='assetcad';cadbeanx='cadAssetBean'; loadPage(<%= request.getAttribute("pagina") %>); AlternarAbas(parent.cadbeanx, <%=(Object)session.getAttribute(("cadAssetBeanx"))%>);AlternarSubAbas();">
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
<br>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadAssetBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeGray/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeGray/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeGray/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadAssetBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadAssetBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadAssetBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadAssetBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadAssetBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadAssetBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadAssetBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadAssetBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetRfm" tabindex="-1" immediate="true" rendered="#{cadAssetBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'AssetRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadAssetBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadAssetBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadAssetBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadAssetBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadAssetBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadAssetBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadAssetBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/thmeGray/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeGray/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeGray/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeGray/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeGray/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeGray/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeGray/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr id="tr_aba_notr" style="display: none" > <td width="" id="aba_notr">
<A><img id="flg_notr"/></A>
</td> </tr>
<!-- Closing Which Table ? -->
</table>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/thmeGray/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeGray/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeGray/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeGray/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
<iframe id="asset" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obmac" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obmac" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fIxccustsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fIxccustsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadAssetBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obocp" action="#{cadObocpBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obocp" action="#{cadObocpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obocp" action="#{cadObocpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obocp" action="#{cadObocpBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obocr" action="#{cadObocrBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obocr" action="#{cadObocrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obocr" action="#{cadObocrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obocr" action="#{cadObocrBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obmac" action="#{cadObmacBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obmac" action="#{cadObmacBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obmac" action="#{cadObmacBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obmac" action="#{cadObmacBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarNullOnly}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doNovo}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vg" action="#{cadVgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vg" action="#{cadVgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vg" action="#{cadVgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lc" action="#{cadLcBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lc" action="#{cadLcBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lc" action="#{cadLcBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vx" action="#{cadVxBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vx" action="#{cadVxBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vx" action="#{cadVxBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ed" action="#{cadEdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ed" action="#{cadEdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ed" action="#{cadEdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tp" action="#{cadTpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tp" action="#{cadTpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tp" action="#{cadTpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tl" action="#{cadTlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tl" action="#{cadTlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tl" action="#{cadTlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lp" action="#{cadLpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lp" action="#{cadLpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lp" action="#{cadLpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lr" action="#{cadLrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lr" action="#{cadLrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lr" action="#{cadLrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_dp" action="#{cadDpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_dp" action="#{cadDpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_dp" action="#{cadDpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_dc" action="#{cadDcBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_dc" action="#{cadDcBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_dc" action="#{cadDcBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pn" action="#{cadPnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pn" action="#{cadPnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pn" action="#{cadPnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ps" action="#{cadPsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ps" action="#{cadPsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ps" action="#{cadPsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pi" action="#{cadPiBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pi" action="#{cadPiBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pi" action="#{cadPiBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pt" action="#{cadPtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pt" action="#{cadPtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pt" action="#{cadPtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vd" action="#{cadVdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vd" action="#{cadVdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vd" action="#{cadVdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_bu" action="#{cadBuBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_bu" action="#{cadBuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_bu" action="#{cadBuBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tu" action="#{cadTuBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tu" action="#{cadTuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tu" action="#{cadTuBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_Ixccust" action="#{cadIxccustBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_Ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_Ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
