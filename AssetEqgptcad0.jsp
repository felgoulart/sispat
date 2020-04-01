<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetEqgptBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
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
arAbas[1] = new stAba('aba_astig','abc_astig','flg_astig','u','a','aba_astig');
arAbas[2] = new stAba('aba_astct','abc_astct','flg_astct','u','a','aba_astct');
arAbas[3] = new stAba('aba_astst','abc_astst','flg_astst','u','a','aba_astst');
// Sub Divs Declarations...
var arSubAbas = new Array();
function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:asset_id').readOnly = true;
el('cadForm:asset_id').className = 'tbxr';
}
mesgStyleStub(rel('cadForm:xmesg_rc'),rel('cadForm:xmesg_st'));
// Main Stubs Declarations...
if (number == 1) { AlternarFlag(xxtabsvf); }
if (number == 2) { AlternarFlag(xxtabsvf); }
if (number == 3) { AlternarFlag(xxtabsvf); }
}
</SCRIPT>
<title><h:outputText value="#{cadAssetEqgptBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();"  onload="window.focus();loading();ufmvini();tran='asseteqgptcad';cadbeanx='cadAssetEqgptBean'; loadPage(<%= request.getAttribute("pagina") %>); AlternarAbas(parent.cadbeanx, <%=(Object)session.getAttribute(("cadAssetEqgptBeanx"))%>);AlternarSubAbas();">
<h:form id="cadForm" target="mesg">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2 mt-3"  value="#{cadAssetEqgptBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			<h:outputLabel for="asset_id11" >
			<h:outputText value="#{iimsg.AssetBldng_asset_id_tt}"/>
			</h:outputLabel> 
			<h:outputText id="asset_id11" value="#{cadAssetEqgptBean.asset_id}"  />
			<h:outputText value="#{iimsg.AssetBldng_asset_nu_tt}"/>
			<h:outputText id="asset_id_dsc11" value="#{cadAssetEqgptBean.asset_nu}" />
		</p>
		<p style="text-align:center;">
		<h:inputText id="mesg_varastif1" rendered="#{cadAssetEqgptBean.canUpdate}" value="#{cadAssetEqgptBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
		<h:commandButton id="aMessageastif1" image="../imagens/btMessage_off.gif" styleClass="d-none" title="#{iimsg.botao_message}" rendered="#{cadAssetEqgptBean.canUpdate}" action="#{cadAssetEqgptBean.doValidate}" onmousedown="msgw('aMessageastif1');"/>
		</p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch1" immediate="true"  styleClass="btn btn-outline-dark" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetbldngpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" value="Voltar" action="#{cadAssetEqgptBean.doSelecionar}"/>
		</div>
	</div>
	</div>
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbc" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<!-- Barra -->


</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>

<h:commandButton id="aBackToSearch1Menu" immediate="true"  styleClass="d-none" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'asseteqgptcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadAssetEqgptBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="d-none" rendered="#{cadAssetEqgptBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'asseteqgptcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadAssetEqgptBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="d-none" rendered="#{cadAssetEqgptBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadAssetEqgptBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="d-none" title="#{iimsg.botao_excluir}" rendered="#{cadAssetEqgptBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadAssetEqgptBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="d-none"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadAssetEqgptBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'asseteqgptcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetComRollsRfm" styleClass="d-none" tabindex="-1" immediate="true" rendered="#{cadAssetEqgptBean.hasHelpComRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'AssetComRollsRfm');" image="../imagens/btHelpCom.gif"/>
<h:commandButton id="aHelpAssetRollsRfm" styleClass="d-none" tabindex="-1" immediate="true" rendered="#{cadAssetEqgptBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'AssetRollsRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/d-nonerinter.gif"/>
<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadAssetEqgptBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetEqgptBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadAssetEqgptBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadAssetEqgptBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadAssetEqgptBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadAssetEqgptBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadAssetEqgptBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadAssetEqgptBean.xmesg_st}" />
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

<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<table class="tbab" width="850" height="20" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="" id="aba_astig" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_astig" class="d-none d-none" align="absmiddle"style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 1);" styleClass="mnt">
<h:outputText value="#{iimsg.AssetEqgpt_D00_INFGR_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_astct" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_astct" class="d-none d-none" align="absmiddle"style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 2);" styleClass="mnt">
<h:outputText value="#{iimsg.AssetEqgpt_D00_CTB_UV_st}"/>
</h:outputLink>
</td>
<td width="" id="aba_astst" style="display: none">
<A href="#" onclick="msgwv('xsel_vali')"><img id="flg_astst" class="d-none d-none" align="absmiddle"style="padding:5px; float:left" /></A>
<h:outputLink value="#" onclick="AlternarAbas(parent.cadbeanx, 3);" styleClass="mnt">
<h:outputText value="#{iimsg.AssetEqgpt_D00_STATUS_UV_st}"/>
</h:outputLink>
</td>
<td width="20" id="aba_tp" class="abs" align="center">
<img id="flg_abatp" class="d-none" align="absmiddle"/>
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
<!-- UV-UV-Stubs/MV D00_INFGR_UV-->
<div id="abc_astig" style="display: none">
<%@include file="AssetEqgptcadastig.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_CTB_UV-->
<div id="abc_astct" style="display: none">
<%@include file="AssetEqgptcadastct.jsp"%>
</div>
<!-- UV-UV-Stubs/MV D00_STATUS_UV-->
<div id="abc_astst" style="display: none">
<%@include file="AssetEqgptcadastst.jsp"%>
</div>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>

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
<iframe id="InvtyEG" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyEG" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="asset" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyEG" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtyEGsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:inputHidden id="source" value="cadForm:"/>
<h:inputHidden id="sourcedesc" value="cadForm:nome"/>
<h:commandLink id="xsel_vali" action="#{cadAssetEqgptBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetEqgptBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_invtyeg" action="#{cadInvtyEGBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_invtyeg" action="#{cadInvtyEGBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_invtyeg" action="#{cadInvtyEGBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_InvtyEG" action="#{cadInvtyEGBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_InvtyEG" action="#{cadInvtyEGBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_InvtyEG" action="#{cadInvtyEGBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarNullOnly}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doNovo}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_asseteqgpt" action="#{cadAssetEqgptBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asseteqgpt" action="#{cadAssetEqgptBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
