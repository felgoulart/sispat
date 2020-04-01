<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAssetInterfacesBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandard.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
fcf('cadForm:_IXAbastecimento');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAssetInterfacesBean.role}"/></title>
<style>
.mnt {  display: flex; padding-top: 11px; }
.btp {  top: -1px; position: relative; padding-top: 0px; }
</style>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuassetinterfacescad';cadbeanx='cadZMenuAssetInterfacesBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<td> &nbsp&nbsp </td>
<td width="72" height="40" valign="top"><img src="imagens/logo_system_mrs.gif"></td>
<td class="tti" width="100%">
<!-- Titulo -->
<h:outputText value="#{cadZMenuAssetInterfacesBean.role}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aLogout" styleClass="btp"  ativo="../imagens/btLogout.gif" onmousedown="msgwr()" title="#{iimsg.pr_logoff_tt}" action="#{loginBean.doLogout}">
</ps:psCommandLink>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'zmenuassetinterfacescad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadZMenuAssetInterfacesBean.doReturnMenu}"/>
<h:commandButton id="aPrev" immediate="true" styleClass="btp" rendered="#{cadZMenuAssetInterfacesBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadZMenuAssetInterfacesBean.doObternullPrev}"/>
<h:commandButton id="aNext" immediate="true" styleClass="btp" rendered="#{cadZMenuAssetInterfacesBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadZMenuAssetInterfacesBean.doObternullNext}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','ZMenuAssetInterfaces');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@MenuRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadZMenuAssetInterfacesBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAssetInterfacesBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAssetInterfacesBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAssetInterfacesBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAssetInterfacesBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAssetInterfacesBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAssetInterfacesBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAssetInterfacesBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/md_fio_top.gif" height="13"> </td>
<td background="../imagens/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr>  <%-- <tr open> menu --%>
<td  align="center" width="500" >
<h:selectOneMenu value="#{cadZMenuAssetInterfacesBean.selectedItem}">
<f:selectItems value="#{cadZMenuAssetInterfacesBean.selectItems}" />
</h:selectOneMenu>
<h:commandButton value="submit" action="#{cadZMenuAssetInterfacesBean.action}" />
<h:messages />
&nbsp&nbsp&nbsp&nbsp
<h:inputText id="mesg_var" value="#{cadZMenuAssetInterfacesBean.mesg_var}"  styleClass="txrr pr5 tb650r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> menu --%>
</tr> <%-- <tr close> menu --%>
<tr> <td valign="top" >
<table  >  <%-- <open Main Container Table>--%>
<tr>  <%-- <Start a Container Line--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetInterfaces_MenuSaff_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXAbastecimento" rendered="#{cadZMenuAssetInterfacesBean.canac_ixabastecimento}" onmousedown="fExecx('ixabastecimentopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAbastecimentoBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXAbastecimento40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixabastecimento_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXLocoDesemp" rendered="#{cadZMenuAssetInterfacesBean.canac_ixlocodesemp}" onmousedown="fExecx('ixlocodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoDesempBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXLocoDesemp40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixlocodesemp_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXLocoManut" rendered="#{cadZMenuAssetInterfacesBean.canac_ixlocomanut}" onmousedown="fExecx('ixlocomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoManutBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXLocoManut40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixlocomanut_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoDesemp" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaodesemp}" onmousedown="fExecx('ixvagaodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDesempBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoDesemp40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaodesemp_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoManut" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaomanut}" onmousedown="fExecx('ixvagaomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoManut40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaomanut_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXTremFormado" rendered="#{cadZMenuAssetInterfacesBean.canac_ixtremformado}" onmousedown="fExecx('ixtremformadopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremFormadoBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXTremFormado40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixtremformado_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXTremDesemp" rendered="#{cadZMenuAssetInterfacesBean.canac_ixtremdesemp}" onmousedown="fExecx('ixtremdesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremDesempBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXTremDesemp40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixtremdesemp_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetInterfaces_MenuSyslog_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoSislog" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaosislog}" onmousedown="fExecx('ixvagaosislogpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoSislogBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoSislog40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaosislog_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoManutUltm" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaomanutultm}" onmousedown="fExecx('ixvagaomanutultmpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutUltmBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoManutUltm40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaomanutultm_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoDisp" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaodisp}" onmousedown="fExecx('ixvagaodisppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDispBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoDisp40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaodisp_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeIXVagaoProd" rendered="#{cadZMenuAssetInterfacesBean.canac_ixvagaoprod}" onmousedown="fExecx('ixvagaoprodpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoProdBean.doSelecionarFromMenu}">
<h:graphicImage  url="../imagens/IXVagaoProd40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.ixvagaoprod_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetInterfaces_MenuImpex_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<h:commandLink id="aExeImpex" rendered="#{cadZMenuAssetInterfacesBean.canac_impex}" onmousedown="fExecx('impexpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadImpexBean.doSelecionar}">
<h:graphicImage  url="../imagens/Impex40.png" styleClass="btp" />
<h:outputText styleClass="mnt" value="#{iimsg.impex_TT_ta}"/>
</h:commandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
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
<td width="15" background="../imagens/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/md_curva_botdir.gif" width="15" height="13"> </td>
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
<h:commandLink id="xsel_vali" action="#{cadZMenuAssetInterfacesBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAssetInterfacesBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixabastecimento" action="#{cadIXAbastecimentoBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixlocodesemp" action="#{cadIXLocoDesempBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixlocomanut" action="#{cadIXLocoManutBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaodesemp" action="#{cadIXVagaoDesempBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaomanut" action="#{cadIXVagaoManutBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixtremformado" action="#{cadIXTremFormadoBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixtremdesemp" action="#{cadIXTremDesempBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaosislog" action="#{cadIXVagaoSislogBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaomanutultm" action="#{cadIXVagaoManutUltmBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaodisp" action="#{cadIXVagaoDispBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaoprod" action="#{cadIXVagaoProdBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_impex" action="#{cadImpexBean.doSelecionar}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuassetinterfaces" action="#{cadZMenuAssetInterfacesBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuassetinterfaces" action="#{cadZMenuAssetInterfacesBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
