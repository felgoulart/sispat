<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAssetpjBean");%>
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
fcf('cadForm:_AssetVhwag');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAssetpjBean.role}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuassetpjcad';cadbeanx='cadZMenuAssetpjBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadZMenuAssetpjBean.role}"/>
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
<ps:psCommandLink id="aExeuserpw" styleClass="btp" ativo="../imagens/btUserpw.gif" onmousedown="fExec('userpwcad', tran, this.id, 'no', '', 'xrec_userpw');" title="#{iimsg.userpw_TT_ta}" action="#{cadUserpwBean.doObter}">
</ps:psCommandLink>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'zmenuassetpjcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadZMenuAssetpjBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp" rendered="#{cadZMenuAssetpjBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadZMenuAssetpjBean.doObternullPrev}"/>
<h:commandButton id="aNext" styleClass="btp" rendered="#{cadZMenuAssetpjBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadZMenuAssetpjBean.doObternullNext}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','ZMenuAssetpj');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@MenuRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadZMenuAssetpjBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAssetpjBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAssetpjBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAssetpjBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAssetpjBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAssetpjBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAssetpjBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAssetpjBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadZMenuAssetpjBean.mesg_var}"  styleClass="txrr pr5 tb650r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> menu --%>
</tr> <%-- <tr close> menu --%>
<tr> <td valign="top" >
<table  >  <%-- <open Main Container Table>--%>
<tr>  <%-- <Start a Container Line--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuAssetRollingStock_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetvhwag" rendered="#{cadZMenuAssetpjBean.canac_assetvhwag}" value="#{iimsg.assetvhwag_TT}" onmousedown="fExecx('assetvhwagpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhwagBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetvheng" rendered="#{cadZMenuAssetpjBean.canac_assetvheng}" value="#{iimsg.assetvheng_TT}" onmousedown="fExecx('assetvhengpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhengBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="300"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuPermanentWay_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetmailn" rendered="#{cadZMenuAssetpjBean.canac_assetmailn}" value="#{iimsg.assetmailn_TT}" onmousedown="fExecx('assetmailnpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetMailnBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetextln" rendered="#{cadZMenuAssetpjBean.canac_assetextln}" value="#{iimsg.assetextln_TT}" onmousedown="fExecx('assetextlnpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetExtlnBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetyrdsd" rendered="#{cadZMenuAssetpjBean.canac_assetyrdsd}" value="#{iimsg.assetyrdsd_TT}" onmousedown="fExecx('assetyrdsdpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetYrdsdBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetsidng" rendered="#{cadZMenuAssetpjBean.canac_assetsidng}" value="#{iimsg.assetsidng_TT}" onmousedown="fExecx('assetsidngpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetSidngBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupCrossing_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetlvlcr" rendered="#{cadZMenuAssetpjBean.canac_assetlvlcr}" value="#{iimsg.assetlvlcr_TT}" onmousedown="fExecx('assetlvlcrpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetLvlcrBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuAssetWorksOfArt_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetovrps" rendered="#{cadZMenuAssetpjBean.canac_assetovrps}" value="#{iimsg.assetovrps_TT}" onmousedown="fExecx('assetovrpspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetOvrpsBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetundps" rendered="#{cadZMenuAssetpjBean.canac_assetundps}" value="#{iimsg.assetundps_TT}" onmousedown="fExecx('assetundpspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetUndpsBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassettunnl" rendered="#{cadZMenuAssetpjBean.canac_assettunnl}" value="#{iimsg.assettunnl_TT}" onmousedown="fExecx('assettunnlpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetTunnlBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetbrdge" rendered="#{cadZMenuAssetpjBean.canac_assetbrdge}" value="#{iimsg.assetbrdge_TT}" onmousedown="fExecx('assetbrdgepsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetBrdgeBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetviadt" rendered="#{cadZMenuAssetpjBean.canac_assetviadt}" value="#{iimsg.assetviadt_TT}" onmousedown="fExecx('assetviadtpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetViadtBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetculvt" rendered="#{cadZMenuAssetpjBean.canac_assetculvt}" value="#{iimsg.assetculvt_TT}" onmousedown="fExecx('assetculvtpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetCulvtBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuAssetLandBuildings_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetbldng" rendered="#{cadZMenuAssetpjBean.canac_assetbldng}" value="#{iimsg.assetbldng_TT}" onmousedown="fExecx('assetbldngpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetBldngBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetyrdld" rendered="#{cadZMenuAssetpjBean.canac_assetyrdld}" value="#{iimsg.assetyrdld_TT}" onmousedown="fExecx('assetyrdldpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetYrdldBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetlbdld" rendered="#{cadZMenuAssetpjBean.canac_assetlbdld}" value="#{iimsg.assetlbdld_TT}" onmousedown="fExecx('assetlbdldpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetLbdldBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
</tr>  <%-- <Close a Container Line--%>
<tr>  <%-- <Start a Container Line--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuAssetLandBuildingx_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixativofixo" rendered="#{cadZMenuAssetpjBean.canac_ixativofixo}" value="#{iimsg.ixativofixo_TT}" onmousedown="fExecx('ixativofixopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAtivoFixoBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixativofixoporlocal" rendered="#{cadZMenuAssetpjBean.canac_ixativofixoporlocal}" value="#{iimsg.ixativofixoporlocal_TT}" onmousedown="fExecx('ixativofixoporlocalpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAtivoFixoPorLocalBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixativofixoporcatg" rendered="#{cadZMenuAssetpjBean.canac_ixativofixoporcatg}" value="#{iimsg.ixativofixoporcatg_TT}" onmousedown="fExecx('ixativofixoporcatgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAtivoFixoPorCatgBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetsuper" rendered="#{cadZMenuAssetpjBean.canac_assetsuper}" value="#{iimsg.assetsuper_TT}" onmousedown="fExecx('assetsuperpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetSuperBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeassetsupersv" rendered="#{cadZMenuAssetpjBean.canac_assetsupersv}" value="#{iimsg.assetsupersv_TT}" onmousedown="fExecx('assetsupersvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetSupersvBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobdocx" rendered="#{cadZMenuAssetpjBean.canac_obdocx}" value="#{iimsg.obdocx_TT}" onmousedown="fExecx('obdocxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObdocxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobimgx" rendered="#{cadZMenuAssetpjBean.canac_obimgx}" value="#{iimsg.obimgx_TT}" onmousedown="fExecx('obimgxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObimgxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobocpx" rendered="#{cadZMenuAssetpjBean.canac_obocpx}" value="#{iimsg.obocpx_TT}" onmousedown="fExecx('obocpxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObocpxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobocrx" rendered="#{cadZMenuAssetpjBean.canac_obocrx}" value="#{iimsg.obocrx_TT}" onmousedown="fExecx('obocrxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObocrxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobmacx" rendered="#{cadZMenuAssetpjBean.canac_obmacx}" value="#{iimsg.obmacx_TT}" onmousedown="fExecx('obmacxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObmacxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuInterfaces_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixabastecimento" rendered="#{cadZMenuAssetpjBean.canac_ixabastecimento}" value="#{iimsg.ixabastecimento_TT}" onmousedown="fExecx('ixabastecimentopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXAbastecimentoBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixlocodesemp" rendered="#{cadZMenuAssetpjBean.canac_ixlocodesemp}" value="#{iimsg.ixlocodesemp_TT}" onmousedown="fExecx('ixlocodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoDesempBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixlocomanut" rendered="#{cadZMenuAssetpjBean.canac_ixlocomanut}" value="#{iimsg.ixlocomanut_TT}" onmousedown="fExecx('ixlocomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXLocoManutBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaodesemp" rendered="#{cadZMenuAssetpjBean.canac_ixvagaodesemp}" value="#{iimsg.ixvagaodesemp_TT}" onmousedown="fExecx('ixvagaodesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDesempBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaomanut" rendered="#{cadZMenuAssetpjBean.canac_ixvagaomanut}" value="#{iimsg.ixvagaomanut_TT}" onmousedown="fExecx('ixvagaomanutpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixtremformado" rendered="#{cadZMenuAssetpjBean.canac_ixtremformado}" value="#{iimsg.ixtremformado_TT}" onmousedown="fExecx('ixtremformadopsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremFormadoBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixtremdesemp" rendered="#{cadZMenuAssetpjBean.canac_ixtremdesemp}" value="#{iimsg.ixtremdesemp_TT}" onmousedown="fExecx('ixtremdesemppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXTremDesempBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupSyslog_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaosislog" rendered="#{cadZMenuAssetpjBean.canac_ixvagaosislog}" value="#{iimsg.ixvagaosislog_TT}" onmousedown="fExecx('ixvagaosislogpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoSislogBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaomanutultm" rendered="#{cadZMenuAssetpjBean.canac_ixvagaomanutultm}" value="#{iimsg.ixvagaomanutultm_TT}" onmousedown="fExecx('ixvagaomanutultmpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoManutUltmBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaodisp" rendered="#{cadZMenuAssetpjBean.canac_ixvagaodisp}" value="#{iimsg.ixvagaodisp_TT}" onmousedown="fExecx('ixvagaodisppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoDispBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeixvagaoprod" rendered="#{cadZMenuAssetpjBean.canac_ixvagaoprod}" value="#{iimsg.ixvagaoprod_TT}" onmousedown="fExecx('ixvagaoprodpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadIXVagaoProdBean.doSelecionarFromMenu}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
<td  style="border:solid 1px slategray; " valign="top"  >  <%-- <Start a Container Column--%>
<table   width="250"   cellpadding="0" cellspacing="0"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_MenuTechSurvey3_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupPjown_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjausppaobtv" rendered="#{cadZMenuAssetpjBean.canac_pjausppaobtv}" value="#{iimsg.pjausppaobtv_TT_ta}" onmousedown="fExecx('pjausppaobtvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPpaobtvBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupPjass_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaaittv" rendered="#{cadZMenuAssetpjBean.canac_pjauspaaittv}" value="#{iimsg.pjauspaaittv_TT_ta}" onmousedown="fExecx('pjauspaaittvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaaittvBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaaitps" rendered="#{cadZMenuAssetpjBean.canac_pjauspaaitps}" value="#{iimsg.pjauspaaitps_TT_ta}" onmousedown="fExecx('pjauspaaitpspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaaitpsBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspapus" rendered="#{cadZMenuAssetpjBean.canac_pjauspapus}" value="#{iimsg.pjauspapus_TT_ta}" onmousedown="fExecx('pjauspapuspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPapusBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaepb" rendered="#{cadZMenuAssetpjBean.canac_pjauspaepb}" value="#{iimsg.pjauspaepb_TT_ta}" onmousedown="fExecx('pjauspaepbpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaepbBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspapsv" rendered="#{cadZMenuAssetpjBean.canac_pjauspapsv}" value="#{iimsg.pjauspapsv_TT_ta}" onmousedown="fExecx('pjauspapsvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPapsvBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExepjauspaetm" rendered="#{cadZMenuAssetpjBean.canac_pjauspaetm}" value="#{iimsg.pjauspaetm_TT_ta}" onmousedown="fExecx('pjauspaetmpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPjausPaetmBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupSolic_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExesolin" rendered="#{cadZMenuAssetpjBean.canac_solin}" value="#{iimsg.solin_TT}" onmousedown="fExecx('solinpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolinBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExesolex" rendered="#{cadZMenuAssetpjBean.canac_solex}" value="#{iimsg.solex_TT}" onmousedown="fExecx('solexpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolexBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Menu Group Tittle --%>
<h:outputText   styleClass="tts" value="#{iimsg.ZMenuAssetpj_GroupPjany_tt}"/>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobdocpjx" rendered="#{cadZMenuAssetpjBean.canac_obdocpjx}" value="#{iimsg.obdocpjx_TT}" onmousedown="fExecx('obdocpjxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObdocpjxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonLink 4577--%>
<ps:psCommandLink id="aExeobimgpjx" rendered="#{cadZMenuAssetpjBean.canac_obimgpjx}" value="#{iimsg.obimgpjx_TT}" onmousedown="fExecx('obimgpjxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadObimgpjxBean.doSelecionar}">
</ps:psCommandLink>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
</td>  <%-- <Close a Container Column--%>
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
<h:commandLink id="xsel_vali" action="#{cadZMenuAssetpjBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAssetpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhwag" action="#{cadAssetVhwagBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvheng" action="#{cadAssetVhengBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetmailn" action="#{cadAssetMailnBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetextln" action="#{cadAssetExtlnBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetyrdsd" action="#{cadAssetYrdsdBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetsidng" action="#{cadAssetSidngBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetlvlcr" action="#{cadAssetLvlcrBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetovrps" action="#{cadAssetOvrpsBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetundps" action="#{cadAssetUndpsBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assettunnl" action="#{cadAssetTunnlBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetbrdge" action="#{cadAssetBrdgeBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetviadt" action="#{cadAssetViadtBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetculvt" action="#{cadAssetCulvtBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetbldng" action="#{cadAssetBldngBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetyrdld" action="#{cadAssetYrdldBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetlbdld" action="#{cadAssetLbdldBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixativofixo" action="#{cadIXAtivoFixoBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixativofixoporlocal" action="#{cadIXAtivoFixoPorLocalBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_ixativofixoporcatg" action="#{cadIXAtivoFixoPorCatgBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetsuper" action="#{cadAssetSuperBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetsupersv" action="#{cadAssetSupersvBean.doSelecionarNull}" immediate="true"/>
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
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_solex" action="#{cadSolexBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpjx" action="#{cadObdocpjxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obimgpjx" action="#{cadObimgpjxBean.doSelecionar}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuassetpj" action="#{cadZMenuAssetpjBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuassetpj" action="#{cadZMenuAssetpjBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
