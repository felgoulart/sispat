<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjausPaaotBean");%>
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
<link rel="stylesheet" href="../PjausPaaotpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../PjausPaaotfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("pjauspaaotpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_pjaus_st_geral_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_st_analise_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:pjaus_id_solicitante_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadPjausPaaotBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='PjausPaaotSfm';;tran='pjauspaaotpsq'; vl='';cadbeanx='cadPjausPaaotBean';<%session.setAttribute("tipo","pjauspaaotpsq");%>">
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
<h:outputText value="#{cadPjausPaaotBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjausPaaotBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadPjausPaaotBean.hasPrevPage}" action="#{cadPjausPaaotBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadPjausPaaotBean.hasNextPage}" action="#{cadPjausPaaotBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadPjausPaaotBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadPjausPaaotBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadPjausPaaotBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadPjausPaaotBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('pjauspaaotcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadPjausPaaotBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadPjausPaaotBean.assist}" title="#{iimsg.PjausPaaot_XlsImport_xls_stb_tt}" image="../imagens/excellYellow.jpg" onmousedown="fExecx('obxlsppaobtvcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsPpaobtvBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadPjausPaaotBean.canPesquisar}" title="#{iimsg.PjausPaaot_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadPjausPaaotBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjaus');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudImgSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjausSfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','PjausSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadPjausPaaotBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjausPaaotBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadPjausPaaotBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadPjausPaaotBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_id_tt">
<h:outputText id="hd_pjaus_id_tt" title="#{iimsg.PjausPaaot_pjaus_id_tt}" value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_id_solicitante_tt">
<h:outputText id="hd_pjaus_id_solicitante_tt" title="#{iimsg.PjausPaaot_pjaus_id_solicitante_tt}" value="#{iimsg.PjausPaaot_pjaus_id_solicitante_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_ds_suscinta">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_ds_suscinta_tt">
<h:outputText id="hd_pjaus_ds_suscinta_tt_xide" title="#{iimsg.PjausPaaot_pjaus_ds_suscinta_tt}" value="#{iimsg.PjausPaaot_pjaus_ds_suscinta_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_geral_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_st_geral_tt">
<h:outputText id="hd_pjaus_st_geral_tt" title="#{iimsg.PjausPaaot_pjaus_st_geral_tt}" value="#{iimsg.PjausPaaot_pjaus_st_geral_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_analise_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_st_analise_tt">
<h:outputText id="hd_pjaus_st_analise_tt" title="#{iimsg.PjausPaaot_pjaus_st_analise_tt}" value="#{iimsg.PjausPaaot_pjaus_st_analise_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_prss_antt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_nu_prss_antt_tt">
<h:outputText id="hd_pjaus_nu_prss_antt_tt_xide" title="#{iimsg.PjausPaaot_pjaus_nu_prss_antt_tt}" value="#{iimsg.PjausPaaot_pjaus_nu_prss_antt_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_conts_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_conts_ongrid_tt">
<h:outputText id="hd_pjaus_conts_ongrid_tt_xide" title="#{iimsg.PjausPaaot_pjaus_conts_ongrid_tt}" value="#{iimsg.PjausPaaot_pjaus_conts_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docsckl_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_docsckl_ongrid_tt">
<h:outputText id="hd_pjaus_docsckl_ongrid_tt_xide" title="#{iimsg.PjausPaaot_pjaus_docsckl_ongrid_tt}" value="#{iimsg.PjausPaaot_pjaus_docsckl_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docseml_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_docseml_ongrid_tt">
<h:outputText id="hd_pjaus_docseml_ongrid_tt_xide" title="#{iimsg.PjausPaaot_pjaus_docseml_ongrid_tt}" value="#{iimsg.PjausPaaot_pjaus_docseml_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_images_ongrid_tt">
<h:outputText id="hd_pjaus_images_ongrid_tt_xide" title="#{iimsg.PjausPaaot_pjaus_images_ongrid_tt}" value="#{iimsg.PjausPaaot_pjaus_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_pjhsogpt_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_pjhsogpt_ongrid_tt">
<h:outputText id="hd_pjaus_pjhsogpt_ongrid_tt_xide" title="#{iimsg.PjausPaaot_pjaus_pjhsogpt_ongrid_tt}" value="#{iimsg.PjausPaaot_pjaus_pjhsogpt_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.PjausPaaot_tabs_vc_tt}" value="#{iimsg.PjausPaaot_tabs_vc_ta}"/>
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
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_id">
<h:inputText id="pjaus_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" onclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_id_solicitante">
<!--   // 444-->
<h:inputText id="pjaus_id_solicitante_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solexpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_id_solicitante}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_ds_suscinta">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_ds_suscinta">
<h:inputText id="pjaus_ds_suscinta_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_ds_suscinta}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_geral_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_st_geral">
<h:inputText id="fil_pjaus_st_geral_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'SGPOT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_st_geral}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_analise_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_st_analise">
<h:inputText id="fil_pjaus_st_analise_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STAOT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_st_analise}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_prss_antt">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_nu_prss_antt">
<h:inputText id="pjaus_nu_prss_antt_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausPaaotBean.fil_pjaus_nu_prss_antt}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_conts_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_conts_ongrid">
<h:outputText id="bButtpjaus_conts_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docsckl_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_docsckl_ongrid">
<h:outputText id="bButtpjaus_docsckl_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docseml_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_docseml_ongrid">
<h:outputText id="bButtpjaus_docseml_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_images_ongrid">
<h:outputText id="bButtpjaus_images_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_pjhsogpt_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_pjhsogpt_ongrid">
<h:outputText id="bButtpjaus_pjhsogpt_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausPaaotBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadPjausPaaotBean.pesqData}"
var="Pjaus"
binding="#{cadPjausPaaotBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadPjausPaaotBean.pageLength}"
first="#{cadPjausPaaotBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_fk">
<h:panelGroup id="pg_pjaus_id_sg">
<!--   // 333-->
<h:outputLabel id="sel_pjaus_id" onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_id}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_fk">
<h:panelGroup id="pg_pjaus_id_solicitante_sg">
<!--   // 333-->
<h:outputLabel id="sel_pjaus_id_solicitante" title="#{Pjaus.pjaus_id_solicitante_desc}" onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_id_solicitante}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_ds_suscinta">
<h:panelGroup id="pg_pjaus_ds_suscinta_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjaus_ds_suscinta"  onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_ds_suscinta}"/>
<h:inputHidden id="sel_pjaus_tp" value="#{Pjaus.pjaus_tp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_geral">
<h:panelGroup id="pg_pjaus_st_geral_sg">
<h:outputLabel id="sel_pjaus_st_geral" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_st_geral}"/>
<h:outputText id="pjaus_st_geral_desc" value="#{Pjaus.pjaus_st_geral_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_analise">
<h:panelGroup id="pg_pjaus_st_analise_sg">
<h:outputLabel id="sel_pjaus_st_analise" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_st_analise}"/>
<h:outputText id="pjaus_st_analise_desc" value="#{Pjaus.pjaus_st_analise_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_prss_antt">
<h:panelGroup id="pg_pjaus_nu_prss_antt_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjaus_nu_prss_antt"  onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_nu_prss_antt}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_conts_ongrid_bt">
<h:panelGroup id="pg_pjaus_conts_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_conts_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_conts_ongrid" action="#{cadObcntpjBean.doSelecionar}" image="../imagens/btPeople.gif" onmousedown="wtran='obcntpjpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_conts_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docsckl_ongrid_bt">
<h:panelGroup id="pg_pjaus_docsckl_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_docsckl_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_docsckl_ongrid" action="#{cadObdocpjcklBean.doSelecionar}" image="#{Pjaus.obdocpjckl_im}" onmousedown="wtran='obdocpjcklpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_docsckl_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docseml_ongrid_bt">
<h:panelGroup id="pg_pjaus_docseml_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_docseml_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_docseml_ongrid" action="#{cadObdocpjemlBean.doSelecionar}" image="#{Pjaus.obdocpjeml_im}" onmousedown="wtran='obdocpjemlpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_docseml_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<h:panelGroup id="pg_pjaus_images_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_images_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_images_ongrid" action="#{cadObimgpjBean.doObternull}"  image="#{Pjaus.imag_im}"  onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_images_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotpsq&tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_pjhsogpt_ongrid_bt">
<h:panelGroup id="pg_pjaus_pjhsogpt_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_pjhsogpt_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_pjhsogpt_ongrid" action="#{cadPjhsogpBean.doSelecionar}" image="../imagens/process.ico" onmousedown="wtran='pjhsogppsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_pjhsogpt_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgPjausPaaot" onmousedown="wtran='pjauspaaotcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Pjaus.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadPjausPaaotBean.doObternullSearchBack}" onmousedown="wtran='pjauspaaotcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_pjaus_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="PjausPaaot" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsPpaobtv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="solex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjckl" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjeml" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsogp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjckl" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpjeml" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsogp" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjausPaaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadPjausPaaotBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaot" action="#{cadPjausPaaotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaot" action="#{cadPjausPaaotBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solex" action="#{cadSolexBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solex" action="#{cadSolexBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solex" action="#{cadSolexBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obcntpj" action="#{cadObcntpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obcntpj" action="#{cadObcntpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obcntpj" action="#{cadObcntpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpjckl" action="#{cadObdocpjcklBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpjeml" action="#{cadObdocpjemlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimgpj" action="#{cadObimgpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjhsogp" action="#{cadPjhsogpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_pjhsogp" action="#{cadPjhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsogp" action="#{cadPjhsogpBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
