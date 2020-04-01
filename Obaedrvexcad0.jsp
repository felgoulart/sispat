<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObaedrvexBean");%>
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
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:obaed_id').readOnly = true;
el('cadForm:obaed_id').className = 'tbxr';
fcf('cadForm:obaed_tp')
} else {
el('cadForm:obaed_id').readOnly = true;
el('cadForm:obaed_id').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadObaedrvexBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='obaedrvecad';cadbeanx='cadObaedrvexBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadObaedrvexBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obaedrvexpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadObaedrvexBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obaedrvexcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObaedrvexBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadObaedrvexBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obaedrvecad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadObaedrvexBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadObaedrvexBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadObaedrvexBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadObaedrvexBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadObaedrvexBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadObaedrvexBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obaedrvecad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obaed');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObaedrveRfm" tabindex="-1" immediate="true" rendered="#{cadObaedrveBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ObaedrveRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadObaedrvexBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadObaedrvexBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadObaedrvexBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadObaedrvexBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadObaedrvexBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadObaedrvexBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadObaedrvexBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadObaedrvexBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadObaedrvexBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadObaedrvexBean.canUpdate}" action="#{cadObaedrvexBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obaed_id" for="obaed_id"  value="#{iimsg.Obaedrve_obaed_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obaed_id" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadObaedrvexBean.obaed_id}"  styleClass="tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<h:inputHidden id="obaed_sq" value="#{cadObaedrvexBean.obaed_sq}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obaed_tp" for="obaed_tp"  value="#{iimsg.Obaedrve_obaed_tp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obaed_tp" onclick="clf(this);" value="#{cadObaedrvexBean.obaed_tp}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obaed_tp','0','TPAED',this.value);;" size="7" maxlength="5" tabindex="1" />
<h:commandButton id="obaed_tp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPAED', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obaed_tp_vc" flagType="val" flag="#{cadObaedrvexBean.obaed_tp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obaed_tp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObaedrvexBean.obaed_tp_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obaed_vl" for="obaed_vl"  value="#{iimsg.Obaedrve_obaed_vl_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obaed_vl" onclick="clf(this);" value="#{cadObaedrvexBean.obaed_vl}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obaed_vl','0','ANRVE',this.value);;" size="7" maxlength="5" tabindex="2" />
<h:commandButton id="obaed_vl_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ANRVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obaed_vl_vc" flagType="val" flag="#{cadObaedrvexBean.obaed_vl_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obaed_vl_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObaedrvexBean.obaed_vl_desc}" styleClass="txlr pr5 tb90r"/>
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
<iframe id="asset" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadObaedrvexBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObaedrvexBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvhwag" action="#{cadAssetvhwagBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetvhwag" action="#{cadAssetvhwagBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvhwag" action="#{cadAssetvhwagBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvheng" action="#{cadAssetvhengBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetvheng" action="#{cadAssetvhengBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvheng" action="#{cadAssetvhengBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvhaux" action="#{cadAssetvhauxBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetvhaux" action="#{cadAssetvhauxBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvhaux" action="#{cadAssetvhauxBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetbldng" action="#{cadAssetbldngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetbldng" action="#{cadAssetbldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetbldng" action="#{cadAssetbldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetyrdld" action="#{cadAssetyrdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetyrdld" action="#{cadAssetyrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetyrdld" action="#{cadAssetyrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetlbdld" action="#{cadAssetlbdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetlbdld" action="#{cadAssetlbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetlbdld" action="#{cadAssetlbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetmailn" action="#{cadAssetmailnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetmailn" action="#{cadAssetmailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetmailn" action="#{cadAssetmailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetextln" action="#{cadAssetextlnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetextln" action="#{cadAssetextlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetextln" action="#{cadAssetextlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetyrdsd" action="#{cadAssetyrdsdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetyrdsd" action="#{cadAssetyrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetyrdsd" action="#{cadAssetyrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsidng" action="#{cadAssetsidngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetsidng" action="#{cadAssetsidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsidng" action="#{cadAssetsidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetlvlcr" action="#{cadAssetlvlcrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetlvlcr" action="#{cadAssetlvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetlvlcr" action="#{cadAssetlvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetovrps" action="#{cadAssetovrpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetovrps" action="#{cadAssetovrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetovrps" action="#{cadAssetovrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetundps" action="#{cadAssetundpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetundps" action="#{cadAssetundpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetundps" action="#{cadAssetundpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetbrdge" action="#{cadAssetbrdgeBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetbrdge" action="#{cadAssetbrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetbrdge" action="#{cadAssetbrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetviadt" action="#{cadAssetviadtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetviadt" action="#{cadAssetviadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetviadt" action="#{cadAssetviadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetculvt" action="#{cadAssetculvtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assettunnl" action="#{cadAssettunnlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assettunnl" action="#{cadAssettunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assettunnl" action="#{cadAssettunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsuper" action="#{cadAssetsuperBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetsuper" action="#{cadAssetsuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsuper" action="#{cadAssetsuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsupersv" action="#{cadAssetsupersvBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetsupersv" action="#{cadAssetsupersvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsupersv" action="#{cadAssetsupersvBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_obaedrve" action="#{cadObaedrvexBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obaedrve" action="#{cadObaedrvexBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
