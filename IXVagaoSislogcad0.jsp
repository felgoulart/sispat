<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadIXVagaoSislogBean");%>
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
el('cadForm:vgslg_aa').readOnly = true;
el('cadForm:vgslg_aa').className = 'tbxr';
el('cadForm:vgslg_mm').readOnly = true;
el('cadForm:vgslg_mm').className = 'tbxr';
el('cadForm:vgslg_nu_vagao').readOnly = true;
el('cadForm:vgslg_nu_vagao').className = 'tbxr';
fcf('cadForm:vgslg_cd_estado')
} else {
fcf('cadForm:vgslg_aa')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadIXVagaoSislogBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='ixvagaosislogcad';cadbeanx='cadIXVagaoSislogBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadIXVagaoSislogBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixvagaosislogpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXVagaoSislogBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixvagaosislogcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadIXVagaoSislogBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadIXVagaoSislogBean.canUpdate}" image="../imagens/btSave.gif"onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixvagaosislogcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadIXVagaoSislogBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadIXVagaoSislogBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadIXVagaoSislogBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadIXVagaoSislogBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadIXVagaoSislogBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadIXVagaoSislogBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixvagaosislogcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXVagaoSislog');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXVagaoSislogRfm" tabindex="-1" immediate="true" rendered="#{cadIXVagaoSislogBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'IXVagaoSislogRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadIXVagaoSislogBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXVagaoSislogBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadIXVagaoSislogBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadIXVagaoSislogBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadIXVagaoSislogBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadIXVagaoSislogBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadIXVagaoSislogBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadIXVagaoSislogBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadIXVagaoSislogBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadIXVagaoSislogBean.canUpdate}" action="#{cadIXVagaoSislogBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXVagaoSislog_vgslg_ct_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_aa" for="vgslg_aa"  value="#{iimsg.IXVagaoSislog_vgslg_aa_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="600" > <h:inputText id="vgslg_aa" tabindex="3"  value="#{cadIXVagaoSislogBean.vgslg_aa}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','vgslg_aa','0',this.value);"/>
<ps:psGraphicImage id="vgslg_aa_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_aa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_mm" for="vgslg_mm"  value="#{iimsg.IXVagaoSislog_vgslg_mm_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="700" > <h:inputText id="vgslg_mm" tabindex="4"  value="#{cadIXVagaoSislogBean.vgslg_mm}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','vgslg_mm','0',this.value);"/>
<ps:psGraphicImage id="vgslg_mm_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_mm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_nu_vagao" for="vgslg_nu_vagao"  value="#{iimsg.IXVagaoSislog_vgslg_nu_vagao_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="vgslg_nu_vagao" tabindex="5"  value="#{cadIXVagaoSislogBean.vgslg_nu_vagao}"  styleClass="txl pl5 tbx" size="10" maxlength="8" onchange="bv('','vgslg_nu_vagao','0',this.value);"/>
<ps:psGraphicImage id="vgslg_nu_vagao_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_nu_vagao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_tp_serie" for="vgslg_tp_serie"  value="#{iimsg.IXVagaoSislog_vgslg_tp_serie_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="vgslg_tp_serie" tabindex="6"  value="#{cadIXVagaoSislogBean.vgslg_tp_serie}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_tp_serie','0',this.value);"/>
<ps:psGraphicImage id="vgslg_tp_serie_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_tp_serie_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_estado" for="vgslg_cd_estado"  value="#{iimsg.IXVagaoSislog_vgslg_cd_estado_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="vgslg_cd_estado" tabindex="7"  value="#{cadIXVagaoSislogBean.vgslg_cd_estado}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_estado','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_estado_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_estado_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_condicao" for="vgslg_cd_condicao"  value="#{iimsg.IXVagaoSislog_vgslg_cd_condicao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="vgslg_cd_condicao" tabindex="8"  value="#{cadIXVagaoSislogBean.vgslg_cd_condicao}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_condicao','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_condicao_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_condicao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXVagaoSislog_vgslg_lc_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_local" for="vgslg_cd_local"  value="#{iimsg.IXVagaoSislog_vgslg_cd_local_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="vgslg_cd_local" tabindex="9"  value="#{cadIXVagaoSislogBean.vgslg_cd_local}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_local','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_local_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_local_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_nm_local" for="vgslg_nm_local"  value="#{iimsg.IXVagaoSislog_vgslg_nm_local_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="vgslg_nm_local" tabindex="10"  value="#{cadIXVagaoSislogBean.vgslg_nm_local}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_nm_local','0',this.value);"/>
<ps:psGraphicImage id="vgslg_nm_local_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_nm_local_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_tp_local" for="vgslg_tp_local"  value="#{iimsg.IXVagaoSislog_vgslg_tp_local_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="vgslg_tp_local" tabindex="11"  value="#{cadIXVagaoSislogBean.vgslg_tp_local}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_tp_local','0',this.value);"/>
<ps:psGraphicImage id="vgslg_tp_local_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_tp_local_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_localizacao" for="vgslg_cd_localizacao"  value="#{iimsg.IXVagaoSislog_vgslg_cd_localizacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="6" width="300"   >
<h:inputText id="vgslg_cd_localizacao" tabindex="12"  value="#{cadIXVagaoSislogBean.vgslg_cd_localizacao}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_localizacao','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_localizacao_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_localizacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_origem" for="vgslg_cd_origem"  value="#{iimsg.IXVagaoSislog_vgslg_cd_origem_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="vgslg_cd_origem" tabindex="13"  value="#{cadIXVagaoSislogBean.vgslg_cd_origem}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_origem','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_origem_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_origem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_nm_origem" for="vgslg_nm_origem"  value="#{iimsg.IXVagaoSislog_vgslg_nm_origem_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="vgslg_nm_origem" tabindex="14"  value="#{cadIXVagaoSislogBean.vgslg_nm_origem}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_nm_origem','0',this.value);"/>
<ps:psGraphicImage id="vgslg_nm_origem_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_nm_origem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_destino" for="vgslg_cd_destino"  value="#{iimsg.IXVagaoSislog_vgslg_cd_destino_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="vgslg_cd_destino" tabindex="15"  value="#{cadIXVagaoSislogBean.vgslg_cd_destino}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_destino','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_destino_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_destino_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_nm_destino" for="vgslg_nm_destino"  value="#{iimsg.IXVagaoSislog_vgslg_nm_destino_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="vgslg_nm_destino" tabindex="16"  value="#{cadIXVagaoSislogBean.vgslg_nm_destino}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_nm_destino','0',this.value);"/>
<ps:psGraphicImage id="vgslg_nm_destino_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_nm_destino_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_dh_alocacao" for="vgslg_dh_alocacao"  value="#{iimsg.IXVagaoSislog_vgslg_dh_alocacao_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="vgslg_dh_alocacao_str" tabindex="17"  value="#{cadIXVagaoSislogBean.vgslg_dh_alocacao_str}"  styleClass="txl pl5 tbDh" size="22" maxlength="20" onkeydown="formataDataHora('cadForm:vgslg_dh_alocacao_str', event);" onkeyup="SaltaCampo('cadForm:vgslg_dh_alocacao_str', 'cadForm:vgslg_cd_ult_trem', 14 , event);" onchange="validaDatas2(this);bv('','vgslg_dh_alocacao_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:vgslg_dh_alocacao_str', 'vgslg_dh_alocacaoCal', true);" style="cursor: hand"/>
<ps:psGraphicImage id="vgslg_dh_alocacao_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_dh_alocacao_vc}" styleClass="btp"/>
<div id="vgslg_dh_alocacaoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_vgslg_cd_ult_trem" for="vgslg_cd_ult_trem"  value="#{iimsg.IXVagaoSislog_vgslg_cd_ult_trem_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="vgslg_cd_ult_trem" tabindex="18"  value="#{cadIXVagaoSislogBean.vgslg_cd_ult_trem}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','vgslg_cd_ult_trem','0',this.value);"/>
<ps:psGraphicImage id="vgslg_cd_ult_trem_vc" flagType="val" flag="#{cadIXVagaoSislogBean.vgslg_cd_ult_trem_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_batch_id" for="batch_id"  value="#{iimsg.IXVagaoSislog_batch_id_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="6" width="400"   >
<h:inputText id="batch_id" tabindex="19"  value="#{cadIXVagaoSislogBean.batch_id}" size="17" maxlength="15"  styleClass="tbx" onchange="bv('','batch_id','0',this.value);"/>
<ps:psGraphicImage id="batch_id_vc" flagType="val" flag="#{cadIXVagaoSislogBean.batch_id_vc}" styleClass="btp"/>
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
<iframe id="ObxlsVgslg" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadIXVagaoSislogBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXVagaoSislogBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obxlsvgslg" action="#{cadObxlsVgslgBean.doSelecionar}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsVgslg" action="#{cadObxlsVgslgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsVgslg" action="#{cadObxlsVgslgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsVgslg" action="#{cadObxlsVgslgBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_ixvagaosislog" action="#{cadIXVagaoSislogBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixvagaosislog" action="#{cadIXVagaoSislogBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
