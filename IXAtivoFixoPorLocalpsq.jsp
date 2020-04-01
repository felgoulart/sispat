<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIXAtivoFixoPorLocalBean");%>
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
<link rel="stylesheet" href="../IXAtivoFixoPorLocalpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixativofixoporlocalpsq") %>;
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
<h:outputText value="#{cadIXAtivoFixoPorLocalBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IXAtivoFixoPorLocalSfm';;tran='ixativofixoporlocalpsq'; vl='';cadbeanx='cadIXAtivoFixoPorLocalBean';<%session.setAttribute("tipo","ixativofixoporlocalpsq");%>">
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
<h:outputText value="#{cadIXAtivoFixoPorLocalBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIXAtivoFixoPorLocalBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIXAtivoFixoPorLocalBean.hasPrevPage}" action="#{cadIXAtivoFixoPorLocalBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIXAtivoFixoPorLocalBean.hasNextPage}" action="#{cadIXAtivoFixoPorLocalBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIXAtivoFixoPorLocalBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIXAtivoFixoPorLocalBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIXAtivoFixoPorLocalBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadIXAtivoFixoPorLocalBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('ixativofixoporlocalcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIXAtivoFixoPorLocalBean.doNovo}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIXAtivoFixoPorLocalBean.canPesquisar}" title="#{iimsg.IXAtivoFixoPorLocal_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadIXAtivoFixoPorLocalBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoPorLocal');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIXAtivoFixoPorLocalSfm" tabindex="-1" rendered="#{cadIXAtivoFixoPorLocalBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IXAtivoFixoPorLocalSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIXAtivoFixoPorLocalBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIXAtivoFixoPorLocalBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIXAtivoFixoPorLocalBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIXAtivoFixoPorLocalBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:outputText id="hd_atvfx_cd_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_tt">
<h:outputText id="hd_atvfx_cd_invty_ultm_tt" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_invty_ultm_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_invty_ultm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_tt">
<h:outputText id="hd_atvfx_ds_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_st">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_st_tt">
<h:outputText id="hd_atvfx_st_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_st_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_st_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp_tt">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_tp_cfasttp_tt">
<h:outputText id="hd_atvfx_tp_cfasttp_tt" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_tp_cfasttp_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_tp_cfasttp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_cd_centro_custo_tt">
<h:outputText id="hd_atvfx_cd_centro_custo_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_centro_custo_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_cd_centro_custo_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_localizacao">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_localizacao_tt">
<h:outputText id="hd_atvfx_ds_localizacao_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_localizacao_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_localizacao_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_municipio_tt">
<h:outputText id="hd_atvfx_ds_municipio_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_municipio_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_municipio_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_logradouro">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_logradouro_tt">
<h:outputText id="hd_atvfx_ds_logradouro_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_logradouro_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_logradouro_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_complemento">
<f:facet name="header">
<h:panelGroup id="pg_atvfx_ds_complemento_tt">
<h:outputText id="hd_atvfx_ds_complemento_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_complemento_tt}" value="#{iimsg.IXAtivoFixoPorLocal_atvfx_ds_complemento_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.IXAtivoFixoPorLocal_tabs_vc_tt}" value="#{iimsg.IXAtivoFixoPorLocal_tabs_vc_ta}"/>
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
<h:inputText id="atvfx_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_invty_ultm">
<!--   // 444-->
<h:inputText id="atvfx_cd_invty_ultm_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Invtypsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_cd_invty_ultm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds">
<h:inputText id="atvfx_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_st">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_st">
<h:inputText id="atvfx_st_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_atvfx_tp_cfasttp">
<h:inputText id="fil_atvfx_tp_cfasttp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ASTTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_cd_centro_custo">
<h:inputText id="atvfx_cd_centro_custo_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_cd_centro_custo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_localizacao">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds_localizacao">
<h:inputText id="atvfx_ds_localizacao_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_ds_localizacao}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds_municipio">
<h:inputText id="atvfx_ds_municipio_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_ds_municipio}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_logradouro">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds_logradouro">
<h:inputText id="atvfx_ds_logradouro_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_ds_logradouro}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_complemento">
<f:facet name="footer">
<h:panelGroup id="fpg_atvfx_ds_complemento">
<h:inputText id="atvfx_ds_complemento_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_atvfx_ds_complemento}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIXAtivoFixoPorLocalBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadIXAtivoFixoPorLocalBean.pesqData}"
var="IXAtivoFixoPorLocal"
binding="#{cadIXAtivoFixoPorLocalBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIXAtivoFixoPorLocalBean.pageLength}"
first="#{cadIXAtivoFixoPorLocalBean.currentLine}">
<!-- propColumnGen -->
<h:column id="atvfx_cd">
<h:panelGroup id="pg_atvfx_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_cd}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="atvfx_cd_invty_ultm_fk">
<h:panelGroup id="pg_atvfx_cd_invty_ultm_sg">
<!--   // 333-->
<h:outputLabel id="sel_atvfx_cd_invty_ultm" onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_cd_invty_ultm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds">
<h:panelGroup id="pg_atvfx_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_st">
<h:panelGroup id="pg_atvfx_st_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_st"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_st}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="atvfx_tp_cfasttp">
<h:panelGroup id="pg_atvfx_tp_cfasttp_sg">
<h:outputLabel id="sel_atvfx_tp_cfasttp" title="#{IXAtivoFixoPorLocal.atvfx_tp_cfasttp_desc}" onclick="slvlcd(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_cd_centro_custo">
<h:panelGroup id="pg_atvfx_cd_centro_custo_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_cd_centro_custo"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_cd_centro_custo}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_localizacao">
<h:panelGroup id="pg_atvfx_ds_localizacao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds_localizacao"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_ds_localizacao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_municipio">
<h:panelGroup id="pg_atvfx_ds_municipio_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds_municipio"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_ds_municipio}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_logradouro">
<h:panelGroup id="pg_atvfx_ds_logradouro_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds_logradouro"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_ds_logradouro}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="atvfx_ds_complemento">
<h:panelGroup id="pg_atvfx_ds_complemento_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_atvfx_ds_complemento"  onclick="slvl(this.id,this.value);" value="#{IXAtivoFixoPorLocal.atvfx_ds_complemento}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIXAtivoFixoPorLocal" onmousedown="wtran='ixativofixoporlocalcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_atvfx_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{IXAtivoFixoPorLocal.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadIXAtivoFixoPorLocalBean.doObternullSearchBack}" onmousedown="wtran='ixativofixoporlocalcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_atvfx_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="IXAtivoFixoPorLocal" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadIXAtivoFixoPorLocalBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIXAtivoFixoPorLocalBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixativofixoporlocal" action="#{cadIXAtivoFixoPorLocalBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixativofixoporlocal" action="#{cadIXAtivoFixoPorLocalBean.doObternull}" immediate="true"/>
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
