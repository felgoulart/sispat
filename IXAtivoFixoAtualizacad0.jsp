<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadIXAtivoFixoAtualizaBean");%>
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
el('cadForm:atvfx_cd').readOnly = true;
el('cadForm:atvfx_cd').className = 'tbxr';
fcf('cadForm:atvfx_cd_plaqueta')
} else {
fcf('cadForm:atvfx_cd')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadIXAtivoFixoAtualizaBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='ixativofixoatualizacad';cadbeanx='cadIXAtivoFixoAtualizaBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadIXAtivoFixoAtualizaBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixativofixoatualizapsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXAtivoFixoAtualizaBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixativofixoatualizacad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadIXAtivoFixoAtualizaBean.doReturnMenu}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadIXAtivoFixoAtualizaBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixativofixoatualizacad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadIXAtivoFixoAtualizaBean.doUpdate}">
<f:param name="cadbeanx" value="cadIXAtivoFixoAtualizaBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadIXAtivoFixoAtualizaBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadIXAtivoFixoAtualizaBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadIXAtivoFixoAtualizaBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadIXAtivoFixoAtualizaBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadIXAtivoFixoAtualizaBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixativofixoatualizacad'+'&ufmv='+stx">
<f:param name="tipo" value="ixativofixoatualizacad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoAtualiza');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXAtivoFixoAtualizaRfm" tabindex="-1" immediate="true" rendered="#{cadIXAtivoFixoAtualizaBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'IXAtivoFixoAtualizaRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadIXAtivoFixoAtualizaBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXAtivoFixoAtualizaBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadIXAtivoFixoAtualizaBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadIXAtivoFixoAtualizaBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadIXAtivoFixoAtualizaBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadIXAtivoFixoAtualizaBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadIXAtivoFixoAtualizaBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadIXAtivoFixoAtualizaBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadIXAtivoFixoAtualizaBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadIXAtivoFixoAtualizaBean.canUpdate}" action="#{cadIXAtivoFixoAtualizaBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"    width="10%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="batch_id" value="#{cadIXAtivoFixoAtualizaBean.batch_id}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd" for="atvfx_cd"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="700" > <h:inputText id="atvfx_cd" tabindex="3"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd}"  styleClass="txl pl5 tbx" size="12" maxlength="10" onchange="bv('','atvfx_cd','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_plaqueta" for="atvfx_cd_plaqueta"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_plaqueta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_plaqueta" tabindex="4"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_plaqueta}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_plaqueta','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_plaqueta_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_plaqueta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_pai" for="atvfx_cd_pai"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_pai_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_pai" tabindex="5"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_pai}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_pai','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_pai_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_pai_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_invty_ultm" for="atvfx_cd_invty_ultm"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_invty_ultm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="atvfx_cd_invty_ultm" tabindex="6"  onclick="clf(this);" value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_invty_ultm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','atvfx_cd_invty_ultm','Invty','invty_cd','invty_nm',this.value);" size="7" maxlength="5" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="atvfx_cd_invty_ultm_xsel" tabindex="-1" immediate="true" onmousedown="pw('invtypsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="atvfx_cd_invty_ultm_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_invty_ultm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="atvfx_cd_invty_ultm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_invty_ultm_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_tp_cfasttp" for="atvfx_tp_cfasttp"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_tp_cfasttp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_tp_cfasttp" tabindex="7"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_tp_cfasttp}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_tp_cfasttp','0',this.value);"/>
<ps:psGraphicImage id="atvfx_tp_cfasttp_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_tp_cfasttp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_tp_propriedade" for="atvfx_tp_propriedade"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_tp_propriedade_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_tp_propriedade" tabindex="8"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_tp_propriedade}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_tp_propriedade','0',this.value);"/>
<ps:psGraphicImage id="atvfx_tp_propriedade_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_tp_propriedade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_dt_criacao" for="atvfx_dt_criacao"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_dt_criacao_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="700" > <h:inputText id="atvfx_dt_criacao" tabindex="9"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_criacao_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="atvfx_dt_criacao_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_criacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_dt_ult_atualizacao" for="atvfx_dt_ult_atualizacao"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_dt_ult_atualizacao_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="atvfx_dt_ult_atualizacao" tabindex="10"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_ult_atualizacao_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="atvfx_dt_ult_atualizacao_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_ult_atualizacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_dt_baixa" for="atvfx_dt_baixa"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_dt_baixa_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="atvfx_dt_baixa" tabindex="11"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_baixa_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="atvfx_dt_baixa_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_dt_baixa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_nm_proprietario" for="atvfx_nm_proprietario"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_nm_proprietario_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_nm_proprietario" tabindex="12"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_nm_proprietario}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_nm_proprietario','0',this.value);"/>
<ps:psGraphicImage id="atvfx_nm_proprietario_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_nm_proprietario_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_centro_custo" for="atvfx_cd_centro_custo"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_centro_custo_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_centro_custo" tabindex="13"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_centro_custo}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_centro_custo','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_centro_custo_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_centro_custo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_st" for="atvfx_st"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_st_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_st" tabindex="14"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_st}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_st','0',this.value);"/>
<ps:psGraphicImage id="atvfx_st_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_st_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_category" for="atvfx_cd_category"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_category_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_cd_category" tabindex="15"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_category}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_category','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_category_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_category_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_ctg_sub_grp" for="atvfx_cd_ctg_sub_grp"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_ctg_sub_grp_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_ctg_sub_grp" tabindex="16"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ctg_sub_grp}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_ctg_sub_grp','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_ctg_sub_grp_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ctg_sub_grp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_ctg_det" for="atvfx_cd_ctg_det"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_ctg_det_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_ctg_det" tabindex="17"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ctg_det}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_ctg_det','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_ctg_det_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ctg_det_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_ds" for="atvfx_ds"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="atvfx_ds" tabindex="18"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_ds}" size="82" maxlength="80"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_ds','0',this.value);"/>
<ps:psGraphicImage id="atvfx_ds_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ar_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_ue" for="atvfx_cd_ue"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_ue_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_cd_ue" tabindex="19"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ue}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_ue','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_ue_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_ue_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_pconta" for="atvfx_cd_pconta"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_pconta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_pconta" tabindex="20"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_pconta}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_pconta','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_pconta_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_pconta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_cls" for="atvfx_cd_cls"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_cls_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_cls" tabindex="21"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_cls}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_cls','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_cls_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_cls_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXAtivoFixoAtualiza_atvfx_vl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_vl_custo_original" for="atvfx_vl_custo_original"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_vl_custo_original_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="atvfx_vl_custo_original" tabindex="22"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_vl_custo_original_str}"  styleClass="txr pr5 tbx" size="17" maxlength="15" onchange="bv('','atvfx_vl_custo_original','0',valDec(this.value));"/>
<ps:psGraphicImage id="atvfx_vl_custo_original_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_vl_custo_original_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_vl_custo_atual" for="atvfx_vl_custo_atual"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_vl_custo_atual_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="1600" class="pr5"> <h:inputText id="atvfx_vl_custo_atual" tabindex="23"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_vl_custo_atual_str}"  styleClass="txr pr5 tbx" size="17" maxlength="15" onchange="bv('','atvfx_vl_custo_atual','0',valDec(this.value));"/>
<ps:psGraphicImage id="atvfx_vl_custo_atual_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_vl_custo_atual_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXAtivoFixoAtualiza_atvfx_lc_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_ds_localizacao" for="atvfx_ds_localizacao"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ds_localizacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_ds_localizacao" tabindex="24"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_localizacao}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_ds_localizacao','0',this.value);"/>
<ps:psGraphicImage id="atvfx_ds_localizacao_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_localizacao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_ds_logradouro" for="atvfx_ds_logradouro"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ds_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_ds_logradouro" tabindex="25"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_logradouro}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_ds_logradouro','0',this.value);"/>
<ps:psGraphicImage id="atvfx_ds_logradouro_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_logradouro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_ds_complemento" for="atvfx_ds_complemento"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ds_complemento_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_ds_complemento" tabindex="26"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_complemento}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_ds_complemento','0',this.value);"/>
<ps:psGraphicImage id="atvfx_ds_complemento_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_complemento_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_ds_municipio" for="atvfx_ds_municipio"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_ds_municipio_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_ds_municipio" tabindex="27"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_municipio}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_ds_municipio','0',this.value);"/>
<ps:psGraphicImage id="atvfx_ds_municipio_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_ds_municipio_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_uf" for="atvfx_cd_uf"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_uf" tabindex="28"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_uf}" size="5" maxlength="3"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_uf','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_uf_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_uf_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_patio" for="atvfx_cd_patio"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_patio_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="atvfx_cd_patio" tabindex="29"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_patio}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_patio','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_patio_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_patio_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_km" for="atvfx_km"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_km_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="atvfx_km" tabindex="30"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_km}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_km','0',this.value);"/>
<ps:psGraphicImage id="atvfx_km_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_km_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXAtivoFixoAtualiza_atvfx_df_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_nu_nota_fiscal_compra" for="atvfx_nu_nota_fiscal_compra"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_nu_nota_fiscal_compra_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_nu_nota_fiscal_compra" tabindex="31"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_nu_nota_fiscal_compra}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_nu_nota_fiscal_compra','0',this.value);"/>
<ps:psGraphicImage id="atvfx_nu_nota_fiscal_compra_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_nu_nota_fiscal_compra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_nm_fornecedor" for="atvfx_nm_fornecedor"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_nm_fornecedor_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="atvfx_nm_fornecedor" tabindex="32"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_nm_fornecedor}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_nm_fornecedor','0',this.value);"/>
<ps:psGraphicImage id="atvfx_nm_fornecedor_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_nm_fornecedor_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_projeto" for="atvfx_cd_projeto"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_projeto_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="atvfx_cd_projeto" tabindex="33"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_projeto}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_projeto','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_projeto_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_projeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_atvfx_cd_tarefa" for="atvfx_cd_tarefa"  value="#{iimsg.IXAtivoFixoAtualiza_atvfx_cd_tarefa_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="atvfx_cd_tarefa" tabindex="34"  value="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_tarefa}" size="42" maxlength="40"  styleClass="txl pl5 tbx" onchange="bv('','atvfx_cd_tarefa','0',this.value);"/>
<ps:psGraphicImage id="atvfx_cd_tarefa_vc" flagType="val" flag="#{cadIXAtivoFixoAtualizaBean.atvfx_cd_tarefa_vc}" styleClass="btp"/>
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
<iframe id="ObxlsAfatu" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fInvtysfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadIXAtivoFixoAtualizaBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXAtivoFixoAtualizaBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obxlsafatu" action="#{cadObxlsAfatuBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_ixativofixoatualiza" action="#{cadIXAtivoFixoAtualizaBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixativofixoatualiza" action="#{cadIXAtivoFixoAtualizaBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsAfatu" action="#{cadObxlsAfatuBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsAfatu" action="#{cadObxlsAfatuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsAfatu" action="#{cadObxlsAfatuBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
