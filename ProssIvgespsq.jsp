<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadProssIvgesBean");%>
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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"  type="text/css"  href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  type="text/css"   href="../bootstrap/fa/css/all.css">
<link rel="stylesheet"  type="text/css"   href="../style.css">
<link rel="stylesheet"  type="text/css"   href="../styleBS.css">
<link rel="stylesheet"  type="text/css"   href="../128b3.css" />
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../ProssIvgespsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../ProssIvgesfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("prossivgespsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_pross_st_analise_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:pross_id_solicitante_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadProssIvgesBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ProssIvgesSfm';;tran='prossivgespsq'; vl='';cadbeanx='cadProssIvgesBean';<%session.setAttribute("tipo","prossivgespsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadProssIvgesBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadProssIvgesBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch" styleClass="btn btn-outline-dark" rendered="#{cadProssIvgesBean.assistx}" value ="Voltar" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadProssIvgesBean.doReturnMenu}"/>
		</div>
	</div>
	</div>

	<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<td  align="center" width="500" >

</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
</td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > 
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
	
<div class="row">
<div class="col-9 text-white mb-2" align="left" style="vertical-align: text-bottom;">	
<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadProssIvgesBean.hasPrevPage}" action="#{cadProssIvgesBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadProssIvgesBean.hasNextPage}" action="#{cadProssIvgesBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar" title="#{iimsg.botao_filtrar}" action="#{cadProssIvgesBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btn btn-outline-dark"  value="Limpar"  rendered="#{cadProssIvgesBean.canPesquisar}" title="#{iimsg.botao_limpar}" action="#{cadProssIvgesBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btn btn-outline-dark"  value="Inserir"  rendered="#{cadProssIvgesBean.canInserir}"  onmousedown="fNovorwpp('prossivgescad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadProssIvgesBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" styleClass="d-none" rendered="#{cadProssIvgesBean.assist}" title="#{iimsg.ProssIvges_XlsImport_xls_stb_tt}" image="../imagens/excellYellow.jpg" onmousedown="fExecx('obxlsppaobtvcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsPpaobtvBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" styleClass="btn btn-outline-dark"  value="Exportar"  rendered="#{cadProssIvgesBean.canPesquisar}" title="#{iimsg.ProssIvges_XlsExport_xls_stb_tt}" action="#{cadProssIvgesBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pross');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpProssSfm" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ProssSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint"  styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadProssIvgesBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadProssIvgesBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</div>
    <div class="col-3 text-white" align="right" style="vertical-align: text-bottom;">
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadProssIvgesBean.codfqt}"   styleClass="h6 text-secondary"/>
	</div>
</div>
<div id="div_dtDados_hor_" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- fkeyColumnGen -->
<h:column id="pross_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pross_id_tt">
<h:outputText id="hd_pross_id_tt" title="#{iimsg.ProssIvges_pross_id_tt}" value="#{iimsg.ProssIvges_pross_id_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pross_id_solicitante_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pross_id_solicitante_tt">
<h:outputText id="hd_pross_id_solicitante_tt" title="#{iimsg.ProssIvges_pross_id_solicitante_tt}" value="#{iimsg.ProssIvges_pross_id_solicitante_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_ds_suscinta">
<f:facet name="header">
<h:panelGroup id="pg_pross_ds_suscinta_tt">
<h:outputText id="hd_pross_ds_suscinta_tt_xide" title="#{iimsg.ProssIvges_pross_ds_suscinta_tt}" value="#{iimsg.ProssIvges_pross_ds_suscinta_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_st_geral">
<f:facet name="header">
<h:panelGroup id="pg_pross_st_geral_tt">
<h:outputText id="hd_pross_st_geral_tt_xide" title="#{iimsg.ProssIvges_pross_st_geral_tt}" value="#{iimsg.ProssIvges_pross_st_geral_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pross_st_analise_tt">
<f:facet name="header">
<h:panelGroup id="pg_pross_st_analise_tt">
<h:outputText id="hd_pross_st_analise_tt" title="#{iimsg.ProssIvges_pross_st_analise_tt}" value="#{iimsg.ProssIvges_pross_st_analise_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_cd_proprio_pj">
<f:facet name="header">
<h:panelGroup id="pg_pross_cd_proprio_pj_tt">
<h:outputText id="hd_pross_cd_proprio_pj_tt_xide" title="#{iimsg.ProssIvges_pross_cd_proprio_pj_tt}" value="#{iimsg.ProssIvges_pross_cd_proprio_pj_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_nu_prss_antt">
<f:facet name="header">
<h:panelGroup id="pg_pross_nu_prss_antt_tt">
<h:outputText id="hd_pross_nu_prss_antt_tt_xide" title="#{iimsg.ProssIvges_pross_nu_prss_antt_tt}" value="#{iimsg.ProssIvges_pross_nu_prss_antt_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_conts_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pross_conts_ongrid_tt">
<h:outputText id="hd_pross_conts_ongrid_tt_xide" title="#{iimsg.ProssIvges_pross_conts_ongrid_tt}" value="#{iimsg.ProssIvges_pross_conts_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_docseml_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pross_docseml_ongrid_tt">
<h:outputText id="hd_pross_docseml_ongrid_tt_xide" title="#{iimsg.ProssIvges_pross_docseml_ongrid_tt}" value="#{iimsg.ProssIvges_pross_docseml_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_pjhsogpp_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pross_pjhsogpp_ongrid_tt">
<h:outputText id="hd_pross_pjhsogpp_ongrid_tt_xide" title="#{iimsg.ProssIvges_pross_pjhsogpp_ongrid_tt}" value="#{iimsg.ProssIvges_pross_pjhsogpp_ongrid_ta}"/>
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
<h:column id="pross_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_id">
<h:inputText id="pross_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" onclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pross_id_solicitante_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_id_solicitante">
<!--   // 444-->
<h:inputText id="pross_id_solicitante_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solinpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_id_solicitante}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_ds_suscinta">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_ds_suscinta">
<h:inputText id="pross_ds_suscinta_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_ds_suscinta}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_st_geral">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_st_geral">
<h:inputText id="pross_st_geral_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_st_geral}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pross_st_analise_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pross_st_analise">
<h:inputText id="fil_pross_st_analise_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STAOP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_st_analise}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_cd_proprio_pj">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_cd_proprio_pj">
<h:inputText id="pross_cd_proprio_pj_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_cd_proprio_pj}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_nu_prss_antt">
<f:facet name="footer">
<h:panelGroup id="fpg_pross_nu_prss_antt">
<h:inputText id="pross_nu_prss_antt_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadProssIvgesBean.fil_pross_nu_prss_antt}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_conts_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpross_conts_ongrid">
<h:outputText id="bButtpross_conts_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_docseml_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpross_docseml_ongrid">
<h:outputText id="bButtpross_docseml_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_pjhsogpp_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpross_pjhsogpp_ongrid">
<h:outputText id="bButtpross_pjhsogpp_ongrid" styleClass="pf" value=""/>
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
value="#{cadProssIvgesBean.pesqData}"
var="Pross"
binding="#{cadProssIvgesBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadProssIvgesBean.pageLength}"
first="#{cadProssIvgesBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="pross_id_fk">
<h:panelGroup id="pg_pross_id_sg">
<!--   // 333-->
<h:outputLabel id="sel_pross_id" onclick="slvl(this.id,this.value);" value="#{Pross.pross_id}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pross_id_solicitante_fk">
<h:panelGroup id="pg_pross_id_solicitante_sg">
<!--   // 333-->
<h:outputLabel id="sel_pross_id_solicitante" title="#{Pross.pross_id_solicitante_desc}" onclick="slvl(this.id,this.value);" value="#{Pross.pross_id_solicitante}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_ds_suscinta">
<h:panelGroup id="pg_pross_ds_suscinta_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pross_ds_suscinta"  onclick="slvl(this.id,this.value);" value="#{Pross.pross_ds_suscinta}"/>
<h:inputHidden id="sel_pross_tp" value="#{Pross.pross_tp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_st_geral">
<h:panelGroup id="pg_pross_st_geral_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pross_st_geral"  onclick="slvl(this.id,this.value);" value="#{Pross.pross_st_geral}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pross_st_analise">
<h:panelGroup id="pg_pross_st_analise_sg">
<h:outputLabel id="sel_pross_st_analise" onclick="slvlcd(this.id,this.value);" value="#{Pross.pross_st_analise}"/>
<h:outputText id="pross_st_analise_desc" value="#{Pross.pross_st_analise_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_cd_proprio_pj">
<h:panelGroup id="pg_pross_cd_proprio_pj_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pross_cd_proprio_pj"  onclick="slvl(this.id,this.value);" value="#{Pross.pross_cd_proprio_pj}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pross_nu_prss_antt">
<h:panelGroup id="pg_pross_nu_prss_antt_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pross_nu_prss_antt"  onclick="slvl(this.id,this.value);" value="#{Pross.pross_nu_prss_antt}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_conts_ongrid_bt">
<h:panelGroup id="pg_pross_conts_ongrid_bt">
<h:inputHidden id="sel_pross_idpross_conts_ongrid_bt" value="#{Pross.pross_id}"/>
<h:commandButton id="flag_imgrecd_wd_pross_conts_ongrid" action="#{cadObcntprBean.doSelecionar}" image="../imagens/btPeople.gif" onmousedown="wtran='obcntprpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pross_idpross_conts_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=prossivgespsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_docseml_ongrid_bt">
<h:panelGroup id="pg_pross_docseml_ongrid_bt">
<h:inputHidden id="sel_pross_idpross_docseml_ongrid_bt" value="#{Pross.pross_id}"/>
<h:commandButton id="flag_imgrecd_wd_pross_docseml_ongrid" action="#{cadObdocpremlBean.doSelecionar}" image="#{Pross.obdocpreml_im}" onmousedown="wtran='obdocpremlpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pross_idpross_docseml_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=prossivgespsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_pjhsogpp_ongrid_bt">
<h:panelGroup id="pg_pross_pjhsogpp_ongrid_bt">
<h:inputHidden id="sel_pross_idpross_pjhsogpp_ongrid_bt" value="#{Pross.pross_id}"/>
<h:commandButton id="flag_imgrecd_wd_pross_pjhsogpp_ongrid" action="#{cadPrhsogpBean.doSelecionar}" image="../imagens/process.ico" onmousedown="wtran='prhsogppsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pross_idpross_pjhsogpp_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=prossivgespsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadProssIvgesBean.doObternullSearchBack}" onmousedown="wtran='prossivgescad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_pross_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="ProssIvges" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="solin" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpreml" width="0" height="0" frameborder="0"> </iframe>
<iframe id="prhsogp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocprcklop" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpreml" width="0" height="0" frameborder="0"> </iframe>
<iframe id="prhsogp" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadProssIvgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadProssIvgesBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_prossivges" action="#{cadProssIvgesBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossivges" action="#{cadProssIvgesBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsppaobtv" action="#{cadObxlsPpaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solin" action="#{cadSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solin" action="#{cadSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obcntpr" action="#{cadObcntprBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obcntpr" action="#{cadObcntprBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obcntpr" action="#{cadObcntprBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpreml" action="#{cadObdocpremlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prhsogp" action="#{cadPrhsogpBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_prhsogp" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prhsogp" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocprcklop" action="#{cadObdocprcklopBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdocprcklop" action="#{cadObdocprcklopBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocprcklop" action="#{cadObdocprcklopBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
