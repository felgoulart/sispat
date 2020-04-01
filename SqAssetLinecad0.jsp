<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadSqAssetLineBean");%>
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
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:id_atdm').readOnly = true;
el('cadForm:id_atdm').className = 'tbxr';
el('cadForm:id_rspt').readOnly = true;
el('cadForm:id_rspt').className = 'tbxr';
fcf('cadForm:creation_date')
} else {
fcf('cadForm:id_atdm')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadSqAssetLineBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='sqassetlinecad';cadbeanx='cadSqAssetLineBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadSqAssetLineBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadSqAssetLineBean.assist}" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'sqassetlinepsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadSqAssetLineBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadSqAssetLineBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'sqassetlinecad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadSqAssetLineBean.doReturnMenu}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadSqAssetLineBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'sqassetlinecad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadSqAssetLineBean.doUpdate}">
<f:param name="cadbeanx" value="cadSqAssetLineBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadSqAssetLineBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadSqAssetLineBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadSqAssetLineBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadSqAssetLineBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadSqAssetLineBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'sqassetlinecad'+'&ufmv='+stx">
<f:param name="tipo" value="sqassetlinecad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','SqAssetLine');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSqAssetLineRfm" tabindex="-1" immediate="true" rendered="#{cadSqAssetLineBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'SqAssetLineRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadSqAssetLineBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadSqAssetLineBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadSqAssetLineBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadSqAssetLineBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadSqAssetLineBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadSqAssetLineBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadSqAssetLineBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadSqAssetLineBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadSqAssetLineBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadSqAssetLineBean.canUpdate}" action="#{cadSqAssetLineBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.SqAssetLine_sqaln_cd_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_id_atdm" for="id_atdm"  value="#{iimsg.SqAssetLine_id_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk xxx --%>
<td  width="400" > <h:inputText id="id_atdm" tabindex="1"  value="#{cadSqAssetLineBean.id_atdm}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','id_atdm','0',valNum(this.value));"/>
<ps:psGraphicImage id="id_atdm_vc" flagType="val" flag="#{cadSqAssetLineBean.id_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_id_rspt" for="id_rspt"  value="#{iimsg.SqAssetLine_id_rspt_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk xxx --%>
<td  width="400" > <h:inputText id="id_rspt" tabindex="2"  value="#{cadSqAssetLineBean.id_rspt}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','id_rspt','0',valNum(this.value));"/>
<ps:psGraphicImage id="id_rspt_vc" flagType="val" flag="#{cadSqAssetLineBean.id_rspt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_creation_date" for="creation_date"  value="#{iimsg.SqAssetLine_creation_date_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="400" > <h:inputText id="creation_date" tabindex="3"  value="#{cadSqAssetLineBean.creation_date_str}" size="10" maxlength="8"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="creation_date_vc" flagType="val" flag="#{cadSqAssetLineBean.creation_date_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_id_form" for="id_form"  value="#{iimsg.SqAssetLine_id_form_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="id_form" tabindex="4"  value="#{cadSqAssetLineBean.id_form}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','id_form','0',valNum(this.value));"/>
<ps:psGraphicImage id="id_form_vc" flagType="val" flag="#{cadSqAssetLineBean.id_form_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_campo_form" for="campo_form"  value="#{iimsg.SqAssetLine_campo_form_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="campo_form" tabindex="5"  value="#{cadSqAssetLineBean.campo_form}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="bv('','campo_form','0',this.value);"/>
<ps:psGraphicImage id="campo_form_vc" flagType="val" flag="#{cadSqAssetLineBean.campo_form_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="vl_rspt" value="#{cadSqAssetLineBean.vl_rspt}"/>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_foto_flag" for="foto_flag"  value="#{iimsg.SqAssetLine_foto_flag_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="foto_flag_bol" value="#{cadSqAssetLineBean.foto_flag}"/>
<h:selectBooleanCheckbox id="foto_flag" tabindex="6"  value="#{cadSqAssetLineBean.foto_flag_bol}" onclick="chkBoolean(this, 'cadForm:foto_flag_bol');"/>
<ps:psGraphicImage id="foto_flag_vc" flagType="val" flag="#{cadSqAssetLineBean.foto_flag_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
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
<h:commandLink id="xsel_vali" action="#{cadSqAssetLineBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadSqAssetLineBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_sqassetline" action="#{cadSqAssetLineBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_sqassetline" action="#{cadSqAssetLineBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
