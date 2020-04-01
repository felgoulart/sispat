<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadIXLocoDesempBean");%>
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
fcf('cadForm:XlsImport_xls_stb');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadIXLocoDesempBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='ixlocodesempcad';cadbeanx='cadIXLocoDesempBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadIXLocoDesempBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" immediate="true"  styleClass="btp" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixlocodesemppsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXLocoDesempBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixlocodesempcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadIXLocoDesempBean.doReturnMenu}"/>
<h:commandButton id="aUpdate" styleClass="btp" rendered="#{cadIXLocoDesempBean.canUpdate}" image="../imagens/btSave.gif"onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixlocodesempcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadIXLocoDesempBean.doUpdate}"/>
<h:commandButton id="aCancelar" styleClass="btp" rendered="#{cadIXLocoDesempBean.canUpdate}" image="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadIXLocoDesempBean.doCancelar}"/>
<h:commandButton id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" rendered="#{cadIXLocoDesempBean.canExcluir}" image="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadIXLocoDesempBean.doExcluir}"/>
<h:commandButton id="aRefresh" styleClass="btp"  image="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadIXLocoDesempBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'ixlocodesempcad'+'&ufmv='+stx"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXLocoDesemp');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXLocoDesempRfm" tabindex="-1" immediate="true" rendered="#{cadIXLocoDesempBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'IXLocoDesempRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadIXLocoDesempBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXLocoDesempBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadIXLocoDesempBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadIXLocoDesempBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadIXLocoDesempBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadIXLocoDesempBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadIXLocoDesempBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadIXLocoDesempBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadIXLocoDesempBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessage" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadIXLocoDesempBean.canUpdate}" action="#{cadIXLocoDesempBean.doValidate}" onmousedown="msgw('aMessage');"/>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXLocoDesemp_lcdsp_op_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_aa" for="lcdsp_aa"  value="#{iimsg.IXLocoDesemp_lcdsp_aa_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="lcdsp_aa" tabindex="3"  value="#{cadIXLocoDesempBean.lcdsp_aa}"  styleClass="txl pl5 tbx" size="7" maxlength="5" onchange="bv('','lcdsp_aa','0',this.value);"/>
<ps:psGraphicImage id="lcdsp_aa_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_aa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="800" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_mm" for="lcdsp_mm"  value="#{iimsg.IXLocoDesemp_lcdsp_mm_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="300" > <h:inputText id="lcdsp_mm" tabindex="4"  value="#{cadIXLocoDesempBean.lcdsp_mm}"  styleClass="txl pl5 tbx" size="8" maxlength="6" onchange="bv('','lcdsp_mm','0',this.value);"/>
<ps:psGraphicImage id="lcdsp_mm_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_mm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_batch_id" for="batch_id"  value="#{iimsg.IXLocoDesemp_batch_id_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="batch_id" tabindex="5"  value="#{cadIXLocoDesempBean.batch_id}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="bv('','batch_id','0',this.value);"/>
<ps:psGraphicImage id="batch_id_vc" flagType="val" flag="#{cadIXLocoDesempBean.batch_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXLocoDesemp_lcdsp_ct_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_cd_nom_modelo" for="lcdsp_cd_nom_modelo"  value="#{iimsg.IXLocoDesemp_lcdsp_cd_nom_modelo_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="600" > <h:inputText id="lcdsp_cd_nom_modelo" tabindex="6"  value="#{cadIXLocoDesempBean.lcdsp_cd_nom_modelo}"  styleClass="txl pl5 tbx" size="72" maxlength="70" onchange="bv('','lcdsp_cd_nom_modelo','0',this.value);"/>
<ps:psGraphicImage id="lcdsp_cd_nom_modelo_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_cd_nom_modelo_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_lt_consumo_comb" for="lcdsp_lt_consumo_comb"  value="#{iimsg.IXLocoDesemp_lcdsp_lt_consumo_comb_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="lcdsp_lt_consumo_comb" tabindex="7"  value="#{cadIXLocoDesempBean.lcdsp_lt_consumo_comb}"  styleClass="txl pl5 tbx" size="10" maxlength="8" onchange="bv('','lcdsp_lt_consumo_comb','0',valNum(this.value));"/>
<ps:psGraphicImage id="lcdsp_lt_consumo_comb_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_lt_consumo_comb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXLocoDesemp_lcdsp_us_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_imob_ofina_prop" for="lcdsp_vl_imob_ofina_prop"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_imob_ofina_prop_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="lcdsp_vl_imob_ofina_prop" tabindex="8"  value="#{cadIXLocoDesempBean.lcdsp_vl_imob_ofina_prop_str}"  styleClass="txr pr5 tbx" size="11" maxlength="9" onchange="bv('','lcdsp_vl_imob_ofina_prop','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_imob_ofina_prop_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_imob_ofina_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="800" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_imob_ofina_terc" for="lcdsp_vl_imob_ofina_terc"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_imob_ofina_terc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="300" class="pr5"> <h:inputText id="lcdsp_vl_imob_ofina_terc" tabindex="9"  value="#{cadIXLocoDesempBean.lcdsp_vl_imob_ofina_terc_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_imob_ofina_terc','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_imob_ofina_terc_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_imob_ofina_terc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_imob_morta" for="lcdsp_vl_imob_morta"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_imob_morta_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="lcdsp_vl_imob_morta" tabindex="10"  value="#{cadIXLocoDesempBean.lcdsp_vl_imob_morta_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_imob_morta','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_imob_morta_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_imob_morta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_disp_naoutil_prop" for="lcdsp_vl_disp_naoutil_prop"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_disp_naoutil_prop_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="lcdsp_vl_disp_naoutil_prop" tabindex="11"  value="#{cadIXLocoDesempBean.lcdsp_vl_disp_naoutil_prop_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_disp_naoutil_prop','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_disp_naoutil_prop_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_disp_naoutil_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="800" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_disp_naoutil_terc" for="lcdsp_vl_disp_naoutil_terc"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_disp_naoutil_terc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td  colspan ="4" width="1300" class="pr5"> <h:inputText id="lcdsp_vl_disp_naoutil_terc" tabindex="12"  value="#{cadIXLocoDesempBean.lcdsp_vl_disp_naoutil_terc_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_disp_naoutil_terc','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_disp_naoutil_terc_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_disp_naoutil_terc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_util_prop" for="lcdsp_vl_util_prop"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_util_prop_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="lcdsp_vl_util_prop" tabindex="13"  value="#{cadIXLocoDesempBean.lcdsp_vl_util_prop_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_util_prop','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_util_prop_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_util_prop_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="800" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_util_terc" for="lcdsp_vl_util_terc"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_util_terc_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="300" class="pr5"> <h:inputText id="lcdsp_vl_util_terc" tabindex="14"  value="#{cadIXLocoDesempBean.lcdsp_vl_util_terc_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_util_terc','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_util_terc_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_util_terc_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_util_servint" for="lcdsp_vl_util_servint"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_util_servint_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="500" class="pr5"> <h:inputText id="lcdsp_vl_util_servint" tabindex="15"  value="#{cadIXLocoDesempBean.lcdsp_vl_util_servint_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_util_servint','0',valDec(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_util_servint_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_util_servint_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.IXLocoDesemp_lcdsp_pd_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_tkb_tracionada" for="lcdsp_vl_tkb_tracionada"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_tkb_tracionada_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="lcdsp_vl_tkb_tracionada" tabindex="16"  value="#{cadIXLocoDesempBean.lcdsp_vl_tkb_tracionada}"  styleClass="txl pl5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_tkb_tracionada','0',valNum(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_tkb_tracionada_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_tkb_tracionada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="800" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_tku_tracionada" for="lcdsp_vl_tku_tracionada"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_tku_tracionada_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="300"  > <h:inputText id="lcdsp_vl_tku_tracionada" tabindex="17"  value="#{cadIXLocoDesempBean.lcdsp_vl_tku_tracionada}"  styleClass="txl pl5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_tku_tracionada','0',valNum(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_tku_tracionada_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_tku_tracionada_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="500" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_lcdsp_vl_dist_percorrida" for="lcdsp_vl_dist_percorrida"  value="#{iimsg.IXLocoDesemp_lcdsp_vl_dist_percorrida_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="500"  > <h:inputText id="lcdsp_vl_dist_percorrida" tabindex="18"  value="#{cadIXLocoDesempBean.lcdsp_vl_dist_percorrida}"  styleClass="txl pl5 tbx" size="12" maxlength="10" onchange="bv('','lcdsp_vl_dist_percorrida','0',valNum(this.value));"/>
<ps:psGraphicImage id="lcdsp_vl_dist_percorrida_vc" flagType="val" flag="#{cadIXLocoDesempBean.lcdsp_vl_dist_percorrida_vc}" styleClass="btp"/>
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
<iframe id="ObxlsLcdsp" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadIXLocoDesempBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXLocoDesempBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_obxlslcdsp" action="#{cadObxlsLcdspBean.doSelecionar}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_ObxlsLcdsp" action="#{cadObxlsLcdspBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_ObxlsLcdsp" action="#{cadObxlsLcdspBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ObxlsLcdsp" action="#{cadObxlsLcdspBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_ixlocodesemp" action="#{cadIXLocoDesempBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixlocodesemp" action="#{cadIXLocoDesempBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
