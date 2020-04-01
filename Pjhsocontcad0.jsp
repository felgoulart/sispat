<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjhsocontBean");%>
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
<script src="../Pjhsocontfunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:pjhso_cd_para1_slde')
} else {
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadPjhsocontBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='pjhsocontcad';cadbeanx='cadPjhsocontBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadPjhsocontBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" rendered="#{cadPjhsocontBean.goBackx}" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjhsogpBean.doObter}"/>
<h:commandButton id="aBackToSearchx" immediate="true"  styleClass="btp" rendered="#{cadPjhsocontBean.goBackxx}" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjhsogpxBean.doObter}"/>
<h:commandButton id="aPrev" immediate="true" styleClass="btp" rendered="#{cadPjhsocontBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadPjhsocontBean.doObternullPrev}"/>
<h:commandButton id="aNext" immediate="true" styleClass="btp" rendered="#{cadPjhsocontBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadPjhsocontBean.doObternullNext}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadPjhsocontBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadPjhsocontBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadPjhsocontBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadPjhsocontBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadPjhsocontBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadPjhsocontBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadPjhsocontBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjhsocontRfm" tabindex="-1" immediate="true" rendered="#{cadPjhsocontBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'PjhsocontRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadPjhsocontBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjhsocontBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadPjhsocontBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadPjhsocontBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadPjhsocontBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadPjhsocontBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadPjhsocontBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadPjhsocontBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadPjhsocontBean.mesg_var}"  styleClass="txrr pr5 tb700r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjhsocontBean.canUpdate}" action="#{cadPjhsocontBean.doValidate}" onmousedown="msgw('aMessage');"/>
<h:inputText id="idxm" value="#{cadPjhsocontBean.idxm}"  styleClass="txrr pr5 tb50r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- prop buttonExecute --%>
<td  width="250" > <h:commandButton id="execute" title="#{iimsg.Pjhsocont_execute_tt}" value="#{iimsg.Pjhsocont_execute_tt}" styleClass="btnBox160" tabindex="1"   action="#{cadPjhsocontBean.execute}" onmousedown="msgwr();execute(this.id)"/>
</td> <%-- <close td> ccc --%>
<td        width="150" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txx pl0"  id="lbl_pjhso_id_pjaus" for="pjhso_id_pjaus"  value="#{iimsg.Pjhsocont_pjhso_id_pjaus_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="250" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjhso_id_pjaus" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadPjhsocontBean.pjhso_id_pjaus}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="27" maxlength="27" />
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_sq" value="#{cadPjhsocontBean.pjhso_sq}"/>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100" > <%-- open w/ inputText 222a--%>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_ct_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_tp_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_ds_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_de_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_pr_tt_tt}"/>
</td> <%-- <close td> ccc --%>
<td    width="100" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Pjhsocont_pjhso_cc_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para1" rendered="#{cadPjhsocontBean.pjhso_cd_para1_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para1}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para1_type" rendered="#{cadPjhsocontBean.pjhso_cd_para1_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para1_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para1_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para1_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para1_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para1_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para1_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" tabindex="5"  value="#{cadPjhsocontBean.pjhso_cd_para1_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para1_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para1_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para1_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para1_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para1_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para1_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" tabindex="6"  value="#{cadPjhsocontBean.pjhso_cd_para1_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para1_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para1_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para1_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para1_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para1_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para1_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" tabindex="7"  value="#{cadPjhsocontBean.pjhso_cd_para1_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para1_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para1_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para1_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para1_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para2" rendered="#{cadPjhsocontBean.pjhso_cd_para2_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para2}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para2_type" rendered="#{cadPjhsocontBean.pjhso_cd_para2_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para2_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para2_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para2_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para2_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para2_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para2_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" tabindex="11"  value="#{cadPjhsocontBean.pjhso_cd_para2_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para2_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para2_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para2_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para2_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para2_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para2_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" tabindex="12"  value="#{cadPjhsocontBean.pjhso_cd_para2_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para2_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para2_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para2_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para2_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para2_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para2_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" tabindex="13"  value="#{cadPjhsocontBean.pjhso_cd_para2_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para2_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para2_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para2_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para2_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para3" rendered="#{cadPjhsocontBean.pjhso_cd_para3_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para3}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para3_type" rendered="#{cadPjhsocontBean.pjhso_cd_para3_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para3_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para3_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para3_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para3_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para3_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para3_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" tabindex="17"  value="#{cadPjhsocontBean.pjhso_cd_para3_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para3_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para3_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para3_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para3_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para3_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para3_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" tabindex="18"  value="#{cadPjhsocontBean.pjhso_cd_para3_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para3_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para3_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para3_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para3_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para3_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para3_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" tabindex="19"  value="#{cadPjhsocontBean.pjhso_cd_para3_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para3_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para3_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para3_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para3_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para4" rendered="#{cadPjhsocontBean.pjhso_cd_para4_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para4}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para4_type" rendered="#{cadPjhsocontBean.pjhso_cd_para4_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para4_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para4_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para4_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para4_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para4_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para4_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" tabindex="23"  value="#{cadPjhsocontBean.pjhso_cd_para4_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para4_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para4_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para4_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para4_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para4_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para4_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" tabindex="24"  value="#{cadPjhsocontBean.pjhso_cd_para4_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para4_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para4_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para4_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para4_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para4_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para4_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" tabindex="25"  value="#{cadPjhsocontBean.pjhso_cd_para4_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para4_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para4_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para4_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para4_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para5" rendered="#{cadPjhsocontBean.pjhso_cd_para5_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para5}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para5_type" rendered="#{cadPjhsocontBean.pjhso_cd_para5_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para5_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para5_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para5_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para5_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para5_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para5_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" tabindex="29"  value="#{cadPjhsocontBean.pjhso_cd_para5_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para5_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para5_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para5_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para5_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para5_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para5_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" tabindex="30"  value="#{cadPjhsocontBean.pjhso_cd_para5_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para5_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para5_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para5_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para5_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para5_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para5_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" tabindex="31"  value="#{cadPjhsocontBean.pjhso_cd_para5_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para5_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para5_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para5_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para5_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para6" rendered="#{cadPjhsocontBean.pjhso_cd_para6_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para6}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para6_type" rendered="#{cadPjhsocontBean.pjhso_cd_para6_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para6_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para6_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para6_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para6_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para6_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para6_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" tabindex="35"  value="#{cadPjhsocontBean.pjhso_cd_para6_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para6_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para6_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para6_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para6_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para6_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para6_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" tabindex="36"  value="#{cadPjhsocontBean.pjhso_cd_para6_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para6_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para6_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para6_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para6_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para6_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para6_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" tabindex="37"  value="#{cadPjhsocontBean.pjhso_cd_para6_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para6_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para6_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para6_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para6_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para7" rendered="#{cadPjhsocontBean.pjhso_cd_para7_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para7}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para7_type" rendered="#{cadPjhsocontBean.pjhso_cd_para7_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para7_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para7_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para7_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para7_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para7_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para7_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" tabindex="41"  value="#{cadPjhsocontBean.pjhso_cd_para7_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para7_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para7_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para7_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para7_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para7_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para7_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" tabindex="42"  value="#{cadPjhsocontBean.pjhso_cd_para7_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para7_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para7_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para7_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para7_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para7_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para7_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" tabindex="43"  value="#{cadPjhsocontBean.pjhso_cd_para7_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para7_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para7_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para7_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para7_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para8" rendered="#{cadPjhsocontBean.pjhso_cd_para8_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para8}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para8_type" rendered="#{cadPjhsocontBean.pjhso_cd_para8_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para8_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para8_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para8_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para8_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para8_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para8_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" tabindex="47"  value="#{cadPjhsocontBean.pjhso_cd_para8_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para8_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para8_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para8_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para8_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para8_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para8_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" tabindex="48"  value="#{cadPjhsocontBean.pjhso_cd_para8_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para8_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para8_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para8_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para8_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para8_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para8_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" tabindex="49"  value="#{cadPjhsocontBean.pjhso_cd_para8_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para8_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para8_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para8_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para8_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para9" rendered="#{cadPjhsocontBean.pjhso_cd_para9_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para9}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para9_type" rendered="#{cadPjhsocontBean.pjhso_cd_para9_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para9_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_para9_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_para9_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para9_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_para9_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para9_slde" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" tabindex="53"  value="#{cadPjhsocontBean.pjhso_cd_para9_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_para9_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para9_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para9_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para9_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_para9_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para9_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" tabindex="54"  value="#{cadPjhsocontBean.pjhso_cd_para9_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_para9_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para9_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para9_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para9_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_para9_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para9_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" tabindex="55"  value="#{cadPjhsocontBean.pjhso_cd_para9_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_para9_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para9_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_para9_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_para9_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraA" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraA}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraA_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraA_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraA_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraA_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraA_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraA_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraA_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" tabindex="59"  value="#{cadPjhsocontBean.pjhso_cd_paraA_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraA_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraA_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraA_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraA_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraA_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraA_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" tabindex="60"  value="#{cadPjhsocontBean.pjhso_cd_paraA_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraA_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraA_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraA_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraA_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraA_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraA_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" tabindex="61"  value="#{cadPjhsocontBean.pjhso_cd_paraA_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraA_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraA_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraA_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraA_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraB" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraB}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraB_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraB_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraB_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraB_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraB_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraB_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraB_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" tabindex="65"  value="#{cadPjhsocontBean.pjhso_cd_paraB_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraB_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraB_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraB_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraB_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraB_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraB_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" tabindex="66"  value="#{cadPjhsocontBean.pjhso_cd_paraB_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraB_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraB_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraB_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraB_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraB_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraB_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" tabindex="67"  value="#{cadPjhsocontBean.pjhso_cd_paraB_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraB_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraB_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraB_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraB_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraC" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraC}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraC_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraC_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraC_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraC_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraC_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraC_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraC_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" tabindex="71"  value="#{cadPjhsocontBean.pjhso_cd_paraC_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraC_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraC_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraC_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraC_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraC_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraC_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" tabindex="72"  value="#{cadPjhsocontBean.pjhso_cd_paraC_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraC_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraC_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraC_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraC_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraC_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraC_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" tabindex="73"  value="#{cadPjhsocontBean.pjhso_cd_paraC_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraC_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraC_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraC_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraC_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraD" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraD}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraD_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraD_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraD_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraD_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraD_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraD_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraD_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" tabindex="77"  value="#{cadPjhsocontBean.pjhso_cd_paraD_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraD_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraD_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraD_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraD_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraD_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraD_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" tabindex="78"  value="#{cadPjhsocontBean.pjhso_cd_paraD_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraD_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraD_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraD_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraD_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraD_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraD_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" tabindex="79"  value="#{cadPjhsocontBean.pjhso_cd_paraD_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraD_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraD_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraD_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraD_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraE" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraE}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraE_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraE_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraE_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraE_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraE_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraE_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraE_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" tabindex="83"  value="#{cadPjhsocontBean.pjhso_cd_paraE_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraE_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraE_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraE_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraE_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraE_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraE_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" tabindex="84"  value="#{cadPjhsocontBean.pjhso_cd_paraE_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraE_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraE_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraE_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraE_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraE_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraE_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" tabindex="85"  value="#{cadPjhsocontBean.pjhso_cd_paraE_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraE_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraE_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraE_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraE_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraF" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraF}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraF_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraF_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraF_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraF_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraF_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraF_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraF_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" tabindex="89"  value="#{cadPjhsocontBean.pjhso_cd_paraF_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraF_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraF_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraF_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraF_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraF_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraF_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" tabindex="90"  value="#{cadPjhsocontBean.pjhso_cd_paraF_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraF_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraF_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraF_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraF_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraF_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraF_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" tabindex="91"  value="#{cadPjhsocontBean.pjhso_cd_paraF_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraF_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraF_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraF_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraF_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraG" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraG}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraG_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraG_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraG_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraG_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraG_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraG_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraG_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" tabindex="95"  value="#{cadPjhsocontBean.pjhso_cd_paraG_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraG_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraG_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraG_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraG_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraG_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraG_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" tabindex="96"  value="#{cadPjhsocontBean.pjhso_cd_paraG_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraG_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraG_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraG_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraG_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraG_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraG_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" tabindex="97"  value="#{cadPjhsocontBean.pjhso_cd_paraG_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraG_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraG_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraG_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraG_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraH" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraH}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraH_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraH_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraH_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraH_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraH_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraH_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraH_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" tabindex="101"  value="#{cadPjhsocontBean.pjhso_cd_paraH_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraH_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraH_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraH_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraH_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraH_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraH_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" tabindex="102"  value="#{cadPjhsocontBean.pjhso_cd_paraH_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraH_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraH_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraH_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraH_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraH_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraH_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" tabindex="103"  value="#{cadPjhsocontBean.pjhso_cd_paraH_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraH_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraH_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraH_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraH_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraI" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraI}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraI_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraI_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraI_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraI_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraI_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraI_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraI_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" tabindex="107"  value="#{cadPjhsocontBean.pjhso_cd_paraI_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraI_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraI_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraI_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraI_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraI_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraI_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" tabindex="108"  value="#{cadPjhsocontBean.pjhso_cd_paraI_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraI_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraI_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraI_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraI_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraI_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraI_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" tabindex="109"  value="#{cadPjhsocontBean.pjhso_cd_paraI_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraI_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraI_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraI_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraI_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraJ" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraJ}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraJ_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraJ_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraJ_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraJ_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraJ_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraJ_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" tabindex="113"  value="#{cadPjhsocontBean.pjhso_cd_paraJ_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraJ_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraJ_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraJ_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraJ_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraJ_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraJ_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" tabindex="114"  value="#{cadPjhsocontBean.pjhso_cd_paraJ_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraJ_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraJ_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraJ_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraJ_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraJ_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraJ_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" tabindex="115"  value="#{cadPjhsocontBean.pjhso_cd_paraJ_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraJ_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraJ_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraJ_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraJ_slcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraK" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraK}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraK_type" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_type_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraK_type}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="pjhso_cd_paraK_dscr" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" onfocus="this.blur()" value="#{cadPjhsocontBean.pjhso_cd_paraK_dscr}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraK_slde_bol" value="#{cadPjhsocontBean.pjhso_cd_paraK_slde}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraK_slde" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" tabindex="119"  value="#{cadPjhsocontBean.pjhso_cd_paraK_slde_bol}" onclick="chkBooleanslde(this, 'cadForm:pjhso_cd_paraK_slde_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraK_slde_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraK_slde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraK_slpr_bol" value="#{cadPjhsocontBean.pjhso_cd_paraK_slpr}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraK_slpr" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" tabindex="120"  value="#{cadPjhsocontBean.pjhso_cd_paraK_slpr_bol}" onclick="chkBooleanslpr(this, 'cadForm:pjhso_cd_paraK_slpr_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraK_slpr_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraK_slpr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_paraK_slcc_bol" value="#{cadPjhsocontBean.pjhso_cd_paraK_slcc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_paraK_slcc" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" tabindex="121"  value="#{cadPjhsocontBean.pjhso_cd_paraK_slcc_bol}" onclick="chkBooleanslcc(this, 'cadForm:pjhso_cd_paraK_slcc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_paraK_slcc_vc" rendered="#{cadPjhsocontBean.pjhso_cd_paraK_dscr_rnd}" flagType="val" flag="#{cadPjhsocontBean.pjhso_cd_paraK_slcc_vc}" styleClass="btp"/>
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
<iframe id="pjaus" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadPjhsocontBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjhsocontBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjausppaobtv" action="#{cadPjausppaobtvBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjausppaobtv" action="#{cadPjausppaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjausppaobtv" action="#{cadPjausppaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaot" action="#{cadPjauspaaotBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaot" action="#{cadPjauspaaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaot" action="#{cadPjauspaaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaop" action="#{cadPjauspaaopBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaop" action="#{cadPjauspaaopBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaop" action="#{cadPjauspaaopBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaittv" action="#{cadPjauspaaittvBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaittv" action="#{cadPjauspaaittvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaittv" action="#{cadPjauspaaittvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaitps" action="#{cadPjauspaaitpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaitps" action="#{cadPjauspaaitpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaitps" action="#{cadPjauspaaitpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspapus" action="#{cadPjauspapusBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspapus" action="#{cadPjauspapusBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspapus" action="#{cadPjauspapusBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaepb" action="#{cadPjauspaepbBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaepb" action="#{cadPjauspaepbBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaepb" action="#{cadPjauspaepbBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspapsv" action="#{cadPjauspapsvBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspapsv" action="#{cadPjauspapsvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspapsv" action="#{cadPjauspapsvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaetm" action="#{cadPjauspaetmBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjauspaetm" action="#{cadPjauspaetmBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaetm" action="#{cadPjauspaetmBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_pjhsocont" action="#{cadPjhsocontBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjhsocont" action="#{cadPjhsocontBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
