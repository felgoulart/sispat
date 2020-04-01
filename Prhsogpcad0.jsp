<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPrhsogpBean");%>
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
<script src="../Prhsogpfunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../tinymce/jscripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------
<!-- mce rtfFontChoice -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "prhso_ds_rtfFontChoice",
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
el('cadForm:prhso_id_pross').readOnly = true;
el('cadForm:prhso_id_pross').className = 'tbxr';
fcf('cadForm:prhso_cd_de')
} else {
el('cadForm:prhso_id_pross').readOnly = true;
el('cadForm:prhso_id_pross').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadPrhsogpBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='prhsogpcad';cadbeanx='cadPrhsogpBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" enctype="multipart/form-data" >
<jsp:setProperty property="cadbeanx" name="cadPrhsogpBean" value="cadPrhsogpBean"/>
<h:inputHidden id="cadbeanx" value="#{cadPrhsogpBean.cadbeanx}"  />
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
<h:outputText value="#{cadPrhsogpBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'prhsogppsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPrhsogpBean.doSelecionarBackx}"/>
<h:commandButton id="aPrev" immediate="true" styleClass="btp" rendered="#{cadPrhsogpBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadPrhsogpBean.doObternullPrev}"/>
<h:commandButton id="aNext" immediate="true" styleClass="btp" rendered="#{cadPrhsogpBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadPrhsogpBean.doObternullNext}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadPrhsogpBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'prhsogpcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadPrhsogpBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadPrhsogpBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadPrhsogpBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadPrhsogpBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadPrhsogpBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadPrhsogpBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'prhsogpcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Prhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPrhsogpRfm" tabindex="-1" immediate="true" rendered="#{cadPrhsogpBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'PrhsogpRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadPrhsogpBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadPrhsogpBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadPrhsogpBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadPrhsogpBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadPrhsogpBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadPrhsogpBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadPrhsogpBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadPrhsogpBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadPrhsogpBean.mesg_var}"  styleClass="txrr pr5 tb700r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPrhsogpBean.canUpdate}" action="#{cadPrhsogpBean.doValidate}" onmousedown="msgw('aMessage');"/>
<h:inputText id="idxm" value="#{cadPrhsogpBean.idxm}"  styleClass="txrr pr5 tb50r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Prhsogp_ident_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_id_pross" for="prhso_id_pross"  value="#{iimsg.Prhsogp_prhso_id_pross_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  colspan ="4"width="250" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="prhso_id_pross" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadPrhsogpBean.prhso_id_pross}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="27" maxlength="27" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_sq" value="#{cadPrhsogpBean.prhso_sq}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="150" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Prhsogp_pross_pj_tt_tt}"/>
<%-- filler1 --%> &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="prhsodoc_seln_xsel" title="#{iimsg.Prhsogp_prhsodoc_seln_tt}" value="#{iimsg.Prhsogp_prhsodoc_seln_tt}" styleClass="btnBox120" immediate="true" action="#{cadObdocprBean.doSelecionar}" rendered="#{cadPrhsogpBean.goLoadedx}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prhsogpcad&campo=campo1&valor='+el('cadForm:prhso_id_pross').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- filler1 --%> &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="fxaco_seln_xsel" title="#{iimsg.Prhsogp_fxaco_seln_tt}" value="#{iimsg.Prhsogp_fxaco_seln_tt}" styleClass="btnBox120" immediate="true" action="#{cadFxacoBean.doSelecionar}" rendered="#{cadPrhsogpBean.goLoadedx}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prhsogpcad&campo=campo1&valor='+el('cadForm:prhso_tp_cfpjtp').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_tp_cfpjtp" value="#{cadPrhsogpBean.prhso_tp_cfpjtp}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_cd_de" for="prhso_cd_de"  value="#{iimsg.Prhsogp_prhso_cd_de_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="250"   >
<h:inputText id="prhso_cd_de" tabindex="4"  rendered="#{cadPrhsogpBean.goLoadedx}" value="#{cadPrhsogpBean.prhso_cd_de}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','prhso_cd_de','0',this.value);"/>
<ps:psGraphicImage id="prhso_cd_de_vc" flagType="val" flag="#{cadPrhsogpBean.prhso_cd_de_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_tp_entidade" value="#{cadPrhsogpBean.prhso_tp_entidade}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_de_email" value="#{cadPrhsogpBean.prhso_cd_de_email}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_de_cont" value="#{cadPrhsogpBean.prhso_cd_de_cont}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_cd_para" for="prhso_cd_para"  value="#{iimsg.Prhsogp_prhso_cd_para_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="250"   >
<h:inputText id="prhso_cd_para" tabindex="5"  rendered="#{cadPrhsogpBean.goLoadedx}" value="#{cadPrhsogpBean.prhso_cd_para}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onclick="bv('','prhso_cd_para','0',selOne(this.value));"/>
<ps:psGraphicImage id="prhso_cd_para_vc" flagType="val" flag="#{cadPrhsogpBean.prhso_cd_para_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_prcc" value="#{cadPrhsogpBean.prhso_cd_prcc}"/>
<tr>   <%-- <tr open> vvv --%>
<td       width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_sq_dthm" for="prhso_sq_dthm"  value="#{iimsg.Prhsogp_prhso_sq_dthm_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="650" > <h:inputText id="prhso_sq_dthm" onfocus="this.blur()" value="#{cadPrhsogpBean.prhso_sq_dthm}" size="25" maxlength="25"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<td       width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_cd_executor" for="prhso_cd_executor"  value="#{iimsg.Prhsogp_prhso_cd_executor_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="650" > <h:inputText id="prhso_cd_executor" onfocus="this.blur()" value="#{cadPrhsogpBean.prhso_cd_executor}" size="12" maxlength="12"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_para_email" value="#{cadPrhsogpBean.prhso_cd_para_email}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_prcc_email" value="#{cadPrhsogpBean.prhso_cd_prcc_email}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_para_cont" value="#{cadPrhsogpBean.prhso_cd_para_cont}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_cd_prcc_cont" value="#{cadPrhsogpBean.prhso_cd_prcc_cont}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="0" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Prhsogp_detal_tt1_tt}"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- filler1 --%> &nbsp
</td> <%-- <close td> ccc --%>
<%-- prop buttonExecute --%>
<td  width="650" > <h:commandButton id="prhso_next_action" title="#{iimsg.Prhsogp_prhso_next_action_tt}" value="#{iimsg.Prhsogp_prhso_next_action_tt}" styleClass="btnBox120" tabindex="8"   action="#{cadPrhsogpBean.prhso_next_action}" onmousedown="msgwr();prhso_next_action(this.id)"/>
</td> <%-- <close td> ccc --%>
<td       width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_st_sum" for="prhso_st_sum"  value="#{iimsg.Prhsogp_prhso_st_sum_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="650" > <h:inputText id="prhso_st_sum" onfocus="this.blur()" value="#{cadPrhsogpBean.prhso_st_sum}" size="40" maxlength="40"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_tp_acao" for="prhso_tp_acao"  value="#{iimsg.Prhsogp_prhso_tp_acao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="650"   >
<h:inputText id="prhso_tp_acao" tabindex="10"  onclick="if (retSubSel('prhso_tp_acao') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadPrhsogpBean.prhso_tp_acao}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','prhso_tp_acao','0',this.value);"/>
<ps:psGraphicImage id="prhso_tp_acao_vc" flagType="val" flag="#{cadPrhsogpBean.prhso_tp_acao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_st_acao" for="prhso_st_acao"  value="#{iimsg.Prhsogp_prhso_st_acao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="650"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="prhso_st_acao" value="#{cadPrhsogpBean.prhso_st_acao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','prhso_st_acao','0','STAPS',this.value);;" size="7" maxlength="5" tabindex="11" />
<h:commandButton id="prhso_st_acao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STAPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="prhso_st_acao_vc" flagType="val" flag="#{cadPrhsogpBean.prhso_st_acao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="prhso_st_acao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPrhsogpBean.prhso_st_acao_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_st" value="#{cadPrhsogpBean.prhso_st}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_ds_assunto" for="prhso_ds_assunto"  value="#{iimsg.Prhsogp_prhso_ds_assunto_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="250"   >
<h:inputText id="prhso_ds_assunto" tabindex="12"  onclick="if (retSubSel('prhso_ds_assunto') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadPrhsogpBean.prhso_ds_assunto}" size="202" maxlength="200"  styleClass="txl pl5 tbx" onchange="bv('','prhso_ds_assunto','0',this.value);"/>
<ps:psGraphicImage id="prhso_ds_assunto_vc" flagType="val" flag="#{cadPrhsogpBean.prhso_ds_assunto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_prhso_ds" for="prhso_ds"  value="#{iimsg.Prhsogp_prhso_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="prhso_ds" tabindex="13"  value="#{cadPrhsogpBean.prhso_ds}"  cols="100" rows="6" styleClass="prhso_ds_rtfFontChoice" onchange="bv('','prhso_ds','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_in_ultimo" value="#{cadPrhsogpBean.prhso_in_ultimo}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_ds_depara" value="#{cadPrhsogpBean.prhso_ds_depara}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_ds_deparax" value="#{cadPrhsogpBean.prhso_ds_deparax}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_st_supid" value="#{cadPrhsogpBean.prhso_st_supid}"/>
<%-- Hidden --%>
<h:inputHidden id="prhso_st_supidx" value="#{cadPrhsogpBean.prhso_st_supidx}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_uploadSelection" for="uploadSelection"  value="#{iimsg.Prhsogp_uploadSelection_tt}"/>  </td> <%-- <top> --%>
<%-- prop Selection --%>
<td width="650"/>
<ps:psInputFile id="inputFile"  value="#{cadPrhsogpBean.file}" styleClass="tb400r" /> ></td>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="prhso_nm_file" value="#{cadPrhsogpBean.prhso_nm_file}"/>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadPrhsogpBean.canUpload}" id="lbl_upload" for="upload"  value="#{iimsg.Prhsogp_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUploadOnly --%>
<td width="650"/>
<h:commandButton id="doUpload" rendered="#{cadPrhsogpBean.canUpload}" action="#{cadPrhsogpBean.doFileUploadx}" image="../imagens/fileUpload3.gif" /></td>
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
<iframe id="pross" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fProsssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fProsssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadPrhsogpBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obdocpr" action="#{cadObdocprBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_fxaco" action="#{cadFxacoBean.doSelecionar}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossimcpa" action="#{cadProssimcpaBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossafata" action="#{cadProssafataBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxa" action="#{cadProssmrbxaBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxp" action="#{cadProssmrbxpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivges" action="#{cadProssivgesBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivgen" action="#{cadProssivgenBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prosscomod" action="#{cadProsscomodBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_prhsogp" action="#{cadPrhsogpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prhsogp" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
<script>
// loadFieldsFromList  ------------------------------------
function mostraDados( prhso_nm_file){
document.getElementById( "cadForm:prhso_id").value = prhso_id;
document.getElementById( "cadForm:prhso_ds").value = prhso_ds;
document.getElementById( "cadForm:lbl_prhso_nm_file").value = prhso_nm_file;
document.getElementById( "cadForm:prhso_nm_file").value = prhso_nm_file;

document.getElementById( "img_grande").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ prhsogp_nm_file +'&tipo=imagem';
document.getElementById( "img_grande").style.display = 'block';
}
<c:if test="${  cadPrhsogpBean.prhso_nm_file !=null }">
mostraDados('<c:out value="${  cadPrhsogpBean.prhso_nm_file }" />');
</c:if>
</script>
