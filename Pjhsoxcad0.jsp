<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjhsoxBean");%>
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
<script src="../tinymce/jscripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------
<!-- mce rtfFontChoice -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "pjhso_ds_rtfFontChoice",
language : "",
plugins : "save,inlinepopups,safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,justifyfull,|,cut,copy,paste,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,fullscreen",
theme_advanced_buttons2 : "",
theme_advanced_buttons3 : "",
theme_advanced_buttons4 : "",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true,
save_onsavecallback : "testUpdate"
});
function testUpdate() {
document.getElementById('cadForm:aUpdate').onclick();
upflag=0;
}

function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:pjhso_dt_evento')
} else {
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadPjhsoxBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='pjhsocad';cadbeanx='cadPjhsoxBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadPjhsoxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsoxpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjhsoxBean.doSelecionarBackx}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadPjhsoxBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadPjhsoxBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadPjhsoxBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadPjhsoxBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadPjhsoxBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadPjhsoxBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadPjhsoxBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjhsoRfm" tabindex="-1" immediate="true" rendered="#{cadPjhsoBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'PjhsoRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadPjhsoxBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjhsoxBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadPjhsoxBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadPjhsoxBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadPjhsoxBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadPjhsoxBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadPjhsoxBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadPjhsoxBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadPjhsoxBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjhsoxBean.canUpdate}" action="#{cadPjhsoxBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Pjhso_pjhso_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_id_pjaus" for="pjhso_id_pjaus"  value="#{iimsg.Pjhso_pjhso_id_pjaus_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="650" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjhso_id_pjaus" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadPjhsoxBean.pjhso_id_pjaus}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="27" maxlength="27" />
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_sq" value="#{cadPjhsoxBean.pjhso_sq}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_sq_dthm" value="#{cadPjhsoxBean.pjhso_sq_dthm}"/>
<td       width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_dt_eventx" for="pjhso_dt_eventx"  value="#{iimsg.Pjhso_pjhso_dt_eventx_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="650" > <h:inputText id="pjhso_dt_eventx" onfocus="this.blur()" value="#{cadPjhsoxBean.pjhso_dt_eventx}" size="12" maxlength="12"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_dt_evento" for="pjhso_dt_evento"  value="#{iimsg.Pjhso_pjhso_dt_evento_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="650"   >
<h:inputText id="pjhso_dt_evento_str" tabindex="2"  value="#{cadPjhsoxBean.pjhso_dt_evento_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjhso_dt_evento_str', event);" onkeyup="SaltaCampo('cadForm:pjhso_dt_evento_str', 'cadForm:pjhso_cd_executor', 8 , event);" onchange="validaDatas2(this);bv('','pjhso_dt_evento_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjhso_dt_evento_str', 'pjhso_dt_eventoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjhso_dt_evento_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_dt_evento_vc}" styleClass="btp"/>
<div id="pjhso_dt_eventoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td       width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_executor" for="pjhso_cd_executor"  value="#{iimsg.Pjhso_pjhso_cd_executor_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="650" > <h:inputText id="pjhso_cd_executor" onfocus="this.blur()" value="#{cadPjhsoxBean.pjhso_cd_executor}" size="12" maxlength="12"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_tp_cfpjtp" value="#{cadPjhsoxBean.pjhso_tp_cfpjtp}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Pjhso_pjhso_de_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_tp_entidade" value="#{cadPjhsoxBean.pjhso_tp_entidade}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_de" for="pjhso_cd_de"  value="#{iimsg.Pjhso_pjhso_cd_de_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="650"   >
<h:inputText id="pjhso_cd_de" tabindex="4"  rendered="#{cadPjhsoxBean.goLoadedx}" value="#{cadPjhsoxBean.pjhso_cd_de}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_de','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_de_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_cd_de_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_de_dscr" value="#{cadPjhsoxBean.pjhso_cd_de_dscr}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_de_cont" value="#{cadPjhsoxBean.pjhso_cd_de_cont}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_de_email" value="#{cadPjhsoxBean.pjhso_cd_de_email}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para" for="pjhso_cd_para"  value="#{iimsg.Pjhso_pjhso_cd_para_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="650"   >
<h:inputText id="pjhso_cd_para" tabindex="5"  rendered="#{cadPjhsoxBean.goLoadedx}" value="#{cadPjhsoxBean.pjhso_cd_para}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onclick="bv('','pjhso_cd_para','0',selOne(this.value));"/>
<ps:psGraphicImage id="pjhso_cd_para_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_cd_para_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_para_dscr" value="#{cadPjhsoxBean.pjhso_cd_para_dscr}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_para_cont" value="#{cadPjhsoxBean.pjhso_cd_para_cont}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_para_email" value="#{cadPjhsoxBean.pjhso_cd_para_email}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_prcc" for="pjhso_cd_prcc"  value="#{iimsg.Pjhso_pjhso_cd_prcc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="650"   >
<h:inputText id="pjhso_cd_prcc" tabindex="6"  rendered="#{cadPjhsoxBean.goLoadedx}" value="#{cadPjhsoxBean.pjhso_cd_prcc}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onclick="bv('','pjhso_cd_prcc','0',selOne(this.value));"/>
<ps:psGraphicImage id="pjhso_cd_prcc_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_cd_prcc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_prcc_dscr" value="#{cadPjhsoxBean.pjhso_cd_prcc_dscr}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_prcc_email" value="#{cadPjhsoxBean.pjhso_cd_prcc_email}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_cd_prcc_cont" value="#{cadPjhsoxBean.pjhso_cd_prcc_cont}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Pjhso_pjhso_dt_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_tp_acao" for="pjhso_tp_acao"  value="#{iimsg.Pjhso_pjhso_tp_acao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjhso_tp_acao" value="#{cadPjhsoxBean.pjhso_tp_acao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjhso_tp_acao','0','TPAPS',this.value);;" size="7" maxlength="5" tabindex="7" />
<h:commandButton id="pjhso_tp_acao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPAPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjhso_tp_acao_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_tp_acao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjhso_tp_acao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjhsoxBean.pjhso_tp_acao_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_st" for="pjhso_st"  value="#{iimsg.Pjhso_pjhso_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjhso_st" value="#{cadPjhsoxBean.pjhso_st}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjhso_st','0','STPRC',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="pjhso_st_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STPRC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjhso_st_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjhso_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjhsoxBean.pjhso_st_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_dt_envio" for="pjhso_dt_envio"  value="#{iimsg.Pjhso_pjhso_dt_envio_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="650"   >
<h:inputText id="pjhso_dt_envio_str" tabindex="9"  value="#{cadPjhsoxBean.pjhso_dt_envio_str}"  styleClass="txl pl5 tbDt" size="12" maxlength="10" onkeydown="formataData('cadForm:pjhso_dt_envio_str', event);" onkeyup="SaltaCampo('cadForm:pjhso_dt_envio_str', 'cadForm:pjhso_ds_assunto', 8 , event);" onchange="validaDatas2(this);bv('','pjhso_dt_envio_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjhso_dt_envio_str', 'pjhso_dt_envioCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjhso_dt_envio_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_dt_envio_vc}" styleClass="btp"/>
<div id="pjhso_dt_envioCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_ds_assunto" for="pjhso_ds_assunto"  value="#{iimsg.Pjhso_pjhso_ds_assunto_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="6"   >
<h:inputText id="pjhso_ds_assunto" tabindex="10"  value="#{cadPjhsoxBean.pjhso_ds_assunto}" size="132" maxlength="130"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_ds_assunto','0',this.value);"/>
<ps:psGraphicImage id="pjhso_ds_assunto_vc" flagType="val" flag="#{cadPjhsoxBean.pjhso_ds_assunto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_ds" for="pjhso_ds"  value="#{iimsg.Pjhso_pjhso_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjhso_ds" tabindex="11"  value="#{cadPjhsoxBean.pjhso_ds}"  cols="100" rows="6" styleClass="pjhso_ds_rtfFontChoice" onchange="bv('','pjhso_ds','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjhso_in_ultimo" value="#{cadPjhsoxBean.pjhso_in_ultimo}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_ds_depara" value="#{cadPjhsoxBean.pjhso_ds_depara}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_ds_deparax" value="#{cadPjhsoxBean.pjhso_ds_deparax}"/>
<%-- Hidden --%>
<h:inputHidden id="pjhso_st_sum" value="#{cadPjhsoxBean.pjhso_st_sum}"/>
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
<h:commandLink id="xsel_vali" action="#{cadPjhsoxBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjhsoxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_pjhso" action="#{cadPjhsoxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjhso" action="#{cadPjhsoxBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
