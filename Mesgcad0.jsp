<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadMesgBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardHelp.css" type="text/css">
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
el('cadForm:mesg_cd').readOnly = true;
el('cadForm:mesg_cd').className = 'tbxr';
el('cadForm:mesg_lg').readOnly = true;
el('cadForm:mesg_lg').className = 'tbxr';
fcf('cadForm:mesg_ds')
} else {
fcf('cadForm:mesg_cd')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadMesgBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='mesgcad';cadbeanx='cadMesgBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadMesgBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeHelp/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'mesgpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadMesgBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'mesgcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadMesgBean.doReturnMenu}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadMesgBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'mesgcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadMesgBean.doUpdate}">
<f:param name="cadbeanx" value="cadMesgBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadMesgBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadMesgBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadMesgBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadMesgBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadMesgBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'mesgcad'+'&ufmv='+stx">
<f:param name="tipo" value="mesgcad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Mesg');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpMesgRfm" tabindex="-1" immediate="true" rendered="#{cadMesgBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'MesgRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadMesgBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadMesgBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadMesgBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadMesgBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadMesgBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadMesgBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadMesgBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadMesgBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/thmeHelp/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeHelp/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeHelp/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeHelp/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeHelp/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeHelp/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeHelp/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadMesgBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadMesgBean.canUpdate}" action="#{cadMesgBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_mesg_cd" for="mesg_cd"  value="#{iimsg.Mesg_mesg_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="400" > <h:inputText id="mesg_cd" tabindex="1"  onclick="clf(this);" value="#{cadMesgBean.mesg_cd}"  styleClass="tbx" size="7" maxlength="5" onchange="bv('','mesg_cd','0',this.value);"/>
<ps:psGraphicImage id="mesg_cd_vc" flagType="val" flag="#{cadMesgBean.mesg_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_mesg_lg" for="mesg_lg"  value="#{iimsg.Mesg_mesg_lg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="mesg_lg" onclick="clf(this);" value="#{cadMesgBean.mesg_lg}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','mesg_lg','0','GNLNG',this.value);;" size="7" maxlength="5" tabindex="2" />
<h:commandButton id="mesg_lg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GNLNG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="mesg_lg_vc" flagType="val" flag="#{cadMesgBean.mesg_lg_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="mesg_lg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadMesgBean.mesg_lg_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_mesg_tp_cfmsg" for="mesg_tp_cfmsg"  value="#{iimsg.Mesg_mesg_tp_cfmsg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="mesg_tp_cfmsg" onclick="clf(this);" value="#{cadMesgBean.mesg_tp_cfmsg}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','mesg_tp_cfmsg','0','MSGTP',this.value);;" size="7" maxlength="5" tabindex="3" />
<h:commandButton id="mesg_tp_cfmsg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'MSGTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="mesg_tp_cfmsg_vc" flagType="val" flag="#{cadMesgBean.mesg_tp_cfmsg_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="mesg_tp_cfmsg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadMesgBean.mesg_tp_cfmsg_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_mesg_ds" for="mesg_ds"  value="#{iimsg.Mesg_mesg_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="mesg_ds" tabindex="4"  value="#{cadMesgBean.mesg_ds}" cols="80" rows="4" styleClass="mesg_ds_" onchange="bv('','mesg_ds','0',this.value);"/>
<ps:psGraphicImage id="mesg_ds_vc" flagType="val" flag="#{cadMesgBean.mesg_ds_vc}" styleClass="btp"/>
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
<td width="15" background="../imagens/thmeHelp/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeHelp/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeHelp/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeHelp/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fMesgsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fMesgsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadMesgBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadMesgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_mesg" action="#{cadMesgBean.doSelecionarNull}" immediate="true"/>
<h:commandLink id="xrec_mesg" action="#{cadMesgBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_mesg" action="#{cadMesgBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_mesg" action="#{cadMesgBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_mesg" action="#{cadMesgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_mesg" action="#{cadMesgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_mesg" action="#{cadMesgBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
