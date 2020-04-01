<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadSolctotBean");%>
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
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
aa=retSubSel('tabsvf').substring(0,1);
if (aa != '1') {
el('cadForm:solct_cd_solic').readOnly = true;
el('cadForm:solct_cd_solic').className = 'tbxr';
el('cadForm:solct_ab').readOnly = true;
el('cadForm:solct_ab').className = 'tbxr';
fcf('cadForm:solct_cd_solic')
} else {
fcf('cadForm:')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadSolctotBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='solctotcad';cadbeanx='cadSolctotBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadSolctotBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'solctotpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadSolctotBean.doSelecionar}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'solctotcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadSolctotBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadSolctotBean.canUpdate}" image="../imagens/btSave.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'solctotcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadSolctotBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadSolctotBean.canUpdate}" image="../imagens/btNew.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadSolctotBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadSolctotBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadSolctotBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}"  action="#{cadSolctotBean.doObter}"  onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'solctotcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Solct');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSolctRfm" tabindex="-1" immediate="true" rendered="#{cadSolctotBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'SolctRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadSolctotBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadSolctotBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadSolctotBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadSolctotBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadSolctotBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadSolctotBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadSolctotBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadSolctotBean.xmesg_st}" />
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
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadSolctotBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadSolctotBean.canUpdate}" action="#{cadSolctotBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="solct_cd" value="#{cadSolctotBean.solct_cd}"/>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_cd_solic" for="solct_cd_solic"  value="#{iimsg.Solctot_solct_cd_solic_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="300" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="solct_cd_solic" tabindex="1"  value="#{cadSolctotBean.solct_cd_solic}"  styleClass="tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','0','solct_cd_solic','Solic','solic_cd','solic_nm_fantasia',this.value);" size="27" maxlength="25" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="solct_cd_solic_xsel" tabindex="-1" immediate="true" onmousedown="pw('areaiotpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="solct_cd_solic_vc" flagType="val" flag="#{cadSolctotBean.solct_cd_solic_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="solct_cd_solic_desc" tabindex="-1" onfocus="this.blur()" value="#{cadSolctotBean.solct_cd_solic_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_ab" for="solct_ab"  value="#{iimsg.Solctot_solct_ab_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_ab" tabindex="2"  value="#{cadSolctotBean.solct_ab}" size="17" maxlength="15"  styleClass="tbx" onchange="this.value=this.value.toUpperCase();bv('','solct_ab','0',this.value);"/>
<ps:psGraphicImage id="solct_ab_vc" flagType="val" flag="#{cadSolctotBean.solct_ab_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_id_external" for="solct_id_external"  value="#{iimsg.Solctot_solct_id_external_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_id_external" tabindex="3"  value="#{cadSolctotBean.solct_id_external}" size="14" maxlength="12"  styleClass="tbx" onchange="bv('','solct_id_external','0',this.value);"/>
<ps:psGraphicImage id="solct_id_external_vc" flagType="val" flag="#{cadSolctotBean.solct_id_external_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_in_ot" for="solct_in_ot"  value="#{iimsg.Solctot_solct_in_ot_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="300"   >
<%-- Processing Codf 1--%>
<h:inputText id="solct_in_ot" onfocus="this.blur()" value="#{cadSolctotBean.solct_in_ot}" size="5" maxlength="5"  styleClass="tbxr"/>
<ps:psGraphicImage id="solct_in_ot_vc" flagType="val" flag="#{cadSolctotBean.solct_in_ot_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="solct_in_ot_desc" tabindex="-1" onfocus="this.blur()" value="#{cadSolctotBean.solct_in_ot_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_tp_acesso" for="solct_tp_acesso"  value="#{iimsg.Solctot_solct_tp_acesso_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="solct_tp_acesso" value="#{cadSolctotBean.solct_tp_acesso}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','solct_tp_acesso','0','TPFCP',this.value);;" size="7" maxlength="5" tabindex="5" />
<h:commandButton id="solct_tp_acesso_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPFCP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="solct_tp_acesso_vc" flagType="val" flag="#{cadSolctotBean.solct_tp_acesso_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="solct_tp_acesso_desc" tabindex="-1" onfocus="this.blur()" value="#{cadSolctotBean.solct_tp_acesso_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_tp_pfseg" for="solct_tp_pfseg"  value="#{iimsg.Solctot_solct_tp_pfseg_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="solct_tp_pfseg" value="#{cadSolctotBean.solct_tp_pfseg}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','solct_tp_pfseg','0','PFSOT',this.value);;" size="7" maxlength="5" tabindex="6" />
<h:commandButton id="solct_tp_pfseg_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PFSOT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="solct_tp_pfseg_vc" flagType="val" flag="#{cadSolctotBean.solct_tp_pfseg_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="solct_tp_pfseg_desc" tabindex="-1" onfocus="this.blur()" value="#{cadSolctotBean.solct_tp_pfseg_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_nm" for="solct_nm"  value="#{iimsg.Solctot_solct_nm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_nm" tabindex="7"  value="#{cadSolctotBean.solct_nm}" size="52" maxlength="50"  styleClass="tbx" onchange="this.value=this.value.toUpperCase();bv('','solct_nm','0',this.value);"/>
<ps:psGraphicImage id="solct_nm_vc" flagType="val" flag="#{cadSolctotBean.solct_nm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_nu_tel" for="solct_nu_tel"  value="#{iimsg.Solctot_solct_nu_tel_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_nu_tel" tabindex="8"  value="#{cadSolctotBean.solct_nu_tel}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','solct_nu_tel','0',this.value);"/>
<ps:psGraphicImage id="solct_nu_tel_vc" flagType="val" flag="#{cadSolctotBean.solct_nu_tel_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_nu_cellphone" for="solct_nu_cellphone"  value="#{iimsg.Solctot_solct_nu_cellphone_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_nu_cellphone" tabindex="9"  value="#{cadSolctotBean.solct_nu_cellphone}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','solct_nu_cellphone','0',this.value);"/>
<ps:psGraphicImage id="solct_nu_cellphone_vc" flagType="val" flag="#{cadSolctotBean.solct_nu_cellphone_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_cd_email" for="solct_cd_email"  value="#{iimsg.Solctot_solct_cd_email_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_cd_email" tabindex="10"  value="#{cadSolctotBean.solct_cd_email}" size="52" maxlength="50"  styleClass="tbx" onchange="bv('','solct_cd_email','0',this.value);"/>
<ps:psGraphicImage id="solct_cd_email_vc" flagType="val" flag="#{cadSolctotBean.solct_cd_email_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_cd_endr" for="solct_cd_endr"  value="#{iimsg.Solctot_solct_cd_endr_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="solct_cd_endr" tabindex="11"  value="#{cadSolctotBean.solct_cd_endr}"  cols="60" rows="4" styleClass="solct_cd_endr_" onchange="bv('','solct_cd_endr','0',this.value);"/>
<ps:psGraphicImage id="solct_cd_endr_vc" flagType="val" flag="#{cadSolctotBean.solct_cd_endr_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_solct_cd_cep" for="solct_cd_cep"  value="#{iimsg.Solctot_solct_cd_cep_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="solct_cd_cep" tabindex="12"  value="#{cadSolctotBean.solct_cd_cep}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','solct_cd_cep','0',this.value);"/>
<ps:psGraphicImage id="solct_cd_cep_vc" flagType="val" flag="#{cadSolctotBean.solct_cd_cep_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="solct_ds" value="#{cadSolctotBean.solct_ds}"/>
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
<iframe id="solct" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fSolctsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fSolctsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="areaiot" width="0" height="0" frameborder="0"> </iframe>
<iframe id="solic" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAreaiotsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAreaiotsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadSolctotBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadSolctotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_areaiot" action="#{cadAreaiotBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_areaiot" action="#{cadAreaiotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_areaiot" action="#{cadAreaiotBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_solctot" action="#{cadSolctotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solctot" action="#{cadSolctotBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
