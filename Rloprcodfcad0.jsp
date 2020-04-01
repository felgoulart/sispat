<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadRloprcodfBean");%>
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
el('cadForm:rlopr_id_role').readOnly = true;
el('cadForm:rlopr_id_role').className = 'tbxr';
el('cadForm:rlopr_id_opern').readOnly = true;
el('cadForm:rlopr_id_opern').className = 'tbxr';
fcf('cadForm:rlopr_cd_trctg')
} else {
el('cadForm:rlopr_id_role').readOnly = true;
el('cadForm:rlopr_id_role').className = 'tbxr';
fcf('cadForm:rlopr_id_opern')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadRloprcodfBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='rloprcodfcad';cadbeanx='cadRloprcodfBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbckb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<br>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadRloprcodfBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprcodfpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadRloprcodfBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchPar" styleClass="btp" image="../imagens/btReturnxParent.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprcodfpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToParent_tt}" action="#{cadRloprcodfBean.doReturn}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadRloprcodfBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprcodfcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadRloprcodfBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp" rendered="#{cadRloprcodfBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadRloprcodfBean.doObternullPrev}"/>
<h:commandButton id="aNext" styleClass="btp" rendered="#{cadRloprcodfBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadRloprcodfBean.doObternullNext}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadRloprcodfBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprcodfcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadRloprcodfBean.doUpdate1Chld}">
<f:param name="cadbeanx" value="cadRloprcodfBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadRloprcodfBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadRloprcodfBean.doObterParent}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadRloprcodfBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadRloprcodfBean.doExcluirChld}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadRloprcodfBean.doObterRefresh}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprcodfcad'+'&ufmv='+stx">
<f:param name="tipo" value="rloprcodfcad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Rloprcodf');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpRloprcodfRfm" tabindex="-1" immediate="true" rendered="#{cadRloprcodfBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'RloprcodfRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadRloprcodfBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadRloprcodfBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadRloprcodfBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadRloprcodfBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadRloprcodfBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadRloprcodfBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadRloprcodfBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadRloprcodfBean.xmesg_st}" />
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
<h:outputText id="msg_noActiveButtonsInThisBlock" style="display:none" value="#{iimsg.msg_noActiveButtonsInThisBlock}" />
<h:outputText id="msg_selectAnOperationButton" style="display:none" value="#{iimsg.msg_selectAnOperationButton}" />
<h:outputText id="msg_selectBlockSelectionOption" style="display:none" value="#{iimsg.msg_selectBlockSelectionOption}" />
<h:outputText id="msg_dontSelectVehiclesInDiffStatus" style="display:none" value="#{iimsg.msg_dontSelectVehiclesInDiffStatus}" />
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
<h:inputText id="mesg_var" value="#{cadRloprcodfBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadRloprcodfBean.canUpdate}" action="#{cadRloprcodfBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
<h:inputText id="idxm" value="#{cadRloprcodfBean.idxm}"  styleClass="txrr pr5 tb50r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="selection_list_var" value="#{cadRloprcodfBean.selection_list_var}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_rlopr_id_role" for="rlopr_id_role"  value="#{iimsg.Rloprcodf_rlopr_id_role_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="rlopr_id_role" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadRloprcodfBean.rlopr_id_role}"  styleClass="tbxr" onkeydown="keypress=1;" size="30" maxlength="30" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_rlopr_id_opern" for="rlopr_id_opern"  value="#{iimsg.Rloprcodf_rlopr_id_opern_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="rlopr_id_opern" tabindex="2"  onclick="clf(this);" value="#{cadRloprcodfBean.rlopr_id_opern}"  styleClass="tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','0','rlopr_id_opern','Trans','trans_id','trans_nm',this.value);" size="17" maxlength="15" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="rlopr_id_opern_xsel" tabindex="-1" immediate="true" onmousedown="pw('transpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="rlopr_id_opern_vc" flagType="val" flag="#{cadRloprcodfBean.rlopr_id_opern_vc}" styleClass="btp"/>
<%-- ak/fk if not nodesc 2 --%>
<h:commandLink id="rlopr_id_opern_desc" value="#{cadRloprcodfBean.rlopr_id_opern_desc}" styleClass="dsp" onmousedown="pwfk('transcad', tran, this.id, 'no');"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_rlopr_cd_trctg" for="rlopr_cd_trctg"  value="#{iimsg.Rloprcodf_rlopr_cd_trctg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="rlopr_cd_trctg" onclick="clf(this);" value="#{cadRloprcodfBean.rlopr_cd_trctg}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','rlopr_cd_trctg','0','TRCTG',this.value);;" size="7" maxlength="5" tabindex="3" />
<h:commandButton id="rlopr_cd_trctg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCTG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="rlopr_cd_trctg_vc" flagType="val" flag="#{cadRloprcodfBean.rlopr_cd_trctg_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="rlopr_cd_trctg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadRloprcodfBean.rlopr_cd_trctg_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_rlopr_cd_trnam" for="rlopr_cd_trnam"  value="#{iimsg.Rloprcodf_rlopr_cd_trnam_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="30" > <h:inputText id="rlopr_cd_trnam" onfocus="this.blur()" value="#{cadRloprcodfBean.rlopr_cd_trnam}" size="30" maxlength="30"  styleClass="tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_rlopr_cd_accr" for="rlopr_cd_accr"  value="#{iimsg.Rloprcodf_rlopr_cd_accr_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="rlopr_cd_accr" tabindex="5"  onclick="clf(this);" value="#{cadRloprcodfBean.rlopr_cd_accr}"  styleClass="tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','rlopr_cd_accr','Accr','accr_cd','accr_ds',this.value);" size="12" maxlength="10" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="rlopr_cd_accr_xsel" tabindex="-1" immediate="true" onmousedown="pw('accrpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="rlopr_cd_accr_vc" flagType="val" flag="#{cadRloprcodfBean.rlopr_cd_accr_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="rlopr_cd_accr_desc" tabindex="-1" onfocus="this.blur()" value="#{cadRloprcodfBean.rlopr_cd_accr_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="rlopr_cd_accr_std" value="#{cadRloprcodfBean.rlopr_cd_accr_std}"/>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="rlopr_cd_accr_actions" value="#{cadRloprcodfBean.rlopr_cd_accr_actions}"/>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="rlopr_tp_trans" value="#{cadRloprcodfBean.rlopr_tp_trans}"/>
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
<iframe id="role" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fRolesak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fRolesfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="trans" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="accr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAccrsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAccrsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadRloprcodfBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadRloprcodfBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_accr" action="#{cadAccrBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_accr" action="#{cadAccrBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_rloprcodf" action="#{cadRloprcodfBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_rloprcodf" action="#{cadRloprcodfBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_accr" action="#{cadAccrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_accr" action="#{cadAccrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_accr" action="#{cadAccrBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
