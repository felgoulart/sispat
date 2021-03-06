<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXVagaoDesempBean");%>
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
<link rel="stylesheet" href="../IXVagaoDesemppsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixvagaodesemppsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIXVagaoDesempBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXVagaoDesempSfm';;tran='ixvagaodesemppsq'; vl='';cadbeanx='cadIXVagaoDesempBean';<%session.setAttribute("tipo","ixvagaodesemppsq");%>">
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
<h:outputText value="#{cadIXVagaoDesempBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXVagaoDesempBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXVagaoDesempBean.hasPrevPage}" action="#{cadIXVagaoDesempBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXVagaoDesempBean.hasNextPage}" action="#{cadIXVagaoDesempBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXVagaoDesempBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXVagaoDesempBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXVagaoDesempBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadIXVagaoDesempBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('ixvagaodesempcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXVagaoDesempBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadIXVagaoDesempBean.canPesquisar}" title="#{iimsg.IXVagaoDesemp_XlsImport_xls_stb_tt}" image="../imagens/excellRed.jpg" onmousedown="fExecx('obxlsvgdspcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsVgdspBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIXVagaoDesempBean.canPesquisar}" title="#{iimsg.IXVagaoDesemp_XlsExport_xls_stb_tt}" image="../imagens/btXls.gif" action="#{cadIXVagaoDesempBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXVagaoDesemp');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXVagaoDesempSfm" tabindex="-1" rendered="#{cadIXVagaoDesempBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXVagaoDesempSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXVagaoDesempBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXVagaoDesempBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIXVagaoDesempBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXVagaoDesempBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="vgdsp_aa">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_aa_tt">
<h:outputText id="hd_vgdsp_aa_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_aa_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_aa_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_vgdsp_aa" action="#{cadIXVagaoDesempBean.doOrd_vgdsp_aa}">
<ps:psGraphicImage id="hord_vgdsp_aa_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadIXVagaoDesempBean.ord_vgdsp_aa_desc}"/>
<ps:psGraphicImage id="hord_vgdsp_aa" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadIXVagaoDesempBean.ord_vgdsp_aa}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="ixvagaodesemppsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_mm">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_mm_tt">
<h:outputText id="hd_vgdsp_mm_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_mm_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_mm_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_vgdsp_mm" action="#{cadIXVagaoDesempBean.doOrd_vgdsp_mm}">
<ps:psGraphicImage id="hord_vgdsp_mm_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadIXVagaoDesempBean.ord_vgdsp_mm_desc}"/>
<ps:psGraphicImage id="hord_vgdsp_mm" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadIXVagaoDesempBean.ord_vgdsp_mm}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="ixvagaodesemppsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_tp_vagao">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_tp_vagao_tt">
<h:outputText id="hd_vgdsp_tp_vagao_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_tp_vagao_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_tp_vagao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_prop">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_imob_oficina_prop_tt">
<h:outputText id="hd_vgdsp_vl_imob_oficina_prop_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_oficina_prop_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_oficina_prop_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_terc">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_imob_oficina_terc_tt">
<h:outputText id="hd_vgdsp_vl_imob_oficina_terc_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_oficina_terc_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_oficina_terc_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_morta">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_imob_morta_tt">
<h:outputText id="hd_vgdsp_vl_imob_morta_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_morta_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_imob_morta_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_prop">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_disp_naoutil_prop_tt">
<h:outputText id="hd_vgdsp_vl_disp_naoutil_prop_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_disp_naoutil_prop_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_disp_naoutil_prop_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_terc">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_disp_naoutil_terc_tt">
<h:outputText id="hd_vgdsp_vl_disp_naoutil_terc_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_disp_naoutil_terc_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_disp_naoutil_terc_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_prop">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_util_prop_tt">
<h:outputText id="hd_vgdsp_vl_util_prop_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_prop_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_prop_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_terc">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_util_terc_tt">
<h:outputText id="hd_vgdsp_vl_util_terc_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_terc_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_terc_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_servint">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_util_servint_tt">
<h:outputText id="hd_vgdsp_vl_util_servint_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_servint_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_util_servint_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tu_transp">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_tu_transp_tt">
<h:outputText id="hd_vgdsp_vl_tu_transp_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_tu_transp_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_tu_transp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tku_produzida">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_tku_produzida_tt">
<h:outputText id="hd_vgdsp_vl_tku_produzida_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_tku_produzida_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_tku_produzida_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_dist_percorrida">
<f:facet name="header">
<h:panelGroup id="pg_vgdsp_vl_dist_percorrida_tt">
<h:outputText id="hd_vgdsp_vl_dist_percorrida_tt_xide" title="#{iimsg.IXVagaoDesemp_vgdsp_vl_dist_percorrida_tt}" value="#{iimsg.IXVagaoDesemp_vgdsp_vl_dist_percorrida_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXVagaoDesemp_tabs_vc_tt}" value="#{iimsg.IXVagaoDesemp_tabs_vc_ta}"/>
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
<h:column rendered="#{cadIXVagaoDesempBean.assist}">
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
<h:column id="vgdsp_aa">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_aa">
<h:inputText id="vgdsp_aa_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXVagaoDesempBean.fil_vgdsp_aa}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_mm">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_mm">
<h:inputText id="vgdsp_mm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXVagaoDesempBean.fil_vgdsp_mm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_tp_vagao">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_tp_vagao">
<h:inputText id="vgdsp_tp_vagao_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXVagaoDesempBean.fil_vgdsp_tp_vagao}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_prop">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_imob_oficina_prop">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_terc">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_imob_oficina_terc">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_morta">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_imob_morta">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_prop">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_disp_naoutil_prop">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_terc">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_disp_naoutil_terc">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_prop">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_util_prop">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_terc">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_util_terc">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_servint">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_util_servint">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tu_transp">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_tu_transp">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tku_produzida">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_tku_produzida">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_dist_percorrida">
<f:facet name="footer">
<h:panelGroup id="fpg_vgdsp_vl_dist_percorrida">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXVagaoDesempBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadIXVagaoDesempBean.assist}">
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
value="#{cadIXVagaoDesempBean.pesqData}"
var="IXVagaoDesemp"
binding="#{cadIXVagaoDesempBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXVagaoDesempBean.pageLength}"
first="#{cadIXVagaoDesempBean.currentLine}">
<!-- propColumnGen -->
<h:column id="vgdsp_aa">
<h:panelGroup id="pg_vgdsp_aa_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_aa"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_aa}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_mm">
<h:panelGroup id="pg_vgdsp_mm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_mm"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_mm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_tp_vagao">
<h:panelGroup id="pg_vgdsp_tp_vagao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_tp_vagao"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_tp_vagao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_prop">
<h:panelGroup id="pg_vgdsp_vl_imob_oficina_prop_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_imob_oficina_prop" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_imob_oficina_prop_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_oficina_terc">
<h:panelGroup id="pg_vgdsp_vl_imob_oficina_terc_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_imob_oficina_terc" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_imob_oficina_terc_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_imob_morta">
<h:panelGroup id="pg_vgdsp_vl_imob_morta_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_imob_morta" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_imob_morta_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_prop">
<h:panelGroup id="pg_vgdsp_vl_disp_naoutil_prop_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_disp_naoutil_prop" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_disp_naoutil_prop_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_disp_naoutil_terc">
<h:panelGroup id="pg_vgdsp_vl_disp_naoutil_terc_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_disp_naoutil_terc" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_disp_naoutil_terc_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_prop">
<h:panelGroup id="pg_vgdsp_vl_util_prop_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_util_prop" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_util_prop_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_terc">
<h:panelGroup id="pg_vgdsp_vl_util_terc_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_util_terc" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_util_terc_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_util_servint">
<h:panelGroup id="pg_vgdsp_vl_util_servint_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_vgdsp_vl_util_servint" onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_util_servint_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tu_transp">
<h:panelGroup id="pg_vgdsp_vl_tu_transp_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_vl_tu_transp"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_tu_transp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_tku_produzida">
<h:panelGroup id="pg_vgdsp_vl_tku_produzida_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_vl_tku_produzida"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_tku_produzida}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="vgdsp_vl_dist_percorrida">
<h:panelGroup id="pg_vgdsp_vl_dist_percorrida_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_vgdsp_vl_dist_percorrida"  onclick="slvl(this.id,this.value);" value="#{IXVagaoDesemp.vgdsp_vl_dist_percorrida}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXVagaoDesemp" onmousedown="wtran='ixvagaodesempcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_vgdsp_aa').innerHTML;valor2=el(aa+'sel_vgdsp_mm').innerHTML;valor3=el(aa+'sel_vgdsp_tp_vagao').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXVagaoDesemp.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadIXVagaoDesempBean.doObternullSearchBack}" onmousedown="wtran='ixvagaodesempcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_vgdsp_aa');valor2=rpel(aa+'sel_vgdsp_mm');valor3=rpel(aa+'sel_vgdsp_tp_vagao');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadIXVagaoDesempBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_vgdsp_tp_vagao');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="IXVagaoDesemp" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsVgdsp" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXVagaoDesempBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXVagaoDesempBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixvagaodesemp" action="#{cadIXVagaoDesempBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixvagaodesemp" action="#{cadIXVagaoDesempBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xrec_obxlsvgdsp" action="#{cadObxlsVgdspBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsvgdsp" action="#{cadObxlsVgdspBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
