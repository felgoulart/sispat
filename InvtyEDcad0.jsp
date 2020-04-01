<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadInvtyEDBean");%>
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
<link rel="stylesheet" href="../projStandardInvt.css" type="text/css">
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
el('cadForm:invty_cd').readOnly = true;
el('cadForm:invty_cd').className = 'tbxr';
fcf('cadForm:invty_tp')
} else {
fcf('cadForm:invty_cd')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadInvtyEDBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='invtyedcad';cadbeanx='cadInvtyEDBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadInvtyEDBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeInvt/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeInvt/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeInvt/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'invtyedpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadInvtyEDBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'invtyedcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadInvtyEDBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadInvtyEDBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'invtyedcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadInvtyEDBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadInvtyEDBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadInvtyEDBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadInvtyEDBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadInvtyEDBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadInvtyEDBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'invtyedcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Invty');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudInvtyRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpInvtyRfm" tabindex="-1" immediate="true" rendered="#{cadInvtyEDBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'InvtyRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadInvtyEDBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadInvtyEDBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadInvtyEDBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadInvtyEDBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadInvtyEDBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadInvtyEDBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadInvtyEDBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadInvtyEDBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/thmeInvt/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeInvt/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeInvt/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeInvt/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeInvt/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeInvt/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeInvt/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<table   >  <%-- <mesg frame open> --%>
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadInvtyEDBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadInvtyEDBean.canUpdate}" action="#{cadInvtyEDBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_cd" for="invty_cd"  value="#{iimsg.InvtyED_invty_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="600" > <h:inputText id="invty_cd" tabindex="1"  value="#{cadInvtyEDBean.invty_cd}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="this.value=this.value.toUpperCase();bv('','invty_cd','0',this.value);"/>
<ps:psGraphicImage id="invty_cd_vc" flagType="val" flag="#{cadInvtyEDBean.invty_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp" for="invty_tp"  value="#{iimsg.InvtyED_invty_tp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="invty_tp" onclick="clf(this);" value="#{cadInvtyEDBean.invty_tp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','invty_tp','0','INVTP',this.value);;" size="5" maxlength="3" tabindex="2" />
<h:commandButton id="invty_tp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'INVTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="invty_tp_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="invty_tp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadInvtyEDBean.invty_tp_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_nm" for="invty_nm"  value="#{iimsg.InvtyED_invty_nm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="600"   >
<h:inputText id="invty_nm" tabindex="3"  value="#{cadInvtyEDBean.invty_nm}" size="72" maxlength="70"  styleClass="txl pl5 tbx" onchange="bv('','invty_nm','0',this.value);"/>
<ps:psGraphicImage id="invty_nm_vc" flagType="val" flag="#{cadInvtyEDBean.invty_nm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_ds" for="invty_ds"  value="#{iimsg.InvtyED_invty_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="invty_ds" tabindex="4"  value="#{cadInvtyEDBean.invty_ds}"  cols="80" rows="2" styleClass="invty_ds_" onchange="bv('','invty_ds','0',this.value);"/>
<ps:psGraphicImage id="invty_ds_vc" flagType="val" flag="#{cadInvtyEDBean.invty_ds_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_dt" for="invty_dt"  value="#{iimsg.InvtyED_invty_dt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="600"   >
<h:inputText id="invty_dt_str" tabindex="5"  value="#{cadInvtyEDBean.invty_dt_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:invty_dt_str', event);" onkeyup="SaltaCampo('cadForm:invty_dt_str', 'cadForm:aaars_tt', 8 , event);" onchange="validaDatas2(this);bv('','invty_dt_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:invty_dt_str', 'invty_dtCal');" style="cursor: hand"/>
<ps:psGraphicImage id="invty_dt_vc" flagType="val" flag="#{cadInvtyEDBean.invty_dt_vc}" styleClass="btp"/>
<div id="invty_dtCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.InvtyED_aaars_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_vg" for="invty_tp_vg"  value="#{iimsg.InvtyED_invty_tp_vg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_vg_bol" value="#{cadInvtyEDBean.invty_tp_vg}"/>
<h:selectBooleanCheckbox id="invty_tp_vg" tabindex="6"  value="#{cadInvtyEDBean.invty_tp_vg_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_vg_bol');"/>
<ps:psGraphicImage id="invty_tp_vg_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_vg_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_lc" for="invty_tp_lc"  value="#{iimsg.InvtyED_invty_tp_lc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_lc_bol" value="#{cadInvtyEDBean.invty_tp_lc}"/>
<h:selectBooleanCheckbox id="invty_tp_lc" tabindex="7"  value="#{cadInvtyEDBean.invty_tp_lc_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_lc_bol');"/>
<ps:psGraphicImage id="invty_tp_lc_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_lc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_va" for="invty_tp_va"  value="#{iimsg.InvtyED_invty_tp_va_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_va_bol" value="#{cadInvtyEDBean.invty_tp_va}"/>
<h:selectBooleanCheckbox id="invty_tp_va" tabindex="8"  value="#{cadInvtyEDBean.invty_tp_va_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_va_bol');"/>
<ps:psGraphicImage id="invty_tp_va_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_va_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.InvtyED_bbbpm_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_lp" for="invty_tp_lp"  value="#{iimsg.InvtyED_invty_tp_lp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_lp_bol" value="#{cadInvtyEDBean.invty_tp_lp}"/>
<h:selectBooleanCheckbox id="invty_tp_lp" tabindex="9"  value="#{cadInvtyEDBean.invty_tp_lp_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_lp_bol');"/>
<ps:psGraphicImage id="invty_tp_lp_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_lp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_lr" for="invty_tp_lr"  value="#{iimsg.InvtyED_invty_tp_lr_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_lr_bol" value="#{cadInvtyEDBean.invty_tp_lr}"/>
<h:selectBooleanCheckbox id="invty_tp_lr" tabindex="10"  value="#{cadInvtyEDBean.invty_tp_lr_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_lr_bol');"/>
<ps:psGraphicImage id="invty_tp_lr_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_lr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_dp" for="invty_tp_dp"  value="#{iimsg.InvtyED_invty_tp_dp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_dp_bol" value="#{cadInvtyEDBean.invty_tp_dp}"/>
<h:selectBooleanCheckbox id="invty_tp_dp" tabindex="11"  value="#{cadInvtyEDBean.invty_tp_dp_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_dp_bol');"/>
<ps:psGraphicImage id="invty_tp_dp_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_dp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_dc" for="invty_tp_dc"  value="#{iimsg.InvtyED_invty_tp_dc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_dc_bol" value="#{cadInvtyEDBean.invty_tp_dc}"/>
<h:selectBooleanCheckbox id="invty_tp_dc" tabindex="12"  value="#{cadInvtyEDBean.invty_tp_dc_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_dc_bol');"/>
<ps:psGraphicImage id="invty_tp_dc_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_dc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_pn" for="invty_tp_pn"  value="#{iimsg.InvtyED_invty_tp_pn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_pn_bol" value="#{cadInvtyEDBean.invty_tp_pn}"/>
<h:selectBooleanCheckbox id="invty_tp_pn" tabindex="13"  value="#{cadInvtyEDBean.invty_tp_pn_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_pn_bol');"/>
<ps:psGraphicImage id="invty_tp_pn_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_pn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.InvtyED_cccwa_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_ps" for="invty_tp_ps"  value="#{iimsg.InvtyED_invty_tp_ps_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_ps_bol" value="#{cadInvtyEDBean.invty_tp_ps}"/>
<h:selectBooleanCheckbox id="invty_tp_ps" tabindex="14"  value="#{cadInvtyEDBean.invty_tp_ps_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_ps_bol');"/>
<ps:psGraphicImage id="invty_tp_ps_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_ps_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_pi" for="invty_tp_pi"  value="#{iimsg.InvtyED_invty_tp_pi_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_pi_bol" value="#{cadInvtyEDBean.invty_tp_pi}"/>
<h:selectBooleanCheckbox id="invty_tp_pi" tabindex="15"  value="#{cadInvtyEDBean.invty_tp_pi_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_pi_bol');"/>
<ps:psGraphicImage id="invty_tp_pi_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_pi_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_pt" for="invty_tp_pt"  value="#{iimsg.InvtyED_invty_tp_pt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_pt_bol" value="#{cadInvtyEDBean.invty_tp_pt}"/>
<h:selectBooleanCheckbox id="invty_tp_pt" tabindex="16"  value="#{cadInvtyEDBean.invty_tp_pt_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_pt_bol');"/>
<ps:psGraphicImage id="invty_tp_pt_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_pt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_tu" for="invty_tp_tu"  value="#{iimsg.InvtyED_invty_tp_tu_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_tu_bol" value="#{cadInvtyEDBean.invty_tp_tu}"/>
<h:selectBooleanCheckbox id="invty_tp_tu" tabindex="17"  value="#{cadInvtyEDBean.invty_tp_tu_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_tu_bol');"/>
<ps:psGraphicImage id="invty_tp_tu_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_tu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_vd" for="invty_tp_vd"  value="#{iimsg.InvtyED_invty_tp_vd_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_vd_bol" value="#{cadInvtyEDBean.invty_tp_vd}"/>
<h:selectBooleanCheckbox id="invty_tp_vd" tabindex="18"  value="#{cadInvtyEDBean.invty_tp_vd_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_vd_bol');"/>
<ps:psGraphicImage id="invty_tp_vd_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_vd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_bu" for="invty_tp_bu"  value="#{iimsg.InvtyED_invty_tp_bu_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_bu_bol" value="#{cadInvtyEDBean.invty_tp_bu}"/>
<h:selectBooleanCheckbox id="invty_tp_bu" tabindex="19"  value="#{cadInvtyEDBean.invty_tp_bu_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_bu_bol');"/>
<ps:psGraphicImage id="invty_tp_bu_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_bu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.InvtyED_dddlb_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_ed" for="invty_tp_ed"  value="#{iimsg.InvtyED_invty_tp_ed_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_ed_bol" value="#{cadInvtyEDBean.invty_tp_ed}"/>
<h:selectBooleanCheckbox id="invty_tp_ed" tabindex="20"  value="#{cadInvtyEDBean.invty_tp_ed_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_ed_bol');"/>
<ps:psGraphicImage id="invty_tp_ed_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_ed_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_tp" for="invty_tp_tp"  value="#{iimsg.InvtyED_invty_tp_tp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_tp_bol" value="#{cadInvtyEDBean.invty_tp_tp}"/>
<h:selectBooleanCheckbox id="invty_tp_tp" tabindex="21"  value="#{cadInvtyEDBean.invty_tp_tp_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_tp_bol');"/>
<ps:psGraphicImage id="invty_tp_tp_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_tp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_invty_tp_tl" for="invty_tp_tl"  value="#{iimsg.InvtyED_invty_tp_tl_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="600"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="invty_tp_tl_bol" value="#{cadInvtyEDBean.invty_tp_tl}"/>
<h:selectBooleanCheckbox id="invty_tp_tl" tabindex="22"  value="#{cadInvtyEDBean.invty_tp_tl_bol}" onclick="chkBooleanx(this, 'cadForm:invty_tp_tl_bol');"/>
<ps:psGraphicImage id="invty_tp_tl_vc" flagType="val" flag="#{cadInvtyEDBean.invty_tp_tl_vc}" styleClass="btp"/>
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
<td width="15" background="../imagens/thmeInvt/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeInvt/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeInvt/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeInvt/md_curva_botdir.gif" width="15" height="13"> </td>
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
<h:commandLink id="xsel_vali" action="#{cadInvtyEDBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_invtyed" action="#{cadInvtyEDBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtyed" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
