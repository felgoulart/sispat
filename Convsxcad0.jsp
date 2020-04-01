<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadConvsxBean");%>
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
el('cadForm:convs_id_impex').readOnly = true;
el('cadForm:convs_id_impex').className = 'tbxr';
el('cadForm:convs_sq').readOnly = true;
el('cadForm:convs_sq').className = 'tbxr';
fcf('cadForm:convs_cd')
} else {
el('cadForm:convs_id_impex').readOnly = true;
el('cadForm:convs_id_impex').className = 'tbxr';
fcf('cadForm:convs_sq')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadConvsxBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='convscad';cadbeanx='cadConvsxBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadConvsxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'convsxpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadConvsxBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadConvsxBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'convsxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadConvsxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp" image="../imagens/btPgAnterior.gif" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadConvsxBean.doObternullPrev}"/>
<h:commandButton id="aNext" styleClass="btp" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadConvsxBean.doObternullNext}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadConvsxBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'convscad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadConvsxBean.doUpdate1Chld}">
<f:param name="cadbeanx" value="cadConvsxBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadConvsxBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadConvsxBean.doObterParent}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadConvsxBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadConvsxBean.doExcluirChld}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadConvsxBean.doObterRefresh}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'convscad'+'&ufmv='+stx">
<f:param name="tipo" value="convscad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Convs');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpConvsRfm" tabindex="-1" immediate="true" rendered="#{cadConvsBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ConvsRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadConvsxBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadConvsxBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadConvsxBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadConvsxBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadConvsxBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadConvsxBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadConvsxBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadConvsxBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadConvsxBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadConvsxBean.canUpdate}" action="#{cadConvsxBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_id_impex" for="convs_id_impex"  value="#{iimsg.Convs_convs_id_impex_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="convs_id_impex" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadConvsxBean.convs_id_impex}"  styleClass="tbxr" onkeydown="keypress=1;" size="60" maxlength="60" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_sq" for="convs_sq"  value="#{iimsg.Convs_convs_sq_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="400" > <h:inputText id="convs_sq" tabindex="1"  value="#{cadConvsxBean.convs_sq}"  styleClass="tbx" size="7" maxlength="5" onchange="bv('','convs_sq','0',this.value);"/>
<ps:psGraphicImage id="convs_sq_vc" flagType="val" flag="#{cadConvsxBean.convs_sq_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_cd" for="convs_cd"  value="#{iimsg.Convs_convs_cd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="convs_cd" tabindex="2"  value="#{cadConvsxBean.convs_cd}" size="22" maxlength="20"  styleClass="tbx" onchange="bv('','convs_cd','0',this.value);"/>
<ps:psGraphicImage id="convs_cd_vc" flagType="val" flag="#{cadConvsxBean.convs_cd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_tt_orgdes" for="convs_tt_orgdes"  value="#{iimsg.Convs_convs_tt_orgdes_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="convs_tt_orgdes" tabindex="3"  value="#{cadConvsxBean.convs_tt_orgdes}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','convs_tt_orgdes','0',this.value);"/>
<ps:psGraphicImage id="convs_tt_orgdes_vc" flagType="val" flag="#{cadConvsxBean.convs_tt_orgdes_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_tp_sispat" for="convs_tp_sispat"  value="#{iimsg.Convs_convs_tp_sispat_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="convs_tp_sispat" onclick="clf(this);" value="#{cadConvsxBean.convs_tp_sispat}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','convs_tp_sispat','0','TPVAL',this.value);;" size="7" maxlength="5" tabindex="4" />
<h:commandButton id="convs_tp_sispat_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPVAL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="convs_tp_sispat_vc" flagType="val" flag="#{cadConvsxBean.convs_tp_sispat_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="convs_tp_sispat_desc" tabindex="-1" onfocus="this.blur()" value="#{cadConvsxBean.convs_tp_sispat_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_tp_orgdes" for="convs_tp_orgdes"  value="#{iimsg.Convs_convs_tp_orgdes_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="convs_tp_orgdes" onclick="clf(this);" value="#{cadConvsxBean.convs_tp_orgdes}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','convs_tp_orgdes','0','TPVAL',this.value);;" size="7" maxlength="5" tabindex="5" />
<h:commandButton id="convs_tp_orgdes_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPVAL', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="convs_tp_orgdes_vc" flagType="val" flag="#{cadConvsxBean.convs_tp_orgdes_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="convs_tp_orgdes_desc" tabindex="-1" onfocus="this.blur()" value="#{cadConvsxBean.convs_tp_orgdes_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_tp_regra" for="convs_tp_regra"  value="#{iimsg.Convs_convs_tp_regra_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="convs_tp_regra" onclick="clf(this);" value="#{cadConvsxBean.convs_tp_regra}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','convs_tp_regra','0','TPCNV',this.value);;" size="7" maxlength="5" tabindex="6" />
<h:commandButton id="convs_tp_regra_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCNV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="convs_tp_regra_vc" flagType="val" flag="#{cadConvsxBean.convs_tp_regra_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="convs_tp_regra_desc" tabindex="-1" onfocus="this.blur()" value="#{cadConvsxBean.convs_tp_regra_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_cd_codffk" for="convs_cd_codffk"  value="#{iimsg.Convs_convs_cd_codffk_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="convs_cd_codffk" tabindex="7"  value="#{cadConvsxBean.convs_cd_codffk}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','convs_cd_codffk','0',this.value);"/>
<ps:psGraphicImage id="convs_cd_codffk_vc" flagType="val" flag="#{cadConvsxBean.convs_cd_codffk_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_ds" for="convs_ds"  value="#{iimsg.Convs_convs_ds_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="convs_ds" tabindex="8"  value="#{cadConvsxBean.convs_ds}" cols="40" rows="3" styleClass="convs_ds_" onchange="bv('','convs_ds','0',this.value);"/>
<ps:psGraphicImage id="convs_ds_vc" flagType="val" flag="#{cadConvsxBean.convs_ds_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_lg" for="convs_lg"  value="#{iimsg.Convs_convs_lg_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="convs_lg" tabindex="9"  value="#{cadConvsxBean.convs_lg}" size="12" maxlength="10"  styleClass="tbx" onchange="bv('','convs_lg','0',this.value);"/>
<ps:psGraphicImage id="convs_lg_vc" flagType="val" flag="#{cadConvsxBean.convs_lg_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_convs_in_ativo" for="convs_in_ativo"  value="#{iimsg.Convs_convs_in_ativo_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="convs_in_ativo_bol" value="#{cadConvsxBean.convs_in_ativo}"/>
<h:selectBooleanCheckbox id="convs_in_ativo" tabindex="10"  value="#{cadConvsxBean.convs_in_ativo_bol}" onclick="chkBoolean(this, 'cadForm:convs_in_ativo_bol');"/>
<ps:psGraphicImage id="convs_in_ativo_vc" flagType="val" flag="#{cadConvsxBean.convs_in_ativo_vc}" styleClass="btp"/>
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
<iframe id="impex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fImpexsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fImpexsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadConvsxBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadConvsxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_impex" action="#{cadImpexBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_convs" action="#{cadConvsxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_convs" action="#{cadConvsxBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_impex" action="#{cadImpexBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
