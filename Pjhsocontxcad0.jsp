<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjhsocontxBean");%>
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
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:pjhso_cd_para1')
} else {
el('cadForm:pjhso_id_pjaus').readOnly = true;
el('cadForm:pjhso_id_pjaus').className = 'tbxr';
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadPjhsocontxBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='pjhsocontcad';cadbeanx='cadPjhsocontxBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadPjhsocontxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontxpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjhsocontxBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadPjhsocontxBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadPjhsocontxBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadPjhsocontxBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadPjhsocontxBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadPjhsocontxBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadPjhsocontxBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadPjhsocontxBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadPjhsocontxBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsocontcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjhsocontRfm" tabindex="-1" immediate="true" rendered="#{cadPjhsocontBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'PjhsocontRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadPjhsocontxBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjhsocontxBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadPjhsocontxBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadPjhsocontxBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadPjhsocontxBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadPjhsocontxBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadPjhsocontxBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadPjhsocontxBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadPjhsocontxBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjhsocontxBean.canUpdate}" action="#{cadPjhsocontxBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Pjhsocont_pjhso_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_id_pjaus" for="pjhso_id_pjaus"  value="#{iimsg.Pjhsocont_pjhso_id_pjaus_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="600" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjhso_id_pjaus" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadPjhsocontxBean.pjhso_id_pjaus}"  styleClass="tbxr" onkeydown="keypress=1;" size="27" maxlength="27" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_sq" for="pjhso_sq"  value="#{iimsg.Pjhsocont_pjhso_sq_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk zzz --%>
<td  width="0" > <h:inputText id="pjhso_sq" tabindex="-1"  readonly="true" value="#{cadPjhsocontxBean.pjhso_sq}" styleClass="tbxr" size="15" maxlength="15" onchange="bv('','pjhso_sq','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- middle implicit frame close  777 --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.Pjhsocont_pjhso_ct_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para1" for="pjhso_cd_para1"  value="#{iimsg.Pjhsocont_pjhso_cd_para1_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="pjhso_cd_para1" tabindex="1"  value="#{cadPjhsocontxBean.pjhso_cd_para1}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para1','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para1_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para1_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para1_desc" for="pjhso_cd_para1_desc"  value="#{iimsg.Pjhsocont_pjhso_cd_para1_desc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjhso_cd_para1_desc" tabindex="2"  value="#{cadPjhsocontxBean.pjhso_cd_para1_desc}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para1_desc','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para1_desc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para1_desc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para1_selc" for="pjhso_cd_para1_selc"  value="#{iimsg.Pjhsocont_pjhso_cd_para1_selc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="250"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para1_selc_bol" value="#{cadPjhsocontxBean.pjhso_cd_para1_selc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para1_selc" tabindex="3"  value="#{cadPjhsocontxBean.pjhso_cd_para1_selc_bol}" onclick="chkBoolean(this, 'cadForm:pjhso_cd_para1_selc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para1_selc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para1_selc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para2" for="pjhso_cd_para2"  value="#{iimsg.Pjhsocont_pjhso_cd_para2_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="pjhso_cd_para2" tabindex="4"  value="#{cadPjhsocontxBean.pjhso_cd_para2}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para2','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para2_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para2_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para2_desc" for="pjhso_cd_para2_desc"  value="#{iimsg.Pjhsocont_pjhso_cd_para2_desc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjhso_cd_para2_desc" tabindex="5"  value="#{cadPjhsocontxBean.pjhso_cd_para2_desc}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para2_desc','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para2_desc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para2_desc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para2_selc" for="pjhso_cd_para2_selc"  value="#{iimsg.Pjhsocont_pjhso_cd_para2_selc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="250"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para2_selc_bol" value="#{cadPjhsocontxBean.pjhso_cd_para2_selc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para2_selc" tabindex="6"  value="#{cadPjhsocontxBean.pjhso_cd_para2_selc_bol}" onclick="chkBoolean(this, 'cadForm:pjhso_cd_para2_selc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para2_selc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para2_selc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para3" for="pjhso_cd_para3"  value="#{iimsg.Pjhsocont_pjhso_cd_para3_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="pjhso_cd_para3" tabindex="7"  value="#{cadPjhsocontxBean.pjhso_cd_para3}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para3','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para3_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para3_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para3_desc" for="pjhso_cd_para3_desc"  value="#{iimsg.Pjhsocont_pjhso_cd_para3_desc_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="pjhso_cd_para3_desc" tabindex="8"  value="#{cadPjhsocontxBean.pjhso_cd_para3_desc}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjhso_cd_para3_desc','0',this.value);"/>
<ps:psGraphicImage id="pjhso_cd_para3_desc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para3_desc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjhso_cd_para3_selc" for="pjhso_cd_para3_selc"  value="#{iimsg.Pjhsocont_pjhso_cd_para3_selc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="250"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="pjhso_cd_para3_selc_bol" value="#{cadPjhsocontxBean.pjhso_cd_para3_selc}"/>
<h:selectBooleanCheckbox id="pjhso_cd_para3_selc" tabindex="9"  value="#{cadPjhsocontxBean.pjhso_cd_para3_selc_bol}" onclick="chkBoolean(this, 'cadForm:pjhso_cd_para3_selc_bol');"/>
<ps:psGraphicImage id="pjhso_cd_para3_selc_vc" flagType="val" flag="#{cadPjhsocontxBean.pjhso_cd_para3_selc_vc}" styleClass="btp"/>
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
<h:commandLink id="xsel_vali" action="#{cadPjhsocontxBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjhsocontxBean.doObternull}" immediate="true"/>
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
<h:commandLink id="xsel_pjhsocont" action="#{cadPjhsocontxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjhsocont" action="#{cadPjhsocontxBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
