<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadImportatBean");%>
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
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../Importatfunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
fcf('cadForm:id_atdm_var');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadImportatBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='importatcad';cadbeanx='cadImportatBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<%@include file="projHeader2.jsp"%>
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
<h:outputText value="#{cadImportatBean.trans_tt}"/>
<h:outputText id="button" value=""/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'importatcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadImportatBean.doReturnMenu}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadImportatBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadImportatBean.doCancelar}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Importat');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@PrssRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpImportatRfm" tabindex="-1" immediate="true" rendered="#{cadImportatBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ImportatRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadImportatBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadImportatBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadImportatBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadImportatBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadImportatBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadImportatBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadImportatBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadImportatBean.xmesg_st}" />
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
<table   >  <%-- <mesg frame open> --%>
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadImportatBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadImportatBean.canUpdate}" action="#{cadImportatBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left" nowrap="nowrap"   width="55%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Importat_atdmx_zp_tt_tt}"/>
</td>
<td align="left" nowrap="nowrap"     class=""> <%-- butoon --%>
<%-- prop toolbar buttonExecute --%>
<h:commandButton id="XlsImport_xls" rendered="#{cadImportatBean.canPesquisar}" title="#{iimsg.Importat_XlsImport_xls_tt}" image="../imagens/excellRed.jpg" onmousedown="fExecx('obxlsassetcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsAssetBean.doObternull}"/>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_id_atdm_var" for="id_atdm_var"  value="#{iimsg.Importat_id_atdm_var_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td nowrap="nowrap" colspan ="4" width="5"   >
<h:inputText id="id_atdm_var" tabindex="1"  onclick="clf(this);" value="#{cadImportatBean.id_atdm_var}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','id_atdm_var','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
<%-- prop buttonExecute --%>
<td nowrap="nowrap" width="150" > <h:commandButton id="assyncexe" title="#{iimsg.Importat_assyncexe_tt}" value="#{iimsg.Importat_assyncexe_tt}" styleClass="btnBox50" tabindex="2"   action="#{cadImportatBean.assyncexe}" onmousedown="msgwr();assyncexe(this.id)"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="150" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left" nowrap="nowrap" colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Importat_inpc_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_dh_ini_prox_proc_var" for="dh_ini_prox_proc_var"  value="#{iimsg.Importat_dh_ini_prox_proc_var_tt}"/>  </td> <%-- <top> --%>
<h:outputText id="lbl_dh_ini_prox_proc_var_dt" style="display:none" value="#{iimsg.Importat_dh_ini_prox_proc_var_dt_tt}"/>
<h:outputText id="lbl_dh_ini_prox_proc_var_hr" style="display:none" value="#{iimsg.Importat_dh_ini_prox_proc_var_hr_tt}"/>
<%-- selDate & Time --%>
<td nowrap="nowrap" width="300"   >
<h:inputHidden id="dh_ini_prox_proc_var" value="#{cadImportatBean.dh_ini_prox_proc_var_str}"/>
<h:inputText id="dh_ini_prox_proc_var_dt" tabindex="3"  value="#{cadImportatBean.dh_ini_prox_proc_var_dt}"  styleClass="txl pl5 tbDt" size="21" maxlength="19" onkeydown="formataData('cadForm:dh_ini_prox_proc_var_dt', event);" onkeyup="SaltaCampo('cadForm:dh_ini_prox_proc_var_dt', 'cadForm:dh_ini_prox_proc_var_hr', 8 , event);" onchange="validaDatas2(this);juntaDataHora('cadForm:dh_ini_prox_proc_var', 'cadForm:dh_ini_prox_proc_var_dt', 'cadForm:dh_ini_prox_proc_var_hr');;"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:dh_ini_prox_proc_var_dt', 'dh_ini_prox_proc_var_dtCal');" style="cursor: hand"/>
<div id="dh_ini_prox_proc_var_dtCal" style="position: absolute; z-index: 1;"></div>
<h:inputText id="dh_ini_prox_proc_var_hr" tabindex="3"  value="#{cadImportatBean.dh_ini_prox_proc_var_hr}"  styleClass="txl pl5 tbHr" size="7" maxlength="5" onkeydown="formataHora('cadForm:dh_ini_prox_proc_var_hr', event);" onkeyup="SaltaCampo('cadForm:dh_ini_prox_proc_var_hr', 'cadForm:vl_intervalo_proc_var', 4 , event);" onchange="validaTimes2(this);juntaDataHora('cadForm:dh_ini_prox_proc_var', 'cadForm:dh_ini_prox_proc_var_dt', 'cadForm:dh_ini_prox_proc_var_hr');;"  />
</td> <%-- <close td> ccc --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vl_intervalo_proc_var" for="vl_intervalo_proc_var"  value="#{iimsg.Importat_vl_intervalo_proc_var_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td nowrap="nowrap"  width="300"   >
<h:inputText id="vl_intervalo_proc_var" tabindex="4"  onclick="clf(this);" value="#{cadImportatBean.vl_intervalo_proc_var}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','vl_intervalo_proc_var','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
<%-- prop buttonExecute --%>
<td nowrap="nowrap" width="150" > <h:commandButton id="execute" title="#{iimsg.Importat_execute_tt}" value="#{iimsg.Importat_execute_tt}" styleClass="btnBox50" tabindex="5"   action="#{cadImportatBean.execute}" onmousedown="msgwr();execute(this.id)"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="150" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left" nowrap="nowrap"   width="10%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Importat_inpc_lg_tt_tt}"/>
</td>
<td align="left" nowrap="nowrap"     class=""> <%-- butoon --%>
<%-- prop toolbar buttonExecute --%>
<%-- buttonOfToolbar Last --%>
<h:commandButton id="Implg_xsel"  title="#{iimsg.implg_TT}"   tabindex="-1" immediate="true" onmousedown="pw('implgpsq', tran, this.id, 'yes');" image="../imagens/btChart.gif"/>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
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
<iframe id="ObxlsAsset" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Implg" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadImportatBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadImportatBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_implg" action="#{cadImplgBean.doSelecionar}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsAsset" action="#{cadObxlsAssetBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsAsset" action="#{cadObxlsAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsAsset" action="#{cadObxlsAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_Implg" action="#{cadImplgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_Implg" action="#{cadImplgBean.doNovo}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_importat" action="#{cadImportatBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_importat" action="#{cadImportatBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
