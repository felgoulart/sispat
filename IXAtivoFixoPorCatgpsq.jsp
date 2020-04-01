<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXAtivoFixoPorCatgBean");%>
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
<link rel="stylesheet" href="../IXAtivoFixoPorCatgpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixativofixoporcatgpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:atvfx_cd_invty_ultm_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_atvfx_tp_cfasttp_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIXAtivoFixoPorCatgBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXAtivoFixoPorCatgSfm';;tran='ixativofixoporcatgpsq'; vl='';cadbeanx='cadIXAtivoFixoPorCatgBean';<%session.setAttribute("tipo","ixativofixoporcatgpsq");%>">
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
<h:outputText value="#{cadIXAtivoFixoPorCatgBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXAtivoFixoPorCatgBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXAtivoFixoPorCatgBean.hasPrevPage}" action="#{cadIXAtivoFixoPorCatgBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXAtivoFixoPorCatgBean.hasNextPage}" action="#{cadIXAtivoFixoPorCatgBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXAtivoFixoPorCatgBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXAtivoFixoPorCatgBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXAtivoFixoPorCatgBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadIXAtivoFixoPorCatgBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('ixativofixoporcatgcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXAtivoFixoPorCatgBean.doNovo}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIXAtivoFixoPorCatgBean.canPesquisar}" title="#{iimsg.IXAtivoFixoPorCatg_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadIXAtivoFixoPorCatgBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoPorCatg');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXAtivoFixoPorCatgSfm" tabindex="-1" rendered="#{cadIXAtivoFixoPorCatgBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoPorCatgSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXAtivoFixoPorCatgBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXAtivoFixoPorCatgBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIXAtivoFixoPorCatgBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXAtivoFixoPorCatgBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="atvfx_cd">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_tt">
<h:outputText id="hd_atvfx_cd_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_tt">
<h:outputText id="hd_atvfx_cd_invty_ultm_tt" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_invty_ultm_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_invty_ultm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_tt">
<h:outputText id="hd_atvfx_ds_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_ds_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp_tt">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_tp_cfasttp_tt">
<h:outputText id="hd_atvfx_tp_cfasttp_tt" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_tp_cfasttp_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_tp_cfasttp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_centro_custo_tt">
<h:outputText id="hd_atvfx_cd_centro_custo_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_centro_custo_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_centro_custo_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_pconta_tt">
<h:outputText id="hd_atvfx_cd_pconta_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_pconta_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_pconta_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_cls_tt">
<h:outputText id="hd_atvfx_cd_cls_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_cls_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_cls_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_category">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_category_tt">
<h:outputText id="hd_atvfx_cd_category_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_category_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_category_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_sub_grp">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_ctg_sub_grp_tt">
<h:outputText id="hd_atvfx_cd_ctg_sub_grp_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_ctg_sub_grp_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_ctg_sub_grp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_det">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_ctg_det_tt">
<h:outputText id="hd_atvfx_cd_ctg_det_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_ctg_det_tt}" value="#{iimsg.IXAtivoFixoPorCatg_atvfx_cd_ctg_det_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXAtivoFixoPorCatg_tabs_vc_tt}" value="#{iimsg.IXAtivoFixoPorCatg_tabs_vc_ta}"/>
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
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd">
<h:inputText id="atvfx_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_invty_ultm">
<!--   // 444-->
<h:inputText id="atvfx_cd_invty_ultm_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Invtypsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_invty_ultm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds">
<h:inputText id="atvfx_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_atvfx_tp_cfasttp">
<h:inputText id="fil_atvfx_tp_cfasttp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ASTTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_centro_custo">
<h:inputText id="atvfx_cd_centro_custo_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_centro_custo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_pconta">
<h:inputText id="atvfx_cd_pconta_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_pconta}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_cls">
<h:inputText id="atvfx_cd_cls_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_cls}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_category">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_category">
<h:inputText id="atvfx_cd_category_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_category}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_sub_grp">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_ctg_sub_grp">
<h:inputText id="atvfx_cd_ctg_sub_grp_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_ctg_sub_grp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_det">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_ctg_det">
<h:inputText id="atvfx_cd_ctg_det_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_atvfx_cd_ctg_det}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorCatgBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:461px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadIXAtivoFixoPorCatgBean.pesqData}"
var="IXAtivoFixoPorCatg"
binding="#{cadIXAtivoFixoPorCatgBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXAtivoFixoPorCatgBean.pageLength}"
first="#{cadIXAtivoFixoPorCatgBean.currentLine}">
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<h:panelGroup id="pg_atvfx_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_fk">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_sg">
<!--   // 333-->
<h:outputLabel id="sel_atvfx_cd_invty_ultm" onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_invty_ultm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<h:panelGroup id="pg_atvfx_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_ds}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp">
<h:panelGroup id="pg_atvfx_tp_cfasttp_sg">
<h:outputLabel id="sel_atvfx_tp_cfasttp" title="#{IXAtivoFixoPorCatg.atvfx_tp_cfasttp_desc}" onclick="slvlcd(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<h:panelGroup id="pg_atvfx_cd_centro_custo_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_centro_custo"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_centro_custo}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_pconta">
<h:panelGroup id="pg_atvfx_cd_pconta_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_pconta"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_pconta}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_cls">
<h:panelGroup id="pg_atvfx_cd_cls_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_cls"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_cls}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_category">
<h:panelGroup id="pg_atvfx_cd_category_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_category"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_category}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_sub_grp">
<h:panelGroup id="pg_atvfx_cd_ctg_sub_grp_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_ctg_sub_grp"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_ctg_sub_grp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_ctg_det">
<h:panelGroup id="pg_atvfx_cd_ctg_det_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_ctg_det"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorCatg.atvfx_cd_ctg_det}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXAtivoFixoPorCatg" onmousedown="wtran='ixativofixoporcatgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_atvfx_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXAtivoFixoPorCatg.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadIXAtivoFixoPorCatgBean.doObternullSearchBack}" onmousedown="wtran='ixativofixoporcatgcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_atvfx_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="IXAtivoFixoPorCatg" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="AssetSuper" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
<!-- Super Trans Subtypes commandLinks -->
<h:commandLink id="xrec_assetvhwag" action="#{cadAssetVhwagBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetvheng" action="#{cadAssetVhengBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetvhaux" action="#{cadAssetVhauxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetbldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetyrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetlbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetmailn" action="#{cadAssetMailnBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetextln" action="#{cadAssetExtlnBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetyrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetsidng" action="#{cadAssetSidngBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetlvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetovrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetundps" action="#{cadAssetUndpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetbrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetviadt" action="#{cadAssetViadtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetculvt" action="#{cadAssetCulvtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assettunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetgeo" action="#{cadAssetGeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_assetsupersv" action="#{cadAssetSupersvBean.doObternull}" immediate="true"/>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIXAtivoFixoPorCatgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXAtivoFixoPorCatgBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixativofixoporcatg" action="#{cadIXAtivoFixoPorCatgBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixativofixoporcatg" action="#{cadIXAtivoFixoPorCatgBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_assetsuper" action="#{cadAssetSuperBean.doSelecionarNullOnly}" immediate="true"/>
<h:commandLink id="xrec_assetsuper" action="#{cadAssetSuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_assetsuper" action="#{cadAssetSuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
