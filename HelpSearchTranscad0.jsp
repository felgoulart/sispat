<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadHelpSearchTransBean");%>
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
<script src="../tinymce/jscripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------
<!-- mce rtfFull -->
tinyMCE.init({
mode : "textareas",
theme : "advanced",
editor_selector : "help_ds_rtfFull",
language : "",
plugins : "autosave,inlinepopups,safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true,
dialog_type : "modal",
save_onsavecallback : "testUpdate",
plugin_insertdate_dateFormat : "%d/%m/%Y",
plugin_insertdate_timeFormat : "%H:%M:%S",
noneditable_leave_contenteditable : true
});
function testUpdate() {
document.getElementById('cadForm:aUpdate').onclick();
upflag=0;
}

function loadPage(number) {
lpCaller();
fcf('cadForm:help_cd');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleHelp(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadHelpSearchTransBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='helpsearchtranscad';cadbeanx='cadHelpSearchTransBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<%@include file="projHeaderHlp.jsp"%>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbc96" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadHelpSearchTransBean.trans_tt}"/>
<h:outputText value=":"/>
<h:outputText value="#{cadHelpSearchTransBean.help_nm}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeHelp/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" title="#{iimsg.button_help_repository}" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<ps:psCommandLink id="aPrint" styleClass="btp" ativo="../imagens/btPrinter.gif" title="#{iimsg.button_printScreen_tt}"  onmousedown="window.print()">
</ps:psCommandLink>
<ps:psCommandLink id="aClose" styleClass="btp"  ativo="../imagens/btClose.gif" onmousedown="msgwinclose()" title="#{iimsg.botao_close}">
</ps:psCommandLink>
<h:inputHidden id="tabsvf" value="#{cadHelpSearchTransBean.tabsvf}" />
<h:inputHidden id="tabsvf_in" value="#{cadHelpSearchTransBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadHelpSearchTransBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadHelpSearchTransBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadHelpSearchTransBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadHelpSearchTransBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadHelpSearchTransBean.xmesg_st}" />
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
<table   >  <%-- <mesg frame open> --%>
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadHelpSearchTransBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadHelpSearchTransBean.canUpdate}" action="#{cadHelpSearchTransBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="60" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_help_cd" for="help_cd"  value="#{iimsg.HelpSearchTrans_help_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="100" > <h:inputText id="help_cd" tabindex="1"  value="#{cadHelpSearchTransBean.help_cd}"  styleClass="txl pl5 tbx" size="22" maxlength="20" onchange="bv('','help_cd','0',this.value);"/>
<ps:psGraphicImage id="help_cd_vc" flagType="val" flag="#{cadHelpSearchTransBean.help_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="150" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_help_lg" for="help_lg"  value="#{iimsg.HelpSearchTrans_help_lg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="100"   >
<%-- Processing Codf 1--%>
<h:inputText  id="help_lg" value="#{cadHelpSearchTransBean.help_lg}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','help_lg','0','GNLNG',this.value);" size="7" maxlength="5" tabindex="2" />
<h:commandButton id="help_lg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GNLNG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="help_lg_vc" flagType="val" flag="#{cadHelpSearchTransBean.help_lg_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="60" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_help_id_trans" for="help_id_trans"  value="#{iimsg.HelpSearchTrans_help_id_trans_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="100" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="help_id_trans" tabindex="3"  onclick="clf(this);" value="#{cadHelpSearchTransBean.help_id_trans}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','help_id_trans','Trans','trans_id','trans_nm',this.value);" size="14" maxlength="12" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="help_id_trans_xsel" tabindex="-1" immediate="true" onmousedown="pw('transpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="help_id_trans_vc" flagType="val" flag="#{cadHelpSearchTransBean.help_id_trans_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="help_id_trans_desc" tabindex="-1" onfocus="this.blur()" value="#{cadHelpSearchTransBean.help_id_trans_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="150" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_help_nm" for="help_nm"  value="#{iimsg.HelpSearchTrans_help_nm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="6"   >
<h:inputText id="help_nm" tabindex="4"  value="#{cadHelpSearchTransBean.help_nm}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','help_nm','0',this.value);"/>
<ps:psGraphicImage id="help_nm_vc" flagType="val" flag="#{cadHelpSearchTransBean.help_nm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="help_ds" tabindex="5"  value="#{cadHelpSearchTransBean.help_ds}" cols="1" rows="1" styleClass="help_ds_rtfFull" onchange="bv('','help_ds','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- middle implicit frame close  777 --%>
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
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fwbrlTrainDelayCalc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="wbrlTrainOprDelay" width="0" height="0" frameborder="0"> </iframe>
<iframe id="trans" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Help" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadHelpSearchTransBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelpSearchTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_Help" action="#{cadHelpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_Help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_Help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_helpsearchtrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpsearchtrans" action="#{cadHelpSearchTransBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
