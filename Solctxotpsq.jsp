<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadSolctxotBean");%>
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
<link rel="stylesheet" href="../Solctxotpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("solctxotpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:solct_cd_solic_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_solct_in_ot_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solct_in_op_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solct_tp_acesso_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solct_tp_pfseg_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadSolctxotBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='SolctxotSfm';;tran='solctxotpsq'; vl='';cadbeanx='cadSolctxotBean';<%session.setAttribute("tipo","solctxotpsq");%>">
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
<h:outputText value="#{cadSolctxotBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadSolctxotBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadSolctxotBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadSolctxotBean.hasPrevPage}" action="#{cadSolctxotBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadSolctxotBean.hasNextPage}" action="#{cadSolctxotBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadSolctxotBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadSolctxotBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadSolctxotBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadSolctxotBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('solctxotcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadSolctxotBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Solct');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSolctSfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','SolctSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadSolctxotBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadSolctxotBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadSolctxotBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadSolctxotBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="solct_cd_solic_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_solct_cd_solic_tt">
<h:outputText id="hd_solct_cd_solic_tt" title="#{iimsg.Solctxot_solct_cd_solic_tt}" value="#{iimsg.Solctxot_solct_cd_solic_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<f:facet name="header">
<h:panelGroup id="pg_solct_ab_tt">
<h:outputText id="hd_solct_ab_tt_xide" title="#{iimsg.Solctxot_solct_ab_tt}" value="#{iimsg.Solctxot_solct_ab_tt}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_id_external">
<f:facet name="header">
<h:panelGroup id="pg_solct_id_external_tt">
<h:outputText id="hd_solct_id_external_tt_xide" title="#{iimsg.Solctxot_solct_id_external_tt}" value="#{iimsg.Solctxot_solct_id_external_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_in_ot_tt">
<h:outputText id="hd_solct_in_ot_tt" title="#{iimsg.Solctxot_solct_in_ot_tt}" value="#{iimsg.Solctxot_solct_in_ot_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_in_op_tt">
<h:outputText id="hd_solct_in_op_tt" title="#{iimsg.Solctxot_solct_in_op_tt}" value="#{iimsg.Solctxot_solct_in_op_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_acesso_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_tp_acesso_tt">
<h:outputText id="hd_solct_tp_acesso_tt" title="#{iimsg.Solctxot_solct_tp_acesso_tt}" value="#{iimsg.Solctxot_solct_tp_acesso_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_pfseg_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_tp_pfseg_tt">
<h:outputText id="hd_solct_tp_pfseg_tt" title="#{iimsg.Solctxot_solct_tp_pfseg_tt}" value="#{iimsg.Solctxot_solct_tp_pfseg_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nm">
<f:facet name="header">
<h:panelGroup id="pg_solct_nm_tt">
<h:outputText id="hd_solct_nm_tt_xide" title="#{iimsg.Solctxot_solct_nm_tt}" value="#{iimsg.Solctxot_solct_nm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nu_tel">
<f:facet name="header">
<h:panelGroup id="pg_solct_nu_tel_tt">
<h:outputText id="hd_solct_nu_tel_tt_xide" title="#{iimsg.Solctxot_solct_nu_tel_tt}" value="#{iimsg.Solctxot_solct_nu_tel_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Solctxot_tabs_vc_tt}" value="#{iimsg.Solctxot_tabs_vc_ta}"/>
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
<h:column rendered="#{cadSolctxotBean.assist}">
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
<!-- fkeyColumnGen -->
<h:column id="solct_cd_solic_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_cd_solic">
<!--   // 444-->
<h:inputText id="solct_cd_solic_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('areaiotpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctxotBean.fil_solct_cd_solic}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_ab">
<h:inputText id="solct_ab_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctxotBean.fil_solct_ab}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_id_external">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_id_external">
<h:inputText id="solct_id_external_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctxotBean.fil_solct_id_external}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_in_ot">
<h:inputText id="fil_solct_in_ot_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctxotBean.fil_solct_in_ot}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_in_op">
<h:inputText id="fil_solct_in_op_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctxotBean.fil_solct_in_op}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_acesso_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_tp_acesso">
<h:inputText id="fil_solct_tp_acesso_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPFCP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctxotBean.fil_solct_tp_acesso}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_pfseg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_tp_pfseg">
<h:inputText id="fil_solct_tp_pfseg_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'PFSOT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctxotBean.fil_solct_tp_pfseg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_nm">
<h:inputText id="solct_nm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctxotBean.fil_solct_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nu_tel">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_nu_tel">
<h:inputText id="solct_nu_tel_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctxotBean.fil_solct_nu_tel}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctxotBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadSolctxotBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadSolctxotBean.pesqData}"
var="Solct"
binding="#{cadSolctxotBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadSolctxotBean.pageLength}"
first="#{cadSolctxotBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="solct_cd_solic_fk">
<h:panelGroup id="pg_solct_cd_solic_sg">
<!--   // 333-->
<h:outputLabel id="sel_solct_cd_solic" title="#{Solct.solct_cd_solic_desc}" onclick="slvl(this.id,this.value);" value="#{Solct.solct_cd_solic}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<h:panelGroup id="pg_solct_ab_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_ab"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_ab}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_id_external">
<h:panelGroup id="pg_solct_id_external_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_id_external"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_id_external}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot">
<h:panelGroup id="pg_solct_in_ot_sg">
<h:outputLabel id="sel_solct_in_ot" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_in_ot}"/>
<h:outputText id="solct_in_ot_desc" value="#{Solct.solct_in_ot_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op">
<h:panelGroup id="pg_solct_in_op_sg">
<h:outputLabel id="sel_solct_in_op" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_in_op}"/>
<h:outputText id="solct_in_op_desc" value="#{Solct.solct_in_op_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_acesso">
<h:panelGroup id="pg_solct_tp_acesso_sg">
<h:outputLabel id="sel_solct_tp_acesso" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_tp_acesso}"/>
<h:outputText id="solct_tp_acesso_desc" value="#{Solct.solct_tp_acesso_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_pfseg">
<h:panelGroup id="pg_solct_tp_pfseg_sg">
<h:outputLabel id="sel_solct_tp_pfseg" title="#{Solct.solct_tp_pfseg_desc}" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_tp_pfseg}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nm">
<h:panelGroup id="pg_solct_nm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_nm"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_nm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nu_tel">
<h:panelGroup id="pg_solct_nu_tel_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_nu_tel"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_nu_tel}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgSolctxot" onmousedown="wtran='solctxotcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_solct_cd').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Solct.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_solct_cd" value="#{Solct.solct_cd}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadSolctxotBean.doObternullSearchBack}" onmousedown="wtran='solctxotcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_solct_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadSolctxotBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_solct_cd');desc=rel(aa+'sel_solct_nm');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Solctxot" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="areaiot" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadSolctxotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadSolctxotBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_solctxot" action="#{cadSolctxotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solctxot" action="#{cadSolctxotBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_areaiot" action="#{cadAreaiotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_areaiot" action="#{cadAreaiotBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_areaiot" action="#{cadAreaiotBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
