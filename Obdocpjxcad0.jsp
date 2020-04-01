<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObdocpjxBean");%>
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
editor_selector : "obdocpj_ds_rtfFontChoice",
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
el('cadForm:obdocpj_id').readOnly = true;
el('cadForm:obdocpj_id').className = 'tbxr';
fcf('cadForm:obdocpj_cl_type')
} else {
el('cadForm:obdocpj_id').readOnly = true;
el('cadForm:obdocpj_id').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadObdocpjxBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='obdocpjcad';cadbeanx='cadObdocpjxBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" enctype="multipart/form-data" >
<jsp:setProperty property="cadbeanx" name="cadObdocpjxBean" value="cadObdocpjxBean"/>
<h:inputHidden id="cadbeanx" value="#{cadObdocpjxBean.cadbeanx}"  />
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
<h:outputText value="#{cadObdocpjxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocpjxpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadObdocpjxBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocpjxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObdocpjxBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadObdocpjxBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocpjcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadObdocpjxBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadObdocpjxBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadObdocpjxBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadObdocpjxBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadObdocpjxBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadObdocpjxBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocpjcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obdocpj');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@ObdocRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObdocpjRfm" tabindex="-1" immediate="true" rendered="#{cadObdocpjBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ObdocpjRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadObdocpjxBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadObdocpjxBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadObdocpjxBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadObdocpjxBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadObdocpjxBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadObdocpjxBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadObdocpjxBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadObdocpjxBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadObdocpjxBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadObdocpjxBean.canUpdate}" action="#{cadObdocpjxBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="selection_list_var" value="#{cadObdocpjxBean.selection_list_var}"/>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="p_seltype" value="#{cadObdocpjxBean.p_seltype}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_id" for="obdocpj_id"  value="#{iimsg.Obdocpj_obdocpj_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obdocpj_id" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadObdocpjxBean.obdocpj_id}"  styleClass="tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<h:inputHidden id="obdocpj_sq" value="#{cadObdocpjxBean.obdocpj_sq}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_cl" value="#{cadObdocpjxBean.obdocpj_cl}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_cl_type" for="obdocpj_cl_type"  value="#{iimsg.Obdocpj_obdocpj_cl_type_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obdocpj_cl_type" onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_cl_type}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obdocpj_cl_type','0','TPCKL',this.value);;" size="7" maxlength="5" tabindex="3" />
<h:commandButton id="obdocpj_cl_type_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCKL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_cl_type_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_cl_type_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obdocpj_cl_type_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_cl_type_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_cl_typex" value="#{cadObdocpjxBean.obdocpj_cl_typex}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_tp" for="obdocpj_tp"  value="#{iimsg.Obdocpj_obdocpj_tp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obdocpj_tp" onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_tp}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obdocpj_tp','0','TPDCP',this.value);;" size="7" maxlength="5" tabindex="4" />
<h:commandButton id="obdocpj_tp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPDCP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_tp_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_tp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obdocpj_tp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_tp_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_cd_solct" for="obdocpj_cd_solct"  value="#{iimsg.Obdocpj_obdocpj_cd_solct_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obdocpj_cd_solct" tabindex="5"  onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_cd_solct}"  styleClass="tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','0','obdocpj_cd_solct','Solct','solct_cd','solct_ds',this.value);" size="32" maxlength="30" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="obdocpj_cd_solct_xsel" tabindex="-1" immediate="true" onmousedown="pw('obcntpjselpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_cd_solct_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_cd_solct_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="obdocpj_cd_solct_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_cd_solct_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_cd_destino" for="obdocpj_cd_destino"  value="#{iimsg.Obdocpj_obdocpj_cd_destino_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obdocpj_cd_destino" tabindex="6"  onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_cd_destino}"  styleClass="tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','0','obdocpj_cd_destino','Solct','solct_cd','solct_ds',this.value);" size="32" maxlength="30" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="obdocpj_cd_destino_xsel" tabindex="-1" immediate="true" onmousedown="pw('obcntpjselpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_cd_destino_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_cd_destino_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="obdocpj_cd_destino_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_cd_destino_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_st" for="obdocpj_st"  value="#{iimsg.Obdocpj_obdocpj_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obdocpj_st" onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_st}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obdocpj_st','0','STCKL',this.value);;" size="7" maxlength="5" tabindex="7" />
<h:commandButton id="obdocpj_st_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STCKL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_st_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obdocpj_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_st_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_dt_envio" for="obdocpj_dt_envio"  value="#{iimsg.Obdocpj_obdocpj_dt_envio_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="obdocpj_dt_envio_str" tabindex="8"  value="#{cadObdocpjxBean.obdocpj_dt_envio_str}"  styleClass="tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:obdocpj_dt_envio_str', event);" onkeyup="SaltaCampo('cadForm:obdocpj_dt_envio_str', 'cadForm:obdocpj_dt_recepcao', 8 , event);" onchange="validaDatas2(this);bv('','obdocpj_dt_envio_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:obdocpj_dt_envio_str', 'obdocpj_dt_envioCal');" style="cursor: hand"/>
<ps:psGraphicImage id="obdocpj_dt_envio_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_dt_envio_vc}" styleClass="btp"/>
<div id="obdocpj_dt_envioCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_dt_recepcao" for="obdocpj_dt_recepcao"  value="#{iimsg.Obdocpj_obdocpj_dt_recepcao_tt}"/>  </td> <%-- <top> --%>
<%-- DateTime --%>
<td  width="12" > <h:inputText id="obdocpj_dt_recepcao" tabindex="-1"  onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_dt_recepcao_str}" onchange="uf();" size="12" maxlength="12"  styleClass="tbDhr" onkeydown="formataDataHora('cadForm:obdocpj_dt_recepcao', event);" onkeyup="SaltaCampo('cadForm:obdocpj_dt_recepcao', 'cadForm:obdocpj_cd_file', 14 , event);"/>
<ps:psGraphicImage id="obdocpj_dt_recepcao_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_dt_recepcao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_cd_file" for="obdocpj_cd_file"  value="#{iimsg.Obdocpj_obdocpj_cd_file_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obdocpj_cd_file" onclick="clf(this);" value="#{cadObdocpjxBean.obdocpj_cd_file}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obdocpj_cd_file','0','DOCFD',this.value);;" size="12" maxlength="10" tabindex="10" />
<h:commandButton id="obdocpj_cd_file_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'DOCFD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obdocpj_cd_file_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_cd_file_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obdocpj_cd_file_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_cd_file_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_tp_cfpjtp" value="#{cadObdocpjxBean.obdocpj_tp_cfpjtp}"/>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_nm" value="#{cadObdocpjxBean.obdocpj_nm}"/>
<tr>   <%-- <tr open> vvv --%>
<td    width="140" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.Obdocpj_obdocpj_ds_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="obdocpj_ds" tabindex="11"  value="#{cadObdocpjxBean.obdocpj_ds}" cols="80" rows="4" styleClass="obdocpj_ds_rtfFontChoice" onchange="bv('','obdocpj_ds','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_dt" for="obdocpj_dt"  value="#{iimsg.Obdocpj_obdocpj_dt_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="obdocpj_dt" tabindex="-1"  onfocus="this.blur()" value="#{cadObdocpjxBean.obdocpj_dt_str}" size="8" maxlength="8"  styleClass="tbDtr" />
<ps:psGraphicImage id="obdocpj_dt_vc" flagType="val" flag="#{cadObdocpjxBean.obdocpj_dt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_ct" value="#{cadObdocpjxBean.obdocpj_ct}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_uploadSelection" for="uploadSelection"  value="#{iimsg.Obdocpj_uploadSelection_tt}"/>  </td> <%-- <top> --%>
<%-- prop Selection --%>
<td width="600"/>
<ps:psInputFile id="inputFile"  value="#{cadObdocpjxBean.file}" styleClass="tb400r" /> ></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obdocpj_nm_file" for="obdocpj_nm_file"  value="#{iimsg.Obdocpj_obdocpj_nm_file_tt}"/>  </td> <%-- <top> --%>
<%-- prop Non Key readOnly Type--%>
<td  width="600" > <h:inputText id="obdocpj_nm_file" tabindex="-1"  readonly="true" value="#{cadObdocpjxBean.obdocpj_nm_file}"  styleClass="tbxr" size="100" maxlength="100"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_nm_filex" value="#{cadObdocpjxBean.obdocpj_nm_filex}"/>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obdocpj_in_ultimo" value="#{cadObdocpjxBean.obdocpj_in_ultimo}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObdocpjxBean.canUpload}" id="lbl_upload" for="upload"  value="#{iimsg.Obdocpj_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileUploadOnly --%>
<td width="600"/>
<h:commandButton id="doUpload" rendered="#{cadObdocpjxBean.canUpload}" action="#{cadObdocpjxBean.doFileUpload}" image="../imagens/fileUpload3.gif" /></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  rendered="#{cadObdocpjxBean.canDownload}" id="lbl_download" for="download"  value="#{iimsg.Obdocpj_download_ta}"/>  </td> <%-- <top> --%>
<%-- prop buttonDownload --%>
<td width="600" />
<h:commandButton id="doSownload" rendered="#{cadObdocpjxBean.canDownload}" action="#{cadObdocpjxBean.downloadFile}" image="../imagens/fileDownload3.gif" onmousedown="wtran=document.getElementById('cadForm:obdocpj_nm_file').value;el('fiiSaveValue').src = 'iiSaveValue.jsp?tipo='+wtran;" /></td>
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
<iframe id="pjaus" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fPjaussfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpjsel" width="0" height="0" frameborder="0"> </iframe>
<iframe id="solct" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fObcntpjselsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fObcntpjselsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpjsel" width="0" height="0" frameborder="0"> </iframe>
<iframe id="solct" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fObcntpjselsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fObcntpjselsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadObdocpjxBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObdocpjxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_obcntpjsel" action="#{cadObcntpjselBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_obcntpjsel" action="#{cadObcntpjselBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obcntpjsel" action="#{cadObcntpjselBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_obdocpj" action="#{cadObdocpjxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdocpj" action="#{cadObdocpjxBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
<script>
// loadFieldsFromList  ------------------------------------
function mostraDados( obdocpj_id, obdocpj_cl_type, obdocpj_nm, obdocpj_ds, obdocpj_dt){
document.getElementById( "cadForm:obdocpj_id").value = obdocpj_id;
document.getElementById( "cadForm:obdocpj_sq").value = obdocpj_sq;
document.getElementById( "cadForm:obdocpj_ds").value = obdocpj_ds;
document.getElementById( "cadForm:lbl_obdocpj_nm_file").value = obdocpj_nm_file;
document.getElementById( "cadForm:obdocpj_nm_file").value = obdocpj_nm_file;

document.getElementById( "img_grande").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obdocpj_nm_file +'&tipo=imagem';
document.getElementById( "img_grande").style.display = 'block';
}
<c:if test="${  cadObdocpjxBean.obdocpj_nm_file !=null }">
mostraDados('<c:out value="${  cadObdocpjxBean.obdocpj_id }" />','<c:out value="${  cadObdocpjxBean.obdocpj_cl_type }" />','<c:out value="${  cadObdocpjxBean.obdocpj_nm }" />','<c:out value="${  cadObdocpjxBean.obdocpj_ds }" />','<c:out value="${  cadObdocpjxBean.obdocpj_dt }" />');
</c:if>
</script>
