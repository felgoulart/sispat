<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObaedesqBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Obaedesqpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obaedesqpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObaedesqBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObaedesqSfm';;tran='obaedesqpsq'; vl='';cadbeanx='cadObaedesqBean';<%session.setAttribute("tipo","obaedesqpsq");%>">
<h:form id="cadForm">
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
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<h:outputText value="#{cadObaedesqBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btVoltar.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetBean.doObterBack}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obaedesqcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObaedesqBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObaedesqBean.hasPrevPage}" action="#{cadObaedesqBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObaedesqBean.hasNextPage}" action="#{cadObaedesqBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObaedesqBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObaedesqBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObaedesqBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadObaedesqBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('obaedesqcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadObaedesqBean.doObterParentForCancel}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obaed');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObaedesqSfm" tabindex="-1" rendered="#{cadObaedesqBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObaedesqSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObaedesqBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObaedesqBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
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
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey 3 --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_obaed_id" for="obaed_id"  title="#{iimsg.Obaedesq_obaed_id_tt}"  value="#{iimsg.Obaedesq_obaed_id_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="obaed_id" tabindex="-1" readonly="true" value="#{cadObaedesqBean.obaed_id}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="obaed_id_desc" value="#{cadObaedesqBean.obaed_id_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadObaedesqBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObaedesqBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<div id="div_dtDados_hor_" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- codfColumnGen -->
<h:column id="obaed_vl_tt">
<f:facet name="header">
<h:panelGroup id="pg_obaed_vl_tt">
<h:outputText id="hd_obaed_vl_tt" title="#{iimsg.Obaedesq_obaed_vl_tt}" value="#{iimsg.Obaedesq_obaed_vl_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Obaedesq_tabs_vc_tt}" value="#{iimsg.Obaedesq_tabs_vc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_tt">
<h:outputText id="hd_recd_wd_tt_xide" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<h:column id="sel__a_scrollbar_right">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_right_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
<!-- Pesquisa Filter Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-filter"
id="dtDados_ft">
<!-- codfColumnGen -->
<h:column id="obaed_vl_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obaed_vl">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObaedesqBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ft">
<h:outputText id="recd_wd_ft" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<h:column id="sel__a_scrollbar_right">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar_right__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadObaedesqBean.pesqData}"
var="Obaed"
binding="#{cadObaedesqBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObaedesqBean.pageLength}"
first="#{cadObaedesqBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="obaed_vl">
<h:panelGroup id="pg_obaed_vl_sg">
<h:outputLabel id="sel_obaed_vl" onclick="slvlcd(this.id,this.value);" value="#{Obaed.obaed_vl}"/>
<h:outputText id="obaed_vl_desc" value="#{Obaed.obaed_vl_desc}"/>
<h:inputHidden id="sel_obaed_tp" value="#{Obaed.obaed_tp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgObaedesq" onmousedown="wtran='obaedesqcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_obaed_id').value;valor2=el(aa+'sel_obaed_sq').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Obaed.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obaed_id" value="#{Obaed.obaed_id}"/>
<h:inputHidden id="sel_obaed_sq" value="#{Obaed.obaed_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObaedesqBean.doObternullSearchBack}" onmousedown="wtran='obaedesqcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obaed_id');valor2=rpel(aa+'sel_obaed_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
<!-- Dados -->
</div>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
</div>
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeAsst/md_fio_dir.gif" nowrap>  </td>
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
<iframe id="Obaedesq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeHelp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveAssist" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakht" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObaedesqBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObaedesqBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obaedesq" action="#{cadObaedesqBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obaedesq" action="#{cadObaedesqBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvhwag" action="#{cadAssetvhwagBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetvhwag" action="#{cadAssetvhwagBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvhwag" action="#{cadAssetvhwagBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvheng" action="#{cadAssetvhengBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetvheng" action="#{cadAssetvhengBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvheng" action="#{cadAssetvhengBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetvhaux" action="#{cadAssetvhauxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetvhaux" action="#{cadAssetvhauxBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetvhaux" action="#{cadAssetvhauxBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetbldng" action="#{cadAssetbldngBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetbldng" action="#{cadAssetbldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetbldng" action="#{cadAssetbldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetyrdld" action="#{cadAssetyrdldBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetyrdld" action="#{cadAssetyrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetyrdld" action="#{cadAssetyrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetlbdld" action="#{cadAssetlbdldBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetlbdld" action="#{cadAssetlbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetlbdld" action="#{cadAssetlbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetmailn" action="#{cadAssetmailnBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetmailn" action="#{cadAssetmailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetmailn" action="#{cadAssetmailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetextln" action="#{cadAssetextlnBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetextln" action="#{cadAssetextlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetextln" action="#{cadAssetextlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetyrdsd" action="#{cadAssetyrdsdBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetyrdsd" action="#{cadAssetyrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetyrdsd" action="#{cadAssetyrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsidng" action="#{cadAssetsidngBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetsidng" action="#{cadAssetsidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsidng" action="#{cadAssetsidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetlvlcr" action="#{cadAssetlvlcrBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetlvlcr" action="#{cadAssetlvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetlvlcr" action="#{cadAssetlvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetovrps" action="#{cadAssetovrpsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetovrps" action="#{cadAssetovrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetovrps" action="#{cadAssetovrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetundps" action="#{cadAssetundpsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetundps" action="#{cadAssetundpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetundps" action="#{cadAssetundpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetbrdge" action="#{cadAssetbrdgeBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetbrdge" action="#{cadAssetbrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetbrdge" action="#{cadAssetbrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetviadt" action="#{cadAssetviadtBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetviadt" action="#{cadAssetviadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetviadt" action="#{cadAssetviadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetculvt" action="#{cadAssetculvtBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetculvt" action="#{cadAssetculvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assettunnl" action="#{cadAssettunnlBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assettunnl" action="#{cadAssettunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assettunnl" action="#{cadAssettunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsuper" action="#{cadAssetsuperBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetsuper" action="#{cadAssetsuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsuper" action="#{cadAssetsuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_assetsupersv" action="#{cadAssetsupersvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetsupersv" action="#{cadAssetsupersvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsupersv" action="#{cadAssetsupersvBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
