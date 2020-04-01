<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadIXTremFormadoBean");%>
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
el('cadForm:trfmd_aa').readOnly = true;
el('cadForm:trfmd_aa').className = 'tbxr';
el('cadForm:trfmd_mm').readOnly = true;
el('cadForm:trfmd_mm').className = 'tbxr';
el('cadForm:trfmd_cd_patio_orig').readOnly = true;
el('cadForm:trfmd_cd_patio_orig').className = 'tbxr';
el('cadForm:trfmd_cd_patio_dest').readOnly = true;
el('cadForm:trfmd_cd_patio_dest').className = 'tbxr';
el('cadForm:trfmd_px_trem').readOnly = true;
el('cadForm:trfmd_px_trem').className = 'tbxr';
fcf('cadForm:trfmd_qt_trens_formados')
} else {
fcf('cadForm:trfmd_aa')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadIXTremFormadoBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='ixtremformadocad';cadbeanx='cadIXTremFormadoBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadIXTremFormadoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixtremformadopsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXTremFormadoBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixtremformadocad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadIXTremFormadoBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadIXTremFormadoBean.canUpdate}" image="../imagens/btSave.gif"onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixtremformadocad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadIXTremFormadoBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadIXTremFormadoBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadIXTremFormadoBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadIXTremFormadoBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadIXTremFormadoBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadIXTremFormadoBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixtremformadocad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXTremFormado');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXTremFormadoRfm" tabindex="-1" immediate="true" rendered="#{cadIXTremFormadoBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'IXTremFormadoRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadIXTremFormadoBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXTremFormadoBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadIXTremFormadoBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadIXTremFormadoBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadIXTremFormadoBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadIXTremFormadoBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadIXTremFormadoBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadIXTremFormadoBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadIXTremFormadoBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadIXTremFormadoBean.canUpdate}" action="#{cadIXTremFormadoBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXTremFormado_trfmd_ds_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_aa" for="trfmd_aa"  value="#{iimsg.IXTremFormado_trfmd_aa_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="trfmd_aa" tabindex="3"  value="#{cadIXTremFormadoBean.trfmd_aa}"  styleClass="txl pl5 tbx" size="6" maxlength="4" onchange="bv('','trfmd_aa','0',this.value);"/>
<ps:psGraphicImage id="trfmd_aa_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_aa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_mm" for="trfmd_mm"  value="#{iimsg.IXTremFormado_trfmd_mm_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="1300" > <h:inputText id="trfmd_mm" tabindex="4"  value="#{cadIXTremFormadoBean.trfmd_mm}"  styleClass="txl pl5 tbx" size="6" maxlength="4" onchange="bv('','trfmd_mm','0',this.value);"/>
<ps:psGraphicImage id="trfmd_mm_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_mm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_cd_patio_orig" for="trfmd_cd_patio_orig"  value="#{iimsg.IXTremFormado_trfmd_cd_patio_orig_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="trfmd_cd_patio_orig" tabindex="5"  value="#{cadIXTremFormadoBean.trfmd_cd_patio_orig}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_cd_patio_orig','0',this.value);"/>
<ps:psGraphicImage id="trfmd_cd_patio_orig_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_cd_patio_orig_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_cd_patio_dest" for="trfmd_cd_patio_dest"  value="#{iimsg.IXTremFormado_trfmd_cd_patio_dest_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="1300" > <h:inputText id="trfmd_cd_patio_dest" tabindex="6"  value="#{cadIXTremFormadoBean.trfmd_cd_patio_dest}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_cd_patio_dest','0',this.value);"/>
<ps:psGraphicImage id="trfmd_cd_patio_dest_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_cd_patio_dest_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_px_trem" for="trfmd_px_trem"  value="#{iimsg.IXTremFormado_trfmd_px_trem_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="trfmd_px_trem" tabindex="7"  value="#{cadIXTremFormadoBean.trfmd_px_trem}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_px_trem','0',this.value);"/>
<ps:psGraphicImage id="trfmd_px_trem_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_px_trem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_tp_trem" for="trfmd_tp_trem"  value="#{iimsg.IXTremFormado_trfmd_tp_trem_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1300"   >
<h:inputText id="trfmd_tp_trem" tabindex="8"  value="#{cadIXTremFormadoBean.trfmd_tp_trem}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','trfmd_tp_trem','0',this.value);"/>
<ps:psGraphicImage id="trfmd_tp_trem_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_tp_trem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_qt_trens_formados" for="trfmd_qt_trens_formados"  value="#{iimsg.IXTremFormado_trfmd_qt_trens_formados_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="trfmd_qt_trens_formados" tabindex="9"  value="#{cadIXTremFormadoBean.trfmd_qt_trens_formados_str}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','trfmd_qt_trens_formados','0',valDec(this.value));"/>
<ps:psGraphicImage id="trfmd_qt_trens_formados_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_qt_trens_formados_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_dc_percorrida" for="trfmd_dc_percorrida"  value="#{iimsg.IXTremFormado_trfmd_dc_percorrida_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="trfmd_dc_percorrida" tabindex="10"  value="#{cadIXTremFormadoBean.trfmd_dc_percorrida_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','trfmd_dc_percorrida','0',valDec(this.value));"/>
<ps:psGraphicImage id="trfmd_dc_percorrida_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_dc_percorrida_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_tp_carga" for="trfmd_tp_carga"  value="#{iimsg.IXTremFormado_trfmd_tp_carga_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmd_tp_carga" tabindex="11"  value="#{cadIXTremFormadoBean.trfmd_tp_carga}" size="4" maxlength="2"  styleClass="txl pl5 tbx" onchange="bv('','trfmd_tp_carga','0',this.value);"/>
<ps:psGraphicImage id="trfmd_tp_carga_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_tp_carga_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_tp_passagwiro" for="trfmd_tp_passagwiro"  value="#{iimsg.IXTremFormado_trfmd_tp_passagwiro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="trfmd_tp_passagwiro" tabindex="12"  value="#{cadIXTremFormadoBean.trfmd_tp_passagwiro}" size="4" maxlength="2"  styleClass="txl pl5 tbx" onchange="bv('','trfmd_tp_passagwiro','0',this.value);"/>
<ps:psGraphicImage id="trfmd_tp_passagwiro_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_tp_passagwiro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_tp_serv" for="trfmd_tp_serv"  value="#{iimsg.IXTremFormado_trfmd_tp_serv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmd_tp_serv" tabindex="13"  value="#{cadIXTremFormadoBean.trfmd_tp_serv}" size="4" maxlength="2"  styleClass="txl pl5 tbx" onchange="bv('','trfmd_tp_serv','0',this.value);"/>
<ps:psGraphicImage id="trfmd_tp_serv_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_tp_serv_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_qt_locomotivas" for="trfmd_qt_locomotivas"  value="#{iimsg.IXTremFormado_trfmd_qt_locomotivas_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="trfmd_qt_locomotivas" tabindex="14"  value="#{cadIXTremFormadoBean.trfmd_qt_locomotivas}"  styleClass="txr pr5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_qt_locomotivas','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_qt_locomotivas_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_qt_locomotivas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_qt_vags_carregados" for="trfmd_qt_vags_carregados"  value="#{iimsg.IXTremFormado_trfmd_qt_vags_carregados_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="trfmd_qt_vags_carregados" tabindex="15"  value="#{cadIXTremFormadoBean.trfmd_qt_vags_carregados}"  styleClass="txr pr5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_qt_vags_carregados','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_qt_vags_carregados_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_qt_vags_carregados_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_qt_vags_vazios" for="trfmd_qt_vags_vazios"  value="#{iimsg.IXTremFormado_trfmd_qt_vags_vazios_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="trfmd_qt_vags_vazios" tabindex="16"  value="#{cadIXTremFormadoBean.trfmd_qt_vags_vazios}"  styleClass="txr pr5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_qt_vags_vazios','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_qt_vags_vazios_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_qt_vags_vazios_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_vl_compr_trem" for="trfmd_vl_compr_trem"  value="#{iimsg.IXTremFormado_trfmd_vl_compr_trem_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="trfmd_vl_compr_trem" tabindex="17"  value="#{cadIXTremFormadoBean.trfmd_vl_compr_trem}"  styleClass="txr pr5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_vl_compr_trem','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_vl_compr_trem_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_vl_compr_trem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_md_tkb" for="trfmd_md_tkb"  value="#{iimsg.IXTremFormado_trfmd_md_tkb_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="trfmd_md_tkb" tabindex="18"  value="#{cadIXTremFormadoBean.trfmd_md_tkb}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_md_tkb','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_md_tkb_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_md_tkb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_md_tku" for="trfmd_md_tku"  value="#{iimsg.IXTremFormado_trfmd_md_tku_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="400"  > <h:inputText id="trfmd_md_tku" tabindex="19"  value="#{cadIXTremFormadoBean.trfmd_md_tku}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_md_tku','0',valNum(this.value));"/>
<ps:psGraphicImage id="trfmd_md_tku_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_md_tku_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmd_tm_percurso" for="trfmd_tm_percurso"  value="#{iimsg.IXTremFormado_trfmd_tm_percurso_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="trfmd_tm_percurso" tabindex="20"  value="#{cadIXTremFormadoBean.trfmd_tm_percurso_str}"  styleClass="txr pr5 tbx" size="7" maxlength="5" onchange="bv('','trfmd_tm_percurso','0',valDec(this.value));"/>
<ps:psGraphicImage id="trfmd_tm_percurso_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmd_tm_percurso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria1" for="trfmm_cd_mercadoria1"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria1_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="trfmm_cd_mercadoria1" tabindex="21"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria1}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria1','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria1_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria1_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria2" for="trfmm_cd_mercadoria2"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria2_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria2" tabindex="22"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria2}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria2','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria2_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria2_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria3" for="trfmm_cd_mercadoria3"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria3_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria3" tabindex="23"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria3}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria3','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria3_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria3_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria4" for="trfmm_cd_mercadoria4"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria4_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="trfmm_cd_mercadoria4" tabindex="24"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria4}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria4','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria4_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria4_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria5" for="trfmm_cd_mercadoria5"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria5_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria5" tabindex="25"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria5}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria5','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria5_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria5_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria6" for="trfmm_cd_mercadoria6"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria6_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria6" tabindex="26"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria6}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria6','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria6_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria6_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria7" for="trfmm_cd_mercadoria7"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria7_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="trfmm_cd_mercadoria7" tabindex="27"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria7}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria7','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria7_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria7_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria8" for="trfmm_cd_mercadoria8"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria8_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria8" tabindex="28"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria8}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria8','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria8_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria8_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria9" for="trfmm_cd_mercadoria9"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria9_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria9" tabindex="29"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria9}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','trfmm_cd_mercadoria9','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria9_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria9_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trfmm_cd_mercadoria10" for="trfmm_cd_mercadoria10"  value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria10_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="trfmm_cd_mercadoria10" tabindex="30"  value="#{cadIXTremFormadoBean.trfmm_cd_mercadoria10}" size="5" maxlength="3"  styleClass="tbx" onchange="bv('','trfmm_cd_mercadoria10','0',this.value);"/>
<ps:psGraphicImage id="trfmm_cd_mercadoria10_vc" flagType="val" flag="#{cadIXTremFormadoBean.trfmm_cd_mercadoria10_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_batch_id" for="batch_id"  value="#{iimsg.IXTremFormado_batch_id_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="6" width="400"   >
<h:inputText id="batch_id" tabindex="31"  value="#{cadIXTremFormadoBean.batch_id}" size="17" maxlength="15"  styleClass="tbx" onchange="bv('','batch_id','0',this.value);"/>
<ps:psGraphicImage id="batch_id_vc" flagType="val" flag="#{cadIXTremFormadoBean.batch_id_vc}" styleClass="btp"/>
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
<iframe id="ObxlsTrfrm" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadIXTremFormadoBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXTremFormadoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obxlstrfrm" action="#{cadObxlsTrfrmBean.doSelecionar}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsTrfrm" action="#{cadObxlsTrfrmBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsTrfrm" action="#{cadObxlsTrfrmBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsTrfrm" action="#{cadObxlsTrfrmBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_ixtremformado" action="#{cadIXTremFormadoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixtremformado" action="#{cadIXTremFormadoBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
