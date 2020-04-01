<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadMpgeoBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadMpgeoBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandard.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>

<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
helpcd='';
fcf('cadForm:layer_lp');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadMpgeoBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='mpgeocad';cadbeanx='cadMpgeoBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" target="mesg">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<%@include file="projHeader1.jsp"%>
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
<h:outputText value="#{cadMpgeoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" title="#{iimsg.button_help_repository}" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<ps:psCommandLink id="aPrint" styleClass="btp" ativo="../imagens/btPrinter.gif" title="#{iimsg.button_printScreen_tt}"  onmousedown="window.print()">
</ps:psCommandLink>
<ps:psCommandLink id="aClose" styleClass="btp"  ativo="../imagens/btClose.gif" onmousedown="msgwinclose()" title="#{iimsg.botao_close}">
</ps:psCommandLink>
<h:inputHidden id="tabsvf" value="#{cadMpgeoBean.tabsvf}" />
<h:inputHidden id="tabsvf_in" value="#{cadMpgeoBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadMpgeoBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadMpgeoBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadMpgeoBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadMpgeoBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadMpgeoBean.xmesg_st}" />
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
<td width="15" height="13" background="../imagens/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/md_fio_top.gif" height="13"> </td>
<td background="../imagens/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadMpgeoBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadMpgeoBean.canUpdate}" action="#{cadMpgeoBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_lp" for="layer_lp"  value="#{iimsg.Mpgeo_layer_lp_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_lr" for="layer_lr"  value="#{iimsg.Mpgeo_layer_lr_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_dc" for="layer_dc"  value="#{iimsg.Mpgeo_layer_dc_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_dp" for="layer_dp"  value="#{iimsg.Mpgeo_layer_dp_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_ed" for="layer_ed"  value="#{iimsg.Mpgeo_layer_ed_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_tp" for="layer_tp"  value="#{iimsg.Mpgeo_layer_tp_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_tl" for="layer_tl"  value="#{iimsg.Mpgeo_layer_tl_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_pn" for="layer_pn"  value="#{iimsg.Mpgeo_layer_pn_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_ps" for="layer_ps"  value="#{iimsg.Mpgeo_layer_ps_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_pi" for="layer_pi"  value="#{iimsg.Mpgeo_layer_pi_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_pt" for="layer_pt"  value="#{iimsg.Mpgeo_layer_pt_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_tu" for="layer_tu"  value="#{iimsg.Mpgeo_layer_tu_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_vd" for="layer_vd"  value="#{iimsg.Mpgeo_layer_vd_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_layer_bu" for="layer_bu"  value="#{iimsg.Mpgeo_layer_bu_tt}"/>  </td> <%-- <top> --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<f:verbatim>
<center><iframe src="mapa.jsp" width="90%" height="600px"></iframe></center>
</f:verbatim>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="assetMailn" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetExtln" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetSidng" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetYrdsd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetBldng" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetYrdld" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetLbdld" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetLvlcr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetOvrps" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetUndps" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetBrdge" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetTunnl" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetViadt" width="0" height="0" frameborder="0"> </iframe>
<iframe id="assetculvt" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadMpgeoBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetMailn" action="#{cadAssetMailnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetMailn" action="#{cadAssetMailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetMailn" action="#{cadAssetMailnBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetExtln" action="#{cadAssetExtlnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetExtln" action="#{cadAssetExtlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetExtln" action="#{cadAssetExtlnBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetSidng" action="#{cadAssetSidngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetSidng" action="#{cadAssetSidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetSidng" action="#{cadAssetSidngBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetYrdsd" action="#{cadAssetYrdsdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetYrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetYrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetBldng" action="#{cadAssetBldngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetBldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetBldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetYrdld" action="#{cadAssetYrdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetYrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetYrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetLbdld" action="#{cadAssetLbdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetLbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetLbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetLvlcr" action="#{cadAssetLvlcrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetLvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetLvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetOvrps" action="#{cadAssetOvrpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetOvrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetOvrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetUndps" action="#{cadAssetUndpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetUndps" action="#{cadAssetUndpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetUndps" action="#{cadAssetUndpsBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetBrdge" action="#{cadAssetBrdgeBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetBrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetBrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetTunnl" action="#{cadAssetTunnlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetTunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetTunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_AssetViadt" action="#{cadAssetViadtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_AssetViadt" action="#{cadAssetViadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_AssetViadt" action="#{cadAssetViadtBean.doObternull}" immediate="true"/>
<!-- SuperType Transactions -->
<h:commandLink id="xsel_Assetculvt" action="#{cadAssetculvtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xnew_Assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_Assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetMailn" action="#{cadAssetMailnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetMailn" action="#{cadAssetMailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetMailn" action="#{cadAssetMailnBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetExtln" action="#{cadAssetExtlnBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetExtln" action="#{cadAssetExtlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetExtln" action="#{cadAssetExtlnBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetSidng" action="#{cadAssetSidngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetSidng" action="#{cadAssetSidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetSidng" action="#{cadAssetSidngBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetYrdsd" action="#{cadAssetYrdsdBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetYrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetYrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetBldng" action="#{cadAssetBldngBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetBldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetBldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetYrdld" action="#{cadAssetYrdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetYrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetYrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetLbdld" action="#{cadAssetLbdldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetLbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetLbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetLvlcr" action="#{cadAssetLvlcrBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetLvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetLvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetOvrps" action="#{cadAssetOvrpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetOvrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetOvrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetUndps" action="#{cadAssetUndpsBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetUndps" action="#{cadAssetUndpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetUndps" action="#{cadAssetUndpsBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetBrdge" action="#{cadAssetBrdgeBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetBrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetBrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetTunnl" action="#{cadAssetTunnlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetTunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetTunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetViadt" action="#{cadAssetViadtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetViadt" action="#{cadAssetViadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetViadt" action="#{cadAssetViadtBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_assetculvt" action="#{cadAssetculvtBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
