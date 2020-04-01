<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadTransBean");%>
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
el('cadForm:trans_id').readOnly = true;
el('cadForm:trans_id').className = 'tbxr';
fcf('cadForm:trans_nm')
} else {
fcf('cadForm:trans_id')
}
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadTransBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='transcad';cadbeanx='cadTransBean';loadPage(<%= request.getAttribute("pagina") %>);">
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
<h:outputText value="#{cadTransBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadTransBean.assist}" image="../imagens/btReturnx.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'transpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadTransBean.doSelecionarBackx}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" rendered="#{cadTransBean.assist}" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'transcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadTransBean.doReturnMenu}"/>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadTransBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'transcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadTransBean.doUpdate}">
<f:param name="cadbeanx" value="cadTransBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadTransBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadTransBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadTransBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadTransBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadTransBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'transcad'+'&ufmv='+stx">
<f:param name="tipo" value="transcad"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Trans');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudRfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpTransRfm" tabindex="-1" immediate="true" rendered="#{cadTransBean.hasHelpSpcRfm}" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'TransRfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
<h:inputHidden id="tabsvf" value="#{cadTransBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadTransBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadTransBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadTransBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadTransBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadTransBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadTransBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadTransBean.xmesg_st}" />
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
<h:inputText id="mesg_var" value="#{cadTransBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadTransBean.canUpdate}" action="#{cadTransBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
</table> <%-- <mesg frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_id" for="trans_id"  value="#{iimsg.Trans_trans_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="500" > <h:inputText id="trans_id" tabindex="1"  onclick="clf(this);" value="#{cadTransBean.trans_id}"  styleClass="txl pl5 tbx" size="42" maxlength="40" onchange="this.value=this.value.toUpperCase();bv('','trans_id','0',this.value);"/>
<ps:psGraphicImage id="trans_id_vc" flagType="val" flag="#{cadTransBean.trans_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_tp" for="trans_tp"  value="#{iimsg.Trans_trans_tp_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="500" > <h:inputText id="trans_tp" onfocus="this.blur()" value="#{cadTransBean.trans_tp}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_ct" for="trans_ct"  value="#{iimsg.Trans_trans_ct_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="trans_ct" onclick="clf(this);" value="#{cadTransBean.trans_ct}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','trans_ct','0','TRCTG',this.value);;" size="7" maxlength="5" tabindex="3" />
<h:commandButton id="trans_ct_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCTG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_ct_vc" flagType="val" flag="#{cadTransBean.trans_ct_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="trans_ct_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_ct_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_nm" for="trans_nm"  value="#{iimsg.Trans_trans_nm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="500"   >
<h:inputText id="trans_nm" tabindex="4"  value="#{cadTransBean.trans_nm}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','trans_nm','0',this.value);"/>
<ps:psGraphicImage id="trans_nm_vc" flagType="val" flag="#{cadTransBean.trans_nm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="2" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="2"   width="100%" > <%-- open w/ inputText 222--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="FFB2B2" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="2"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.Trans_trans_hp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.Trans_trans_hpus_title_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_hpus" for="trans_cd_hpus"  value="#{iimsg.Trans_trans_cd_hpus_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_hpus" tabindex="5"  onclick="clf(this);" value="#{cadTransBean.trans_cd_hpus}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_hpus','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_hpus_xsel" tabindex="-1" immediate="true" onmousedown="pw('helppuspsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_hpus_vc" flagType="val" flag="#{cadTransBean.trans_cd_hpus_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_hpus_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_hpus_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.Trans_trans_hgen_title_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_hgen_sfm" for="trans_cd_hgen_sfm"  value="#{iimsg.Trans_trans_cd_hgen_sfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_hgen_sfm" tabindex="6"  onclick="clf(this);" value="#{cadTransBean.trans_cd_hgen_sfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_hgen_sfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_hgen_sfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpgnrpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_hgen_sfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_hgen_sfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_hgen_sfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_hgen_sfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_hgen_rfm" for="trans_cd_hgen_rfm"  value="#{iimsg.Trans_trans_cd_hgen_rfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_hgen_rfm" tabindex="7"  onclick="clf(this);" value="#{cadTransBean.trans_cd_hgen_rfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_hgen_rfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_hgen_rfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpgnspsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_hgen_rfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_hgen_rfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_hgen_rfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_hgen_rfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.Trans_trans_hcon_title_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_hcom_sfm" for="trans_cd_hcom_sfm"  value="#{iimsg.Trans_trans_cd_hcom_sfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_hcom_sfm" tabindex="8"  onclick="clf(this);" value="#{cadTransBean.trans_cd_hcom_sfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_hcom_sfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_hcom_sfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpcmrpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_hcom_sfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_hcom_sfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_hcom_sfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_hcom_sfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_hcom_rfm" for="trans_cd_hcom_rfm"  value="#{iimsg.Trans_trans_cd_hcom_rfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_hcom_rfm" tabindex="9"  onclick="clf(this);" value="#{cadTransBean.trans_cd_hcom_rfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_hcom_rfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_hcom_rfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpcmspsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_hcom_rfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_hcom_rfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_hcom_rfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_hcom_rfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="400"  class="tts"> <%-- tittle underlined aa --%>
<h:outputText   styleClass="tts" value="#{iimsg.Trans_trans_help_title_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_help_sfm" for="trans_cd_help_sfm"  value="#{iimsg.Trans_trans_cd_help_sfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_help_sfm" tabindex="10"  onclick="clf(this);" value="#{cadTransBean.trans_cd_help_sfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_help_sfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_help_sfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpdtrpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_help_sfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_help_sfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_help_sfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_help_sfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_cd_help_rfm" for="trans_cd_help_rfm"  value="#{iimsg.Trans_trans_cd_help_rfm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="500" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="trans_cd_help_rfm" tabindex="11"  onclick="clf(this);" value="#{cadTransBean.trans_cd_help_rfm}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','trans_cd_help_rfm','Help','help_cd','help_nm',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="trans_cd_help_rfm_xsel" tabindex="-1" immediate="true" onmousedown="pw('helpdtspsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="trans_cd_help_rfm_vc" flagType="val" flag="#{cadTransBean.trans_cd_help_rfm_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="trans_cd_help_rfm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadTransBean.trans_cd_help_rfm_desc}" styleClass="txlr pr5 tb300r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table>  <%-- implicit frame open --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_trans_codf" for="trans_codf"  value="#{iimsg.Trans_trans_codf_tt}"/>  </td> <%-- <top> --%>
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
<iframe id="trans" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTranssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helppus" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelppussak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelppussfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpgnr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpgnrsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpgnrsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpgns" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpgnssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpgnssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpcmr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpcmrsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpcmrsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpcms" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpcmssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpcmssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpdtr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpdtrsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpdtrsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="helpdts" width="0" height="0" frameborder="0"> </iframe>
<iframe id="help" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpdtssak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fHelpdtssfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="codfmnt" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadTransBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helppus" action="#{cadHelppusBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helppus" action="#{cadHelppusBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helppus" action="#{cadHelppusBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpgnr" action="#{cadHelpgnrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpgnr" action="#{cadHelpgnrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpgnr" action="#{cadHelpgnrBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpgns" action="#{cadHelpgnsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpgns" action="#{cadHelpgnsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpgns" action="#{cadHelpgnsBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpcmr" action="#{cadHelpcmrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpcmr" action="#{cadHelpcmrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpcmr" action="#{cadHelpcmrBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpcms" action="#{cadHelpcmsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpcms" action="#{cadHelpcmsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpcms" action="#{cadHelpcmsBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpdtr" action="#{cadHelpdtrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpdtr" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpdtr" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_helpdts" action="#{cadHelpdtsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_helpdts" action="#{cadHelpdtsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpdts" action="#{cadHelpdtsBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_codfmnt" action="#{cadCodfmntBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_codfmnt" action="#{cadCodfmntBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_codfmnt" action="#{cadCodfmntBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_codfmnt" action="#{cadCodfmntBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
