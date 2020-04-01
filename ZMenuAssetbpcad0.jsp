<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAssetbpBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../projStandardMenu.css" type="text/css">
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
fcf('cadForm:TX');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAssetbpBean.role}"/></title>
<style>
.menu-group {
border: 1px solid black;
width: 97%;
margin-top: 5px;
margin-bottom: 10px;
margin-left: 5px;
height: 86px;
}
.menu-group th {
border-bottom: 1px solid black;
}
.menu-group td:first-of-type {
width: 50px;
}
</style>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuassetbpcad';cadbeanx='cadZMenuAssetbpBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm">
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
<td> &nbsp&nbsp </td>
<td width="72" height="40" valign="top"><img src="imagens/logo_system_mrs.gif"></td>
<td class="tti" width="100%">
<!-- Titulo -->
<h:outputText value="#{cadZMenuAssetbpBean.role}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeMenu/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeMenu/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeMenu/md_fio_top1.gif" nowrap>
<h:commandButton id="aLogout" rendered="#{!loginBean.adAuthenticated}"   styleClass="btp"  image="../imagens/btLogout.gif" onmousedown="msgwr()" title="#{iimsg.pr_logoff_tt}" action="#{loginBean.doLogout}"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@MenuRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadZMenuAssetbpBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAssetbpBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAssetbpBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAssetbpBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAssetbpBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAssetbpBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAssetbpBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAssetbpBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/thmeMenu/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeMenu/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeMenu/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeMenu/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeMenu/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeMenu/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeMenu/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr>  <%-- <tr open> menu --%>
<td  align="center" width="500" >
<h:selectOneMenu value="#{cadZMenuAssetbpBean.selectedItem}">
<f:selectItems value="#{cadZMenuAssetbpBean.selectItems}" />
</h:selectOneMenu>
<h:commandButton value="ativar" action="#{cadZMenuAssetbpBean.action}" />
<h:commandButton value="ativar como menu inicial do usuátio" action="#{cadZMenuAssetbpBean.updateUserMenu}" />
<h:messages />
&nbsp&nbsp&nbsp&nbsp
<h:inputText id="mesg_var" value="#{cadZMenuAssetbpBean.mesg_var}"  styleClass="txrr pr5 tb650r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> menu --%>
</tr> <%-- <tr close> menu --%>
<tr> <td valign="top" >
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_TX" for="TX"  value="#{iimsg.ZMenuAssetbp_TX_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
<table  >  <%-- <open Main Container Table>--%>
<tr>  <%-- <Start a Container Line--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<%-- Menu Group Tittle --%>
<h:panelGrid id="panel__MenuAssetRollingStock_utittle" columns="2" styleClass="tts menu-group"
cellpadding="2" cellspacing="1">
<f:facet name="header">
<h:outputText  value="#{iimsg.ZMenuAssetbp_MenuAssetRollingStock_tt}"/>
</f:facet>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeAssetSuper" rendered="#{cadZMenuAssetbpBean.canac_assetsuper}" onmousedown="fExecx('assetsuperpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetSuperBean.doSelecionar}">
<h:graphicImage  url="../imagens/AssetSuper40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.assetsuper_TT_ta}"/>
</h:panelGrid>
<%-- Menu Group Tittle --%>
<h:panelGrid id="panel__GroupRollingStock_utittle" columns="2" styleClass="tts menu-group"
cellpadding="2" cellspacing="1">
<f:facet name="header">
<h:outputText  value="#{iimsg.ZMenuAssetbp_GroupRollingStock_tt}"/>
</f:facet>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeAssetVhwag" rendered="#{cadZMenuAssetbpBean.canac_assetvhwag}" onmousedown="fExecx('assetvhwagpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhwagBean.doSelecionar}">
<h:graphicImage  url="../imagens/AssetVhwag40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.assetvhwag_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeAssetVheng" rendered="#{cadZMenuAssetbpBean.canac_assetvheng}" onmousedown="fExecx('assetvhengpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhengBean.doSelecionar}">
<h:graphicImage  url="../imagens/AssetVheng40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.assetvheng_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeAssetVhaux" rendered="#{cadZMenuAssetbpBean.canac_assetvhaux}" onmousedown="fExecx('assetvhauxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhauxBean.}">
<h:graphicImage  url="../imagens/AssetVhaux40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.assetvhaux_TT_ta}"/>
</h:panelGrid>
<%-- Menu Group Tittle --%>
<h:panelGrid id="panel__GroupBuilding_utittle" columns="2" styleClass="tts menu-group"
cellpadding="2" cellspacing="1">
<f:facet name="header">
<h:outputText  value="#{iimsg.ZMenuAssetbp_GroupBuilding_tt}"/>
</f:facet>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeAssetBldng" rendered="#{cadZMenuAssetbpBean.canac_assetbldng}" onmousedown="fExecx('assetbldngpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetBldngBean.doSelecionar}">
<h:graphicImage  url="../imagens/AssetBldng40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.assetbldng_TT_ta}"/>
</h:panelGrid>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<%-- Menu Group Tittle --%>
<h:panelGrid id="panel__MenuAssetObdoc_utittle" columns="2" styleClass="tts menu-group"
cellpadding="2" cellspacing="1">
<f:facet name="header">
<h:outputText  value="#{iimsg.ZMenuAssetbp_MenuAssetObdoc_tt}"/>
</f:facet>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeInvty" rendered="#{cadZMenuAssetbpBean.canac_invty}" onmousedown="fExecx('invtypsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyBean.doSelecionar}">
<h:graphicImage  url="../imagens/Invty40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.invty_TT_ta}"/>
</h:panelGrid>
<%-- Menu Group Tittle --%>
<h:panelGrid id="panel__GroupDetails_utittle" columns="2" styleClass="tts menu-group"
cellpadding="2" cellspacing="1">
<f:facet name="header">
<h:outputText  value="#{iimsg.ZMenuAssetbp_GroupDetails_tt}"/>
</f:facet>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeObdocx" rendered="#{cadZMenuAssetbpBean.canac_obdocx}" onmousedown="fExecx('obdocxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObdocxBean.doSelecionar}">
<h:graphicImage  url="../imagens/Obdocx40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.obdocx_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeObimgx" rendered="#{cadZMenuAssetbpBean.canac_obimgx}" onmousedown="fExecx('obimgxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObimgxBean.doSelecionar}">
<h:graphicImage  url="../imagens/Obimgx40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.obimgx_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeObocpx" rendered="#{cadZMenuAssetbpBean.canac_obocpx}" onmousedown="fExecx('obocpxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObocpxBean.doSelecionar}">
<h:graphicImage  url="../imagens/Obocpx40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.obocpx_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeObocrx" rendered="#{cadZMenuAssetbpBean.canac_obocrx}" onmousedown="fExecx('obocrxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObocrxBean.doSelecionar}">
<h:graphicImage  url="../imagens/Obocrx40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.obocrx_TT_ta}"/>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeObmacx" rendered="#{cadZMenuAssetbpBean.canac_obmacx}" onmousedown="fExecx('obmacxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObmacxBean.doSelecionar}">
<h:graphicImage  url="../imagens/Obmacx40.png" styleClass="btp" />
</h:commandLink>
<h:outputText styleClass="mnt" value="#{iimsg.obmacx_TT_ta}"/>
</h:panelGrid>
</td>  <%-- <Close a Container Column--%>
</tr>  <%-- <Close a Container Line--%>
</table>  <%-- <Close  a Container Main Table aa --%>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/thmeMenu/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeMenu/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeMenu/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeMenu/md_curva_botdir.gif" width="15" height="13"> </td>
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
<h:commandLink id="xsel_vali" action="#{cadZMenuAssetbpBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAssetbpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetsuper" action="#{cadAssetSuperBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhwag" action="#{cadAssetVhwagBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvheng" action="#{cadAssetVhengBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetbldng" action="#{cadAssetBldngBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocx" action="#{cadObdocxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obimgx" action="#{cadObimgxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obocpx" action="#{cadObocpxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obocrx" action="#{cadObocrxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obmacx" action="#{cadObmacxBean.doSelecionar}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuassetbp" action="#{cadZMenuAssetbpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuassetbp" action="#{cadZMenuAssetbpBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
