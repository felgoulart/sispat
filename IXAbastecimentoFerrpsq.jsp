<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXAbastecimentoFerrBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../IXAbastecimentoFerrpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixabastecimentoferrpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIXAbastecimentoFerrBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXAbastecimentoFerrSfm';;tran='ixabastecimentoferrpsq'; vl='';cadbeanx='cadIXAbastecimentoFerrBean';<%session.setAttribute("tipo","ixabastecimentoferrpsq");%>">
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
<h:outputText value="#{cadIXAbastecimentoFerrBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadIXAbastecimentoFerrBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXAbastecimentoFerrBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXAbastecimentoFerrBean.hasPrevPage}" action="#{cadIXAbastecimentoFerrBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXAbastecimentoFerrBean.hasNextPage}" action="#{cadIXAbastecimentoFerrBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXAbastecimentoFerrBean.doSelecionar}">
<f:param name="tipo" value="ixabastecimentoferrpsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXAbastecimentoFerrBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXAbastecimentoFerrBean.doLimparPesq}"/>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadIXAbastecimentoFerrBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('ixabastecimentoferrcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXAbastecimentoFerrBean.doNovo}">
</ps:psCommandLink>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadIXAbastecimentoFerrBean.canPesquisar}" title="#{iimsg.IXAbastecimentoFerr_XlsImport_xls_stb_tt}" image="../imagens/excellRed.jpg" onmousedown="fExecx('obxlsabfrrcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsAbfrrBean.doObternull}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAbastecimentoFerr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXAbastecimentoFerrSfm" tabindex="-1" rendered="#{cadIXAbastecimentoFerrBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAbastecimentoFerrSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXAbastecimentoFerrBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXAbastecimentoFerrBean.xhelp_rc}" />
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
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadIXAbastecimentoFerrBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXAbastecimentoFerrBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
<td      width="130" >
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_impexcfg" for="impexcfg"  value="#{iimsg.importExportTo_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="impexcfg" onfocus="this.blur()" value="#{cadIXAbastecimentoFerrBean.impexcfg_var}" size="15" maxlength="15"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_aa">
<f:facet name="header">
<h:panelGroup id="pg_abfrr_aa_tt">
<h:outputText id="hd_abfrr_aa_tt_xide" title="#{iimsg.IXAbastecimentoFerr_abfrr_aa_tt}" value="#{iimsg.IXAbastecimentoFerr_abfrr_aa_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_mm">
<f:facet name="header">
<h:panelGroup id="pg_abfrr_mm_tt">
<h:outputText id="hd_abfrr_mm_tt_xide" title="#{iimsg.IXAbastecimentoFerr_abfrr_mm_tt}" value="#{iimsg.IXAbastecimentoFerr_abfrr_mm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_posto">
<f:facet name="header">
<h:panelGroup id="pg_abfrr_cd_posto_tt">
<h:outputText id="hd_abfrr_cd_posto_tt_xide" title="#{iimsg.IXAbastecimentoFerr_abfrr_cd_posto_tt}" value="#{iimsg.IXAbastecimentoFerr_abfrr_cd_posto_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_ferrv">
<f:facet name="header">
<h:panelGroup id="pg_abfrr_cd_ferrv_tt">
<h:outputText id="hd_abfrr_cd_ferrv_tt_xide" title="#{iimsg.IXAbastecimentoFerr_abfrr_cd_ferrv_tt}" value="#{iimsg.IXAbastecimentoFerr_abfrr_cd_ferrv_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_lt_ferrv">
<f:facet name="header">
<h:panelGroup id="pg_abfrr_lt_ferrv_tt">
<h:outputText id="hd_abfrr_lt_ferrv_tt_xide" title="#{iimsg.IXAbastecimentoFerr_abfrr_lt_ferrv_tt}" value="#{iimsg.IXAbastecimentoFerr_abfrr_lt_ferrv_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXAbastecimentoFerr_tabs_vc_tt}" value="#{iimsg.IXAbastecimentoFerr_tabs_vc_ta}"/>
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
<!-- assist 1 -->
<h:column rendered="#{cadIXAbastecimentoFerrBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
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
<h:column id="sel__a_scrollbar">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_aa">
<f:facet name="footer">
<h:panelGroup id="fpg_abfrr_aa">
<h:inputText id="abfrr_aa_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAbastecimentoFerrBean.fil_abfrr_aa}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_mm">
<f:facet name="footer">
<h:panelGroup id="fpg_abfrr_mm">
<h:inputText id="abfrr_mm_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAbastecimentoFerrBean.fil_abfrr_mm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_posto">
<f:facet name="footer">
<h:panelGroup id="fpg_abfrr_cd_posto">
<h:inputText id="abfrr_cd_posto_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAbastecimentoFerrBean.fil_abfrr_cd_posto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_ferrv">
<f:facet name="footer">
<h:panelGroup id="fpg_abfrr_cd_ferrv">
<h:inputText id="abfrr_cd_ferrv_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAbastecimentoFerrBean.fil_abfrr_cd_ferrv}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_lt_ferrv">
<f:facet name="footer">
<h:panelGroup id="fpg_abfrr_lt_ferrv">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAbastecimentoFerrBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<!-- assist 1 -->
<h:column rendered="#{cadIXAbastecimentoFerrBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadIXAbastecimentoFerrBean.pesqData}"
var="IXAbastecimentoFerr"
binding="#{cadIXAbastecimentoFerrBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXAbastecimentoFerrBean.pageLength}"
first="#{cadIXAbastecimentoFerrBean.currentLine}">
<!-- propColumnGen -->
<h:column id="abfrr_aa">
<h:panelGroup id="pg_abfrr_aa_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_abfrr_aa"  value="#{IXAbastecimentoFerr.abfrr_aa}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_mm">
<h:panelGroup id="pg_abfrr_mm_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_abfrr_mm"  value="#{IXAbastecimentoFerr.abfrr_mm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_posto">
<h:panelGroup id="pg_abfrr_cd_posto_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_abfrr_cd_posto"  value="#{IXAbastecimentoFerr.abfrr_cd_posto}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_cd_ferrv">
<h:panelGroup id="pg_abfrr_cd_ferrv_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_abfrr_cd_ferrv"  value="#{IXAbastecimentoFerr.abfrr_cd_ferrv}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="abfrr_lt_ferrv">
<h:panelGroup id="pg_abfrr_lt_ferrv_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_abfrr_lt_ferrv"  value="#{IXAbastecimentoFerr.abfrr_lt_ferrv}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXAbastecimentoFerr" onmousedown="wtran='ixabastecimentoferrcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_abfrr_aa').innerHTML;valor2=el(aa+'sel_abfrr_mm').innerHTML;valor3=el(aa+'sel_abfrr_cd_posto').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXAbastecimentoFerr.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:commandLink id="flag_imgrecd_wd" action="#{cadIXAbastecimentoFerrBean.doObternullSearchBack}" onmousedown="wtran='ixabastecimentoferrcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_abfrr_aa');valor2=rpel(aa+'sel_abfrr_mm');valor3=rpel(aa+'sel_abfrr_cd_posto');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadIXAbastecimentoFerrBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_abfrr_cd_posto');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
</h:dataTable>
<!-- Dados -->
</div>
</div>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
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
<iframe id="IXAbastecimentoFerr" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsAbfrr" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXAbastecimentoFerrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXAbastecimentoFerrBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixabastecimentoferr" action="#{cadIXAbastecimentoFerrBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixabastecimentoferr" action="#{cadIXAbastecimentoFerrBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xrec_obxlsabfrr" action="#{cadObxlsAbfrrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsabfrr" action="#{cadObxlsAbfrrBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
