<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXTremFormadoBean");%>
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
<link rel="stylesheet" href="../IXTremFormadopsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixtremformadopsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIXTremFormadoBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXTremFormadoSfm';;tran='ixtremformadopsq'; vl='';cadbeanx='cadIXTremFormadoBean';<%session.setAttribute("tipo","ixtremformadopsq");%>">
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
<h:outputText value="#{cadIXTremFormadoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXTremFormadoBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXTremFormadoBean.hasPrevPage}" action="#{cadIXTremFormadoBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXTremFormadoBean.hasNextPage}" action="#{cadIXTremFormadoBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXTremFormadoBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXTremFormadoBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXTremFormadoBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadIXTremFormadoBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('ixtremformadocad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXTremFormadoBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadIXTremFormadoBean.canPesquisar}" title="#{iimsg.IXTremFormado_XlsImport_xls_stb_tt}" image="../imagens/excellYellow.jpg" onmousedown="fExecx('obxlstrfrmcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsTrfrmBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIXTremFormadoBean.canPesquisar}" title="#{iimsg.IXTremFormado_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadIXTremFormadoBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXTremFormado');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXTremFormadoSfm" tabindex="-1" rendered="#{cadIXTremFormadoBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXTremFormadoSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXTremFormadoBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXTremFormadoBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIXTremFormadoBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXTremFormadoBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<!-- propColumnGen -->
<h:column id="trfmd_aa">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_aa_tt">
<h:outputText id="hd_trfmd_aa_tt_xide" title="#{iimsg.IXTremFormado_trfmd_aa_tt}" value="#{iimsg.IXTremFormado_trfmd_aa_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_trfmd_aa" action="#{cadIXTremFormadoBean.doOrd_trfmd_aa}">
<ps:psGraphicImage id="hord_trfmd_aa_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadIXTremFormadoBean.ord_trfmd_aa_desc}"/>
<ps:psGraphicImage id="hord_trfmd_aa" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadIXTremFormadoBean.ord_trfmd_aa}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="ixtremformadopsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_mm">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_mm_tt">
<h:outputText id="hd_trfmd_mm_tt_xide" title="#{iimsg.IXTremFormado_trfmd_mm_tt}" value="#{iimsg.IXTremFormado_trfmd_mm_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_trfmd_mm" action="#{cadIXTremFormadoBean.doOrd_trfmd_mm}">
<ps:psGraphicImage id="hord_trfmd_mm_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadIXTremFormadoBean.ord_trfmd_mm_desc}"/>
<ps:psGraphicImage id="hord_trfmd_mm" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadIXTremFormadoBean.ord_trfmd_mm}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="ixtremformadopsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_orig">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_cd_patio_orig_tt">
<h:outputText id="hd_trfmd_cd_patio_orig_tt_xide" title="#{iimsg.IXTremFormado_trfmd_cd_patio_orig_tt}" value="#{iimsg.IXTremFormado_trfmd_cd_patio_orig_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_dest">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_cd_patio_dest_tt">
<h:outputText id="hd_trfmd_cd_patio_dest_tt_xide" title="#{iimsg.IXTremFormado_trfmd_cd_patio_dest_tt}" value="#{iimsg.IXTremFormado_trfmd_cd_patio_dest_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_px_trem">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_px_trem_tt">
<h:outputText id="hd_trfmd_px_trem_tt_xide" title="#{iimsg.IXTremFormado_trfmd_px_trem_tt}" value="#{iimsg.IXTremFormado_trfmd_px_trem_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_trem">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_tp_trem_tt">
<h:outputText id="hd_trfmd_tp_trem_tt_xide" title="#{iimsg.IXTremFormado_trfmd_tp_trem_tt}" value="#{iimsg.IXTremFormado_trfmd_tp_trem_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_trens_formados">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_qt_trens_formados_tt">
<h:outputText id="hd_trfmd_qt_trens_formados_tt_xide" title="#{iimsg.IXTremFormado_trfmd_qt_trens_formados_tt}" value="#{iimsg.IXTremFormado_trfmd_qt_trens_formados_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_dc_percorrida">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_dc_percorrida_tt">
<h:outputText id="hd_trfmd_dc_percorrida_tt_xide" title="#{iimsg.IXTremFormado_trfmd_dc_percorrida_tt}" value="#{iimsg.IXTremFormado_trfmd_dc_percorrida_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_carga">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_tp_carga_tt">
<h:outputText id="hd_trfmd_tp_carga_tt_xide" title="#{iimsg.IXTremFormado_trfmd_tp_carga_tt}" value="#{iimsg.IXTremFormado_trfmd_tp_carga_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_passagwiro">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_tp_passagwiro_tt">
<h:outputText id="hd_trfmd_tp_passagwiro_tt_xide" title="#{iimsg.IXTremFormado_trfmd_tp_passagwiro_tt}" value="#{iimsg.IXTremFormado_trfmd_tp_passagwiro_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_serv">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_tp_serv_tt">
<h:outputText id="hd_trfmd_tp_serv_tt_xide" title="#{iimsg.IXTremFormado_trfmd_tp_serv_tt}" value="#{iimsg.IXTremFormado_trfmd_tp_serv_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_locomotivas">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_qt_locomotivas_tt">
<h:outputText id="hd_trfmd_qt_locomotivas_tt_xide" title="#{iimsg.IXTremFormado_trfmd_qt_locomotivas_tt}" value="#{iimsg.IXTremFormado_trfmd_qt_locomotivas_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_carregados">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_qt_vags_carregados_tt">
<h:outputText id="hd_trfmd_qt_vags_carregados_tt_xide" title="#{iimsg.IXTremFormado_trfmd_qt_vags_carregados_tt}" value="#{iimsg.IXTremFormado_trfmd_qt_vags_carregados_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_vazios">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_qt_vags_vazios_tt">
<h:outputText id="hd_trfmd_qt_vags_vazios_tt_xide" title="#{iimsg.IXTremFormado_trfmd_qt_vags_vazios_tt}" value="#{iimsg.IXTremFormado_trfmd_qt_vags_vazios_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_vl_compr_trem">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_vl_compr_trem_tt">
<h:outputText id="hd_trfmd_vl_compr_trem_tt_xide" title="#{iimsg.IXTremFormado_trfmd_vl_compr_trem_tt}" value="#{iimsg.IXTremFormado_trfmd_vl_compr_trem_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tkb">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_md_tkb_tt">
<h:outputText id="hd_trfmd_md_tkb_tt_xide" title="#{iimsg.IXTremFormado_trfmd_md_tkb_tt}" value="#{iimsg.IXTremFormado_trfmd_md_tkb_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tku">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_md_tku_tt">
<h:outputText id="hd_trfmd_md_tku_tt_xide" title="#{iimsg.IXTremFormado_trfmd_md_tku_tt}" value="#{iimsg.IXTremFormado_trfmd_md_tku_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tm_percurso">
<f:facet name="header">
<h:panelGroup id="pg_trfmd_tm_percurso_tt">
<h:outputText id="hd_trfmd_tm_percurso_tt_xide" title="#{iimsg.IXTremFormado_trfmd_tm_percurso_tt}" value="#{iimsg.IXTremFormado_trfmd_tm_percurso_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria1">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria1_tt">
<h:outputText id="hd_trfmm_cd_mercadoria1_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria1_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria1_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria2">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria2_tt">
<h:outputText id="hd_trfmm_cd_mercadoria2_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria2_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria2_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria3">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria3_tt">
<h:outputText id="hd_trfmm_cd_mercadoria3_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria3_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria3_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria4">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria4_tt">
<h:outputText id="hd_trfmm_cd_mercadoria4_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria4_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria4_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria5">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria5_tt">
<h:outputText id="hd_trfmm_cd_mercadoria5_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria5_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria5_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria6">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria6_tt">
<h:outputText id="hd_trfmm_cd_mercadoria6_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria6_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria6_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria7">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria7_tt">
<h:outputText id="hd_trfmm_cd_mercadoria7_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria7_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria7_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria8">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria8_tt">
<h:outputText id="hd_trfmm_cd_mercadoria8_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria8_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria8_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria9">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria9_tt">
<h:outputText id="hd_trfmm_cd_mercadoria9_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria9_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria9_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria10">
<f:facet name="header">
<h:panelGroup id="pg_trfmm_cd_mercadoria10_tt">
<h:outputText id="hd_trfmm_cd_mercadoria10_tt_xide" title="#{iimsg.IXTremFormado_trfmm_cd_mercadoria10_tt}" value="#{iimsg.IXTremFormado_trfmm_cd_mercadoria10_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXTremFormado_tabs_vc_tt}" value="#{iimsg.IXTremFormado_tabs_vc_ta}"/>
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
<h:column rendered="#{cadIXTremFormadoBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
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
<!-- propColumnGen -->
<h:column id="trfmd_aa">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_aa">
<h:inputText id="trfmd_aa_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_aa}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_mm">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_mm">
<h:inputText id="trfmd_mm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_mm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_orig">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_cd_patio_orig">
<h:inputText id="trfmd_cd_patio_orig_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_cd_patio_orig}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_dest">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_cd_patio_dest">
<h:inputText id="trfmd_cd_patio_dest_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_cd_patio_dest}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_px_trem">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_px_trem">
<h:inputText id="trfmd_px_trem_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_px_trem}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_trem">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_tp_trem">
<h:inputText id="trfmd_tp_trem_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_tp_trem}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_trens_formados">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_qt_trens_formados">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_dc_percorrida">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_dc_percorrida">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_carga">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_tp_carga">
<h:inputText id="trfmd_tp_carga_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_tp_carga}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_passagwiro">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_tp_passagwiro">
<h:inputText id="trfmd_tp_passagwiro_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_tp_passagwiro}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_serv">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_tp_serv">
<h:inputText id="trfmd_tp_serv_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_trfmd_tp_serv}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_locomotivas">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_qt_locomotivas">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_carregados">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_qt_vags_carregados">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_vazios">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_qt_vags_vazios">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_vl_compr_trem">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_vl_compr_trem">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tkb">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_md_tkb">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tku">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_md_tku">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tm_percurso">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmd_tm_percurso">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria1">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria1">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria2">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria2">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria3">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria3">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria4">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria4">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria5">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria5">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria6">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria6">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria7">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria7">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria8">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria8">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria9">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria9">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria10">
<f:facet name="footer">
<h:panelGroup id="fpg_trfmm_cd_mercadoria10">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXTremFormadoBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadIXTremFormadoBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="sel__a_scrollbar_right">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar_right__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadIXTremFormadoBean.pesqData}"
var="IXTremFormado"
binding="#{cadIXTremFormadoBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXTremFormadoBean.pageLength}"
first="#{cadIXTremFormadoBean.currentLine}">
<!-- propColumnGen -->
<h:column id="trfmd_aa">
<h:panelGroup id="pg_trfmd_aa_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_aa"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_aa}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_mm">
<h:panelGroup id="pg_trfmd_mm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_mm"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_mm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_orig">
<h:panelGroup id="pg_trfmd_cd_patio_orig_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_cd_patio_orig"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_cd_patio_orig}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_cd_patio_dest">
<h:panelGroup id="pg_trfmd_cd_patio_dest_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_cd_patio_dest"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_cd_patio_dest}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_px_trem">
<h:panelGroup id="pg_trfmd_px_trem_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_px_trem"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_px_trem}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_trem">
<h:panelGroup id="pg_trfmd_tp_trem_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_tp_trem"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_tp_trem}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_trens_formados">
<h:panelGroup id="pg_trfmd_qt_trens_formados_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_trfmd_qt_trens_formados" onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_qt_trens_formados_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_dc_percorrida">
<h:panelGroup id="pg_trfmd_dc_percorrida_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_trfmd_dc_percorrida" onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_dc_percorrida_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_carga">
<h:panelGroup id="pg_trfmd_tp_carga_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_tp_carga"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_tp_carga}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_passagwiro">
<h:panelGroup id="pg_trfmd_tp_passagwiro_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_tp_passagwiro"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_tp_passagwiro}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tp_serv">
<h:panelGroup id="pg_trfmd_tp_serv_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_tp_serv"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_tp_serv}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_locomotivas">
<h:panelGroup id="pg_trfmd_qt_locomotivas_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_qt_locomotivas"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_qt_locomotivas}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_carregados">
<h:panelGroup id="pg_trfmd_qt_vags_carregados_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_qt_vags_carregados"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_qt_vags_carregados}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_qt_vags_vazios">
<h:panelGroup id="pg_trfmd_qt_vags_vazios_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_qt_vags_vazios"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_qt_vags_vazios}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_vl_compr_trem">
<h:panelGroup id="pg_trfmd_vl_compr_trem_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_vl_compr_trem"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_vl_compr_trem}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tkb">
<h:panelGroup id="pg_trfmd_md_tkb_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_md_tkb"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_md_tkb}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_md_tku">
<h:panelGroup id="pg_trfmd_md_tku_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmd_md_tku"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_md_tku}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmd_tm_percurso">
<h:panelGroup id="pg_trfmd_tm_percurso_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_trfmd_tm_percurso" onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmd_tm_percurso_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria1">
<h:panelGroup id="pg_trfmm_cd_mercadoria1_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria1"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria1}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria2">
<h:panelGroup id="pg_trfmm_cd_mercadoria2_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria2"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria2}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria3">
<h:panelGroup id="pg_trfmm_cd_mercadoria3_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria3"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria3}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria4">
<h:panelGroup id="pg_trfmm_cd_mercadoria4_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria4"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria4}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria5">
<h:panelGroup id="pg_trfmm_cd_mercadoria5_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria5"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria5}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria6">
<h:panelGroup id="pg_trfmm_cd_mercadoria6_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria6"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria6}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria7">
<h:panelGroup id="pg_trfmm_cd_mercadoria7_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria7"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria7}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria8">
<h:panelGroup id="pg_trfmm_cd_mercadoria8_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria8"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria8}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria9">
<h:panelGroup id="pg_trfmm_cd_mercadoria9_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria9"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria9}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="trfmm_cd_mercadoria10">
<h:panelGroup id="pg_trfmm_cd_mercadoria10_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_trfmm_cd_mercadoria10"  onclick="slvl(this.id,this.value);" value="#{IXTremFormado.trfmm_cd_mercadoria10}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXTremFormado" onmousedown="wtran='ixtremformadocad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_trfmd_aa').innerHTML;valor2=el(aa+'sel_trfmd_mm').innerHTML;valor3=el(aa+'sel_trfmd_cd_patio_orig').innerHTML;valor4=el(aa+'sel_trfmd_cd_patio_dest').innerHTML;valor5=el(aa+'sel_trfmd_px_trem').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3+','+valor4+','+valor5;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXTremFormado.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadIXTremFormadoBean.doObternullSearchBack}" onmousedown="wtran='ixtremformadocad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_trfmd_aa');valor2=rpel(aa+'sel_trfmd_mm');valor3=rpel(aa+'sel_trfmd_cd_patio_orig');valor4=rpel(aa+'sel_trfmd_cd_patio_dest');valor5=rpel(aa+'sel_trfmd_px_trem');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3+','+valor4+','+valor5;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadIXTremFormadoBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_trfmd_px_trem');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
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
<iframe id="IXTremFormado" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsTrfrm" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXTremFormadoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXTremFormadoBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixtremformado" action="#{cadIXTremFormadoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixtremformado" action="#{cadIXTremFormadoBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xrec_obxlstrfrm" action="#{cadObxlsTrfrmBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlstrfrm" action="#{cadObxlsTrfrmBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
