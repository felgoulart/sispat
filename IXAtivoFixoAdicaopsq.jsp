<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXAtivoFixoAdicaoBean");%>
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
<link rel="stylesheet" href="../IXAtivoFixoAdicaopsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixativofixoadicaopsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:atvfx_cd_invty_ultm_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIXAtivoFixoAdicaoBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXAtivoFixoAdicaoSfm';;tran='ixativofixoadicaopsq'; vl='';cadbeanx='cadIXAtivoFixoAdicaoBean';<%session.setAttribute("tipo","ixativofixoadicaopsq");%>">
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
<h:outputText value="#{cadIXAtivoFixoAdicaoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXAtivoFixoAdicaoBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXAtivoFixoAdicaoBean.hasPrevPage}" action="#{cadIXAtivoFixoAdicaoBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXAtivoFixoAdicaoBean.hasNextPage}" action="#{cadIXAtivoFixoAdicaoBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXAtivoFixoAdicaoBean.doSelecionar}">
<f:param name="tipo" value="ixativofixoadicaopsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXAtivoFixoAdicaoBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXAtivoFixoAdicaoBean.doLimparPesq}"/>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadIXAtivoFixoAdicaoBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('ixativofixoadicaocad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXAtivoFixoAdicaoBean.doNovo}">
</ps:psCommandLink>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadIXAtivoFixoAdicaoBean.canPesquisar}" title="#{iimsg.IXAtivoFixoAdicao_XlsImport_xls_stb_tt}" image="../imagens/excellRed.jpg" onmousedown="fExecx('obxlsafadccad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsAfadcBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIXAtivoFixoAdicaoBean.canPesquisar}" title="#{iimsg.IXAtivoFixoAdicao_XlsExport_xls_stb_tt}" image="../imagens/btXls.gif" action="#{cadIXAtivoFixoAdicaoBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoAdicao');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXAtivoFixoAdicaoSfm" tabindex="-1" rendered="#{cadIXAtivoFixoAdicaoBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoAdicaoSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXAtivoFixoAdicaoBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXAtivoFixoAdicaoBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIXAtivoFixoAdicaoBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXAtivoFixoAdicaoBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="atvfx_tp_propriedade">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_tp_propriedade_tt">
<h:outputText id="hd_atvfx_tp_propriedade_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_tp_propriedade_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_tp_propriedade_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_tt">
<h:outputText id="hd_atvfx_cd_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_tt">
<h:outputText id="hd_atvfx_ds_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_ds_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_tp_cfasttp">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_tp_cfasttp_tt">
<h:outputText id="hd_atvfx_tp_cfasttp_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_tp_cfasttp_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_tp_cfasttp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_tt">
<h:outputText id="hd_atvfx_cd_invty_ultm_tt" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_invty_ultm_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_invty_ultm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_municipio_tt">
<h:outputText id="hd_atvfx_ds_municipio_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_ds_municipio_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_ds_municipio_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_km">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_km_tt">
<h:outputText id="hd_atvfx_km_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_km_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_km_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ue">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_ue_tt">
<h:outputText id="hd_atvfx_cd_ue_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_ue_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_ue_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_pconta_tt">
<h:outputText id="hd_atvfx_cd_pconta_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_pconta_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_pconta_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_cls_tt">
<h:outputText id="hd_atvfx_cd_cls_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_cls_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_cls_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_centro_custo_tt">
<h:outputText id="hd_atvfx_cd_centro_custo_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_centro_custo_tt}" value="#{iimsg.IXAtivoFixoAdicao_atvfx_cd_centro_custo_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXAtivoFixoAdicao_tabs_vc_tt}" value="#{iimsg.IXAtivoFixoAdicao_tabs_vc_ta}"/>
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
<h:column rendered="#{cadIXAtivoFixoAdicaoBean.assist}">
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
<h:column id="atvfx_tp_propriedade">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_tp_propriedade">
<h:inputText id="atvfx_tp_propriedade_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_tp_propriedade}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd">
<h:inputText id="atvfx_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds">
<h:inputText id="atvfx_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_tp_cfasttp">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_tp_cfasttp">
<h:inputText id="atvfx_tp_cfasttp_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_invty_ultm">
<!--   // 444-->
<h:inputText id="atvfx_cd_invty_ultm_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Invtypsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();"onclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd_invty_ultm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds_municipio">
<h:inputText id="atvfx_ds_municipio_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_ds_municipio}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_km">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_km">
<h:inputText id="atvfx_km_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_km}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ue">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_ue">
<h:inputText id="atvfx_cd_ue_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd_ue}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_pconta">
<h:inputText id="atvfx_cd_pconta_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd_pconta}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_cls">
<h:inputText id="atvfx_cd_cls_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd_cls}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_centro_custo">
<h:inputText id="atvfx_cd_centro_custo_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_atvfx_cd_centro_custo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoAdicaoBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadIXAtivoFixoAdicaoBean.assist}">
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
value="#{cadIXAtivoFixoAdicaoBean.pesqData}"
var="IXAtivoFixoAdicao"
binding="#{cadIXAtivoFixoAdicaoBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXAtivoFixoAdicaoBean.pageLength}"
first="#{cadIXAtivoFixoAdicaoBean.currentLine}">
<!-- propColumnGen -->
<h:column id="atvfx_tp_propriedade">
<h:panelGroup id="pg_atvfx_tp_propriedade_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_tp_propriedade"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_tp_propriedade}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<h:panelGroup id="pg_atvfx_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<h:panelGroup id="pg_atvfx_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_tp_cfasttp">
<h:panelGroup id="pg_atvfx_tp_cfasttp_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_tp_cfasttp"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_fk">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_sg">
<!--   // 333-->
<h:outputLabel id="sel_atvfx_cd_invty_ultm" onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd_invty_ultm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<h:panelGroup id="pg_atvfx_ds_municipio_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds_municipio"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_ds_municipio}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_km">
<h:panelGroup id="pg_atvfx_km_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_km"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_km}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ue">
<h:panelGroup id="pg_atvfx_cd_ue_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_ue"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd_ue}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<h:panelGroup id="pg_atvfx_cd_pconta_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_pconta"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd_pconta}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<h:panelGroup id="pg_atvfx_cd_cls_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_cls"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd_cls}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<h:panelGroup id="pg_atvfx_cd_centro_custo_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_centro_custo"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoAdicao.atvfx_cd_centro_custo}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXAtivoFixoAdicao" onmousedown="wtran='ixativofixoadicaocad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_atvfx_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXAtivoFixoAdicao.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadIXAtivoFixoAdicaoBean.doObternullSearchBack}" onmousedown="wtran='ixativofixoadicaocad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_atvfx_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadIXAtivoFixoAdicaoBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_atvfx_cd');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="IXAtivoFixoAdicao" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsAfadc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXAtivoFixoAdicaoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXAtivoFixoAdicaoBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixativofixoadicao" action="#{cadIXAtivoFixoAdicaoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixativofixoadicao" action="#{cadIXAtivoFixoAdicaoBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xrec_obxlsafadc" action="#{cadObxlsAfadcBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsafadc" action="#{cadObxlsAfadcBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
