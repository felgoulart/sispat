<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadObocpBean");%>
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
lpCaller();
fcf('cadForm:obocp_dt');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadObocpBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='obocpcad';cadbeanx='cadObocpBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadObocpBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obocppsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadObocpBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchPar" immediate="true"  styleClass="btp" image="../imagens/btReturnxParent.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obocppsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToParent_tt}" action="#{cadObocpBean.doReturn}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obocpcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObocpBean.doReturnMenu}"/>
<h:commandButton id="aPrev" immediate="true" styleClass="btp" rendered="#{cadObocpBean.idxflag}" image="../imagens/btPgAnterior.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_anterior}" action="#{cadObocpBean.doObternullPrev}"/>
<h:commandButton id="aNext" immediate="true" styleClass="btp" rendered="#{cadObocpBean.idxflag}" image="../imagens/btPgProxima.gif" onmousedown="msgwr()" title="#{iimsg.botao_proxima}" action="#{cadObocpBean.doObternullNext}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadObocpBean.canUpdate}" image="../imagens/btSave.gif"onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obocpcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadObocpBean.doUpdate1Chld}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadObocpBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadObocpBean.doObterParentForCancel}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadObocpBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadObocpBean.doExcluirChld}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadObocpBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obocpcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obocp');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObocpRfm" tabindex="-1" immediate="true" rendered="#{cadObocpBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'ObocpRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadObocpBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadObocpBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadObocpBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadObocpBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadObocpBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadObocpBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadObocpBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadObocpBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadObocpBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadObocpBean.canUpdate}" action="#{cadObocpBean.doValidate}" onmousedown="msgw('aMessage');"/>
<h:inputText id="idxm" value="#{cadObocpBean.idxm}"  styleClass="txrr pr5 tb50r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_id" for="obocp_id"  value="#{iimsg.Obocp_obocp_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obocp_id" tabindex="-1"  onclick="clf(this);" readonly="true" value="#{cadObocpBean.obocp_id}"  styleClass="tbxr" onkeydown="keypress=1;" size="15" maxlength="15" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<h:inputHidden id="obocp_sq" value="#{cadObocpBean.obocp_sq}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_dt" for="obocp_dt"  value="#{iimsg.Obocp_obocp_dt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="obocp_dt_str" tabindex="1"  value="#{cadObocpBean.obocp_dt_str}"  styleClass="tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:obocp_dt_str', event);" onkeyup="SaltaCampo('cadForm:obocp_dt_str', 'cadForm:obocp_tp', 8 , event);" onchange="validaDatas2(this);bv('','obocp_dt_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:obocp_dt_str', 'obocp_dtCal');" style="cursor: hand"/>
<ps:psGraphicImage id="obocp_dt_vc" flagType="val" flag="#{cadObocpBean.obocp_dt_vc}" styleClass="btp"/>
<div id="obocp_dtCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_tp" for="obocp_tp"  value="#{iimsg.Obocp_obocp_tp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="obocp_tp" onclick="clf(this);" value="#{cadObocpBean.obocp_tp}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','obocp_tp','0','TPOCP',this.value);;" size="7" maxlength="5" tabindex="2" />
<h:commandButton id="obocp_tp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPOCP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obocp_tp_vc" flagType="val" flag="#{cadObocpBean.obocp_tp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="obocp_tp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObocpBean.obocp_tp_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_nm" for="obocp_nm"  value="#{iimsg.Obocp_obocp_nm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="obocp_nm" tabindex="3"  value="#{cadObocpBean.obocp_nm}" size="82" maxlength="80"  styleClass="tbx" onchange="bv('','obocp_nm','0',this.value);"/>
<ps:psGraphicImage id="obocp_nm_vc" flagType="val" flag="#{cadObocpBean.obocp_nm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_cd_ccusto" for="obocp_cd_ccusto"  value="#{iimsg.Obocp_obocp_cd_ccusto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="obocp_cd_ccusto" tabindex="4"  onclick="clf(this);" value="#{cadObocpBean.obocp_cd_ccusto}"  styleClass="tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','obocp_cd_ccusto','Ixccust','ccust_cd','ccust_ds',this.value);" size="12" maxlength="10" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="obocp_cd_ccusto_xsel" tabindex="-1" immediate="true" onmousedown="pw('ixccustpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="obocp_cd_ccusto_vc" flagType="val" flag="#{cadObocpBean.obocp_cd_ccusto_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="obocp_cd_ccusto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadObocpBean.obocp_cd_ccusto_desc}" styleClass="txlr pr5 tb90r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_ds_autorz" for="obocp_ds_autorz"  value="#{iimsg.Obocp_obocp_ds_autorz_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="obocp_ds_autorz" tabindex="5"  value="#{cadObocpBean.obocp_ds_autorz}" size="82" maxlength="80"  styleClass="tbx" onchange="bv('','obocp_ds_autorz','0',this.value);"/>
<ps:psGraphicImage id="obocp_ds_autorz_vc" flagType="val" flag="#{cadObocpBean.obocp_ds_autorz_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obocp_dt_prazo" for="obocp_dt_prazo"  value="#{iimsg.Obocp_obocp_dt_prazo_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="400"   >
<h:inputText id="obocp_dt_prazo_str" tabindex="6"  value="#{cadObocpBean.obocp_dt_prazo_str}"  styleClass="tbDt" size="12" maxlength="10" onkeydown="formataData('cadForm:obocp_dt_prazo_str', event);" onkeyup="SaltaCampo('cadForm:obocp_dt_prazo_str', 'cadForm:obocp_tp_cfasttp', 8 , event);" onchange="validaDatas2(this);bv('','obocp_dt_prazo_str','0',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:obocp_dt_prazo_str', 'obocp_dt_prazoCal');" style="cursor: hand"/>
<ps:psGraphicImage id="obocp_dt_prazo_vc" flagType="val" flag="#{cadObocpBean.obocp_dt_prazo_vc}" styleClass="btp"/>
<div id="obocp_dt_prazoCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="obocp_tp_cfasttp" value="#{cadObocpBean.obocp_tp_cfasttp}"/>
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
<iframe id="asset" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fAssetsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fIxccustsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fIxccustsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadObocpBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObocpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vg" action="#{cadVgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vg" action="#{cadVgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vg" action="#{cadVgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lc" action="#{cadLcBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lc" action="#{cadLcBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lc" action="#{cadLcBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vx" action="#{cadVxBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vx" action="#{cadVxBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vx" action="#{cadVxBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ed" action="#{cadEdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ed" action="#{cadEdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ed" action="#{cadEdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tp" action="#{cadTpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tp" action="#{cadTpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tp" action="#{cadTpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tl" action="#{cadTlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tl" action="#{cadTlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tl" action="#{cadTlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lp" action="#{cadLpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lp" action="#{cadLpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lp" action="#{cadLpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_lr" action="#{cadLrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_lr" action="#{cadLrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_lr" action="#{cadLrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_dp" action="#{cadDpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_dp" action="#{cadDpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_dp" action="#{cadDpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_dc" action="#{cadDcBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_dc" action="#{cadDcBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_dc" action="#{cadDcBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pn" action="#{cadPnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pn" action="#{cadPnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pn" action="#{cadPnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ps" action="#{cadPsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ps" action="#{cadPsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ps" action="#{cadPsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pi" action="#{cadPiBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pi" action="#{cadPiBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pi" action="#{cadPiBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pt" action="#{cadPtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pt" action="#{cadPtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pt" action="#{cadPtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_vd" action="#{cadVdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_vd" action="#{cadVdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_vd" action="#{cadVdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_bu" action="#{cadBuBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_bu" action="#{cadBuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_bu" action="#{cadBuBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_tu" action="#{cadTuBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_tu" action="#{cadTuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_tu" action="#{cadTuBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_Ixccust" action="#{cadIxccustBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_Ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_Ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_obocp" action="#{cadObocpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obocp" action="#{cadObocpBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
