<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadEmdstBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardEmail.css" type="text/css">
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
helpcd=':ssr';
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:emdst_cd').readOnly = true;
el('cadForm:emdst_cd').className = 'tbxr';
fcf('cadForm:emdst_ds')
} else {
fcf('cadForm:emdst_cd')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadEmdstBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='emdstcad';cadbeanx='cadEmdstBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<%@include file="projHeader1.jsp"%>
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
<h:outputText value="#{cadEmdstBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeEmail/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aBackToSearch" styleClass="btp" ativo="../imagens/btVoltar.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emdstpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.returnToSearch}" action="#{cadEmdstBean.doSelecionarBack}">
<f:param name="cadbeanx" value="cadEmdstBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadEmdstBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emdstcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadEmdstBean.doUpdate}">
<f:param name="cadbeanx" value="cadEmdstBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadEmdstBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadEmdstBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadEmdstBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadEmdstBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadEmdstBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emdstcad'+'&ufmv='+stx">
<f:param name="tipo" value="emdstcad"/>
</ps:psCommandLink>
<ps:psCommandLink id="aHelp" styleClass="btp"  ativo="../imagens/btHelp.gif" title="#{iimsg.botao_help}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='Emdst';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpgen" styleClass="btp"  ativo="../imagens/btHelpGen.gif" title="#{iimsg.botao_help_gen}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='@CrudRfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpEmdstRfm" styleClass="btp" enabled="#{cadEmdstBean.hasHelpSpcRfm}"  ativo="../imagens/btHelpSpc.gif" title="#{iimsg.botao_help_spc}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='EmdstRfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" title="#{iimsg.button_help_repository}" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<ps:psCommandLink id="aClose" styleClass="btp"  ativo="../imagens/btClose.gif" onmousedown="msgwinclose()" title="#{iimsg.botao_close}">
</ps:psCommandLink>
<h:inputHidden id="tabsvf" value="#{cadEmdstBean.tabsvf}" />
<h:inputHidden id="tabsvf_in" value="#{cadEmdstBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadEmdstBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadEmdstBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadEmdstBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadEmdstBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadEmdstBean.xmesg_st}" />
<h:outputText id="label_key_enter" style="display:none" value="#{iimsg.label_key_enter}" />
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="label_and" style="display:none" value="#{iimsg.label_and}" />
<h:outputText id="label_or" style="display:none" value="#{iimsg.label_or}" />
<h:outputText id="msg_actionValidOnlyForButtons" style="display:none" value="#{iimsg.msg_actionValidOnlyForButtons}" />
<h:outputText id="msg_actionNotValidForButtons" style="display:none" value="#{iimsg.msg_actionNotValidForButtons}" />
<h:outputText id="msg_invalidOperation" style="display:none" value="#{iimsg.msg_invalidOperation}" />
<h:outputText id="msg_invalidValue" style="display:none" value="#{iimsg.msg_invalidValue}" />
<h:outputText id="msg_valueOf" style="display:none" value="#{iimsg.msg_valueOf}" />
<h:outputText id="msg_mustBe" style="display:none" value="#{iimsg.msg_mustBe}" />
<h:outputText id="msg_cannotBe" style="display:none" value="#{iimsg.msg_cannotBe}" />
<h:outputText id="msg_unlock" style="display:none" value="#{iimsg.msg_unlock}" />
<h:outputText id="multiple_porte" style="display:none" value="#{iimsg.multiple_porte}" />
<h:outputText id="no_porte" style="display:none" value="#{iimsg.no_porte}" />
<h:outputText id="sys_confirm_excluir" style="display:none" value="#{iimsg.sys_confirm_excluir}" />
</td>
<td width="15" height="13" background="../imagens/thmeEmail/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeEmail/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeEmail/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadEmdstBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadEmdstBean.canUpdate}" action="#{cadEmdstBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_emdst_cd" for="emdst_cd"  value="#{iimsg.Emdst_emdst_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="400" > <h:inputText id="emdst_cd" tabindex="1"  value="#{cadEmdstBean.emdst_cd}"  styleClass="tbx" size="22" maxlength="20" onchange="bv('','emdst_cd','0',this.value);"/>
<ps:psGraphicImage id="emdst_cd_vc" flagType="val" flag="#{cadEmdstBean.emdst_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_emdst_ds" for="emdst_ds"  value="#{iimsg.Emdst_emdst_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="emdst_ds" tabindex="2"  value="#{cadEmdstBean.emdst_ds}" cols="80" rows="6" styleClass="" onchange="bv('','emdst_ds','0',this.value);"/>
<ps:psGraphicImage id="emdst_ds_vc" flagType="val" flag="#{cadEmdstBean.emdst_ds_vc}" styleClass="btp"/>
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
<td width="15" background="../imagens/thmeEmail/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeEmail/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fwbrlTrainDelayCalc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="wbrlTrainOprDelay" width="0" height="0" frameborder="0"> </iframe>
<iframe id="emdst" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmdstsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmdstsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadEmdstBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
