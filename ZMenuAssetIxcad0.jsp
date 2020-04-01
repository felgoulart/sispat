<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAssetIxBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
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
fcf('cadForm:_AssetSuper');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleMenu(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAssetIxBean.role}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuassetixcad';cadbeanx='cadZMenuAssetIxBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadZMenuAssetIxBean.role}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeMenu/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeMenu/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeMenu/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aLogout" styleClass="btp"  ativo="../imagens/btLogout.gif" onmousedown="msgwr()" title="#{iimsg.pr_logoff_tt}" action="#{loginBean.doLogout}">
</ps:psCommandLink>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadZMenuAssetIxBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'zmenuassetixcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadZMenuAssetIxBean.doObterBack}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadZMenuAssetIxBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'zmenuassetixcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadZMenuAssetIxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp" rendered="#{cadZMenuAssetIxBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadZMenuAssetIxBean.doObternullPrev}"/>
<h:commandButton id="aNext" styleClass="btp" rendered="#{cadZMenuAssetIxBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadZMenuAssetIxBean.doObternullNext}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','ZMenuAssetIx');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@MenuRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadZMenuAssetIxBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAssetIxBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAssetIxBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAssetIxBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAssetIxBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAssetIxBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAssetIxBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAssetIxBean.xmesg_st}" />
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
<td  align="center"  >
<h:inputText id="mesg_var" value="#{cadZMenuAssetIxBean.mesg_var}"  styleClass="txrr pr5 tb650r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> menu --%>
</tr> <%-- <tr close> menu --%>
<tr> <td valign="top" >
<table  >  <%-- <open Main Container Table>--%>
<tr>  <%-- <Start a Container Line--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_MenuAssetLandBuildingx_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetsuper" rendered="#{cadZMenuAssetIxBean.canac_assetsuper}" value="#{iimsg.assetsuper_TT}" onmousedown="fExecx('assetsuperpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetSuperBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetgeo" rendered="#{cadZMenuAssetIxBean.canac_assetgeo}" value="#{iimsg.assetgeo_TT}" onmousedown="fExecx('assetgeopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetGeoBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobdocx" rendered="#{cadZMenuAssetIxBean.canac_obdocx}" value="#{iimsg.obdocx_TT}" onmousedown="fExecx('obdocxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObdocxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobimgx" rendered="#{cadZMenuAssetIxBean.canac_obimgx}" value="#{iimsg.obimgx_TT}" onmousedown="fExecx('obimgxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObimgxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExempgeo" rendered="#{cadZMenuAssetIxBean.canac_mpgeo}" value="#{iimsg.mpgeo_TT}" onmousedown="fExecx('mpgeopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMpgeoBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExempgeoedit" rendered="#{cadZMenuAssetIxBean.canac_mpgeoedit}" value="#{iimsg.mpgeoedit_TT}" onmousedown="fExecx('mpgeoeditpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMpgeoeditBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupSystemInterface_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixabastecimento" rendered="#{cadZMenuAssetIxBean.canac_ixabastecimento}" value="#{iimsg.ixabastecimento_TT}" onmousedown="fExecx('ixabastecimentopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAbastecimentoBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixlocodesemp" rendered="#{cadZMenuAssetIxBean.canac_ixlocodesemp}" value="#{iimsg.ixlocodesemp_TT}" onmousedown="fExecx('ixlocodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoDesempBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixlocomanut" rendered="#{cadZMenuAssetIxBean.canac_ixlocomanut}" value="#{iimsg.ixlocomanut_TT}" onmousedown="fExecx('ixlocomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoManutBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaodesemp" rendered="#{cadZMenuAssetIxBean.canac_ixvagaodesemp}" value="#{iimsg.ixvagaodesemp_TT}" onmousedown="fExecx('ixvagaodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDesempBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaomanut" rendered="#{cadZMenuAssetIxBean.canac_ixvagaomanut}" value="#{iimsg.ixvagaomanut_TT}" onmousedown="fExecx('ixvagaomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaomanutultm" rendered="#{cadZMenuAssetIxBean.canac_ixvagaomanutultm}" value="#{iimsg.ixvagaomanutultm_TT}" onmousedown="fExecx('ixvagaomanutultmpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutUltmBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaosislog" rendered="#{cadZMenuAssetIxBean.canac_ixvagaosislog}" value="#{iimsg.ixvagaosislog_TT}" onmousedown="fExecx('ixvagaosislogpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoSislogBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaodisp" rendered="#{cadZMenuAssetIxBean.canac_ixvagaodisp}" value="#{iimsg.ixvagaodisp_TT}" onmousedown="fExecx('ixvagaodisppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDispBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaoprod" rendered="#{cadZMenuAssetIxBean.canac_ixvagaoprod}" value="#{iimsg.ixvagaoprod_TT}" onmousedown="fExecx('ixvagaoprodpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoProdBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixtremformado" rendered="#{cadZMenuAssetIxBean.canac_ixtremformado}" value="#{iimsg.ixtremformado_TT}" onmousedown="fExecx('ixtremformadopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremFormadoBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixtremdesemp" rendered="#{cadZMenuAssetIxBean.canac_ixtremdesemp}" value="#{iimsg.ixtremdesemp_TT}" onmousedown="fExecx('ixtremdesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremDesempBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="300"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_MenuTechSurvey_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvty" rendered="#{cadZMenuAssetIxBean.canac_invty}" value="#{iimsg.invty_TT}" onmousedown="fExecx('invtypsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtyed" rendered="#{cadZMenuAssetIxBean.canac_invtyed}" value="#{iimsg.invtyed_TT}" onmousedown="fExecx('invtyedpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyEDBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtyvg" rendered="#{cadZMenuAssetIxBean.canac_invtyvg}" value="#{iimsg.invtyvg_TT}" onmousedown="fExecx('invtyvgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyVGBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtylc" rendered="#{cadZMenuAssetIxBean.canac_invtylc}" value="#{iimsg.invtylc_TT}" onmousedown="fExecx('invtylcpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyLCBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtylp" rendered="#{cadZMenuAssetIxBean.canac_invtylp}" value="#{iimsg.invtylp_TT}" onmousedown="fExecx('invtylppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyLPBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtylr" rendered="#{cadZMenuAssetIxBean.canac_invtylr}" value="#{iimsg.invtylr_TT}" onmousedown="fExecx('invtylrpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyLRBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtydc" rendered="#{cadZMenuAssetIxBean.canac_invtydc}" value="#{iimsg.invtydc_TT}" onmousedown="fExecx('invtydcpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyDCBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtydp" rendered="#{cadZMenuAssetIxBean.canac_invtydp}" value="#{iimsg.invtydp_TT}" onmousedown="fExecx('invtydppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyDPBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtytp" rendered="#{cadZMenuAssetIxBean.canac_invtytp}" value="#{iimsg.invtytp_TT}" onmousedown="fExecx('invtytppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyTPBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtytl" rendered="#{cadZMenuAssetIxBean.canac_invtytl}" value="#{iimsg.invtytl_TT}" onmousedown="fExecx('invtytlpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyTLBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtypn" rendered="#{cadZMenuAssetIxBean.canac_invtypn}" value="#{iimsg.invtypn_TT}" onmousedown="fExecx('invtypnpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyPNBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtyps" rendered="#{cadZMenuAssetIxBean.canac_invtyps}" value="#{iimsg.invtyps_TT}" onmousedown="fExecx('invtypspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyPSBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtypi" rendered="#{cadZMenuAssetIxBean.canac_invtypi}" value="#{iimsg.invtypi_TT}" onmousedown="fExecx('invtypipsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyPIBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtypt" rendered="#{cadZMenuAssetIxBean.canac_invtypt}" value="#{iimsg.invtypt_TT}" onmousedown="fExecx('invtyptpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyPTBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtytu" rendered="#{cadZMenuAssetIxBean.canac_invtytu}" value="#{iimsg.invtytu_TT}" onmousedown="fExecx('invtytupsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyTUBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtyvd" rendered="#{cadZMenuAssetIxBean.canac_invtyvd}" value="#{iimsg.invtyvd_TT}" onmousedown="fExecx('invtyvdpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyVDBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeinvtybu" rendered="#{cadZMenuAssetIxBean.canac_invtybu}" value="#{iimsg.invtybu_TT}" onmousedown="fExecx('invtybupsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadInvtyBUBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_MenuTechSurvey3_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupSolic_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExesolin" rendered="#{cadZMenuAssetIxBean.canac_solin}" value="#{iimsg.solin_TT}" onmousedown="fExecx('solinpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolinBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExesolex" rendered="#{cadZMenuAssetIxBean.canac_solex}" value="#{iimsg.solex_TT}" onmousedown="fExecx('solexpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolexBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupPjown_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjausppaobtv" rendered="#{cadZMenuAssetIxBean.canac_pjausppaobtv}" value="#{iimsg.pjausppaobtv_TT_ta}" onmousedown="fExecx('pjausppaobtvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPpaobtvBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupPjass_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaaittv" rendered="#{cadZMenuAssetIxBean.canac_pjauspaaittv}" value="#{iimsg.pjauspaaittv_TT_ta}" onmousedown="fExecx('pjauspaaittvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaaittvBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaaitps" rendered="#{cadZMenuAssetIxBean.canac_pjauspaaitps}" value="#{iimsg.pjauspaaitps_TT_ta}" onmousedown="fExecx('pjauspaaitpspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaaitpsBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspapus" rendered="#{cadZMenuAssetIxBean.canac_pjauspapus}" value="#{iimsg.pjauspapus_TT_ta}" onmousedown="fExecx('pjauspapuspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPapusBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaepb" rendered="#{cadZMenuAssetIxBean.canac_pjauspaepb}" value="#{iimsg.pjauspaepb_TT_ta}" onmousedown="fExecx('pjauspaepbpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaepbBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspapsv" rendered="#{cadZMenuAssetIxBean.canac_pjauspapsv}" value="#{iimsg.pjauspapsv_TT_ta}" onmousedown="fExecx('pjauspapsvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPapsvBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaetm" rendered="#{cadZMenuAssetIxBean.canac_pjauspaetm}" value="#{iimsg.pjauspaetm_TT_ta}" onmousedown="fExecx('pjauspaetmpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaetmBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupPjany_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobdocpjx" rendered="#{cadZMenuAssetIxBean.canac_obdocpjx}" value="#{iimsg.obdocpjx_TT}" onmousedown="fExecx('obdocpjxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObdocpjxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobimgpjx" rendered="#{cadZMenuAssetIxBean.canac_obimgpjx}" value="#{iimsg.obimgpjx_TT}" onmousedown="fExecx('obimgpjxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObimgpjxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_MenuSecurity_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeuserx" rendered="#{cadZMenuAssetIxBean.canac_userx}" value="#{iimsg.userx_TT}" onmousedown="fExecx('userxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadUserxBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExerole" rendered="#{cadZMenuAssetIxBean.canac_role}" value="#{iimsg.role_TT}" onmousedown="fExecx('rolepsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadRoleBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupHelp_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExehelpmaint" rendered="#{cadZMenuAssetIxBean.canac_helpmaint}" value="#{iimsg.helpmaint_TT}" onmousedown="fExecx('helpmaintpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadHelpmaintBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExetrans" rendered="#{cadZMenuAssetIxBean.canac_trans}" value="#{iimsg.trans_TT}" onmousedown="fExecx('transpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadTransBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupCodf_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExetranscodf" rendered="#{cadZMenuAssetIxBean.canac_transcodf}" value="#{iimsg.transcodf_TT}" onmousedown="fExecx('transcodfpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadTranscodfBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupMessage_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExemssg" rendered="#{cadZMenuAssetIxBean.canac_mssg}" value="#{iimsg.mssg_TT}" onmousedown="fExecx('mssgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMssgBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExemesg" rendered="#{cadZMenuAssetIxBean.canac_mesg}" value="#{iimsg.mesg_TT}" onmousedown="fExecx('mesgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMesgBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetIx_GroupConv_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeconvs" rendered="#{cadZMenuAssetIxBean.canac_convs}" value="#{iimsg.convs_TT}" onmousedown="fExecx('convspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadConvsBean.doSelecionarNullOnly}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeparam" rendered="#{cadZMenuAssetIxBean.canac_param}" value="#{iimsg.param_TT}" onmousedown="fExecx('parampsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadParamBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExegnlngmnt" rendered="#{cadZMenuAssetIxBean.canac_gnlngmnt}" value="#{iimsg.gnlngmnt_TT}" onmousedown="fExecx('gnlngmntpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadGnlngmntBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExelang" rendered="#{cadZMenuAssetIxBean.canac_lang}" value="#{iimsg.lang_TT}" onmousedown="fExecx('langcad', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadLangBean.doObternull}">
</ps:psCommandLink>
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
<h:commandLink id="xsel_vali" action="#{cadZMenuAssetIxBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAssetIxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetsuper" action="#{cadAssetSuperBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetgeo" action="#{cadAssetGeoBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocx" action="#{cadObdocxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obimgx" action="#{cadObimgxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mpgeoedit" action="#{cadMpgeoeditBean.doObternull}" immediate="true"/>
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
<h:commandLink id="xsel_ixvagaomanutultm" action="#{cadIXVagaoManutUltmBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaosislog" action="#{cadIXVagaoSislogBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaodisp" action="#{cadIXVagaoDispBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixvagaoprod" action="#{cadIXVagaoProdBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixtremformado" action="#{cadIXTremFormadoBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixtremdesemp" action="#{cadIXTremDesempBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtyed" action="#{cadInvtyEDBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtyvg" action="#{cadInvtyVGBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtylc" action="#{cadInvtyLCBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtylp" action="#{cadInvtyLPBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtylr" action="#{cadInvtyLRBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtydc" action="#{cadInvtyDCBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtydp" action="#{cadInvtyDPBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtytp" action="#{cadInvtyTPBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtytl" action="#{cadInvtyTLBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtypn" action="#{cadInvtyPNBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtyps" action="#{cadInvtyPSBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtypi" action="#{cadInvtyPIBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtypt" action="#{cadInvtyPTBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtytu" action="#{cadInvtyTUBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtyvd" action="#{cadInvtyVDBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_invtybu" action="#{cadInvtyBUBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_solex" action="#{cadSolexBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjausppaobtv" action="#{cadPjausPpaobtvBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspaaittv" action="#{cadPjausPaaittvBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspaaitps" action="#{cadPjausPaaitpsBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspapus" action="#{cadPjausPapusBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspaepb" action="#{cadPjausPaepbBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspapsv" action="#{cadPjausPapsvBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_pjauspaetm" action="#{cadPjausPaetmBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpjx" action="#{cadObdocpjxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obimgpjx" action="#{cadObimgpjxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_userx" action="#{cadUserxBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_helpmaint" action="#{cadHelpmaintBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_transcodf" action="#{cadTranscodfBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mssg" action="#{cadMssgBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mesg" action="#{cadMesgBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_convs" action="#{cadConvsBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_param" action="#{cadParamBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_gnlngmnt" action="#{cadGnlngmntBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuassetix" action="#{cadZMenuAssetIxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuassetix" action="#{cadZMenuAssetIxBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
