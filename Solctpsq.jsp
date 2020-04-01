<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadSolctBean");%>
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
<link rel="stylesheet"  href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet"  href="../projCalendar.css" type="text/css">
<link rel="stylesheet"  href="../Solctpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("solctpsq") %>;
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
<h:outputText value="#{cadSolctBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='SolctSfm';;tran='solctpsq'; vl='';cadbeanx='cadSolctBean';<%session.setAttribute("tipo","solctpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>

	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadSolctBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadSolctBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch" styleClass="btn btn-outline-dark" rendered="#{cadSolctBean.assistx}" value ="Voltar" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadSolctBean.doReturnMenu}"/>
		</div>
	</div>
	</div>

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
</td>
<td valign="bottom" nowrap>
<div class="container  expand-max  bg-transparent mb-2" >
<!-- Botoes -->



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
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<div id="div_dtDados_hor_" >

<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadSolctBean.hasPrevPage}" action="#{cadSolctBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadSolctBean.hasNextPage}" action="#{cadSolctBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar"    title="#{iimsg.botao_filtrar}" action="#{cadSolctBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btn btn-outline-dark"  value="Limpar"  rendered="#{cadSolctBean.canPesquisar}"  title="#{iimsg.botao_limpar}" action="#{cadSolctBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btn btn-outline-dark"  value="Inserir"  rendered="#{cadSolctBean.canInserir}"  onmousedown="fNovorwpp('solctcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadSolctBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" styleClass="d-none" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Solct');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" styleClass="d-none" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSolctSfm" tabindex="-1" styleClass="d-none" rendered="#{cadSolctBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','SolctSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" styleClass="d-none" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" styleClass="d-none" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadSolctBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadSolctBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" styleClass="d-none" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</div>
    <div class="col-lg text-white" align="right" style="vertical-align: text-bottom;">
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadSolctBean.codfqt}"   styleClass="h6 text-secondary"/>
	</div>
<div id="div_dtDados_hor_"  align="center" style=" border-color: slategray; border-style: solid; border-width: 1px;">
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
<h:outputText id="hd_solct_cd_solic_tt" title="#{iimsg.Solct_solct_cd_solic_tt}" value="#{iimsg.Solct_solct_cd_solic_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<f:facet name="header">
<h:panelGroup id="pg_solct_ab_tt">
<h:outputText id="hd_solct_ab_tt_xide" title="#{iimsg.Solct_solct_ab_tt}" value="#{iimsg.Solct_solct_ab_tt}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nm">
<f:facet name="header">
<h:panelGroup id="pg_solct_nm_tt">
<h:outputText id="hd_solct_nm_tt_xide" title="#{iimsg.Solct_solct_nm_tt}" value="#{iimsg.Solct_solct_nm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_id_external">
<f:facet name="header">
<h:panelGroup id="pg_solct_id_external_tt">
<h:outputText id="hd_solct_id_external_tt_xide" title="#{iimsg.Solct_solct_id_external_tt}" value="#{iimsg.Solct_solct_id_external_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_in_ot_tt">
<h:outputText id="hd_solct_in_ot_tt" title="#{iimsg.Solct_solct_in_ot_tt}" value="#{iimsg.Solct_solct_in_ot_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_in_op_tt">
<h:outputText id="hd_solct_in_op_tt" title="#{iimsg.Solct_solct_in_op_tt}" value="#{iimsg.Solct_solct_in_op_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_acesso_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_tp_acesso_tt">
<h:outputText id="hd_solct_tp_acesso_tt" title="#{iimsg.Solct_solct_tp_acesso_tt}" value="#{iimsg.Solct_solct_tp_acesso_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_pfseg_tt">
<f:facet name="header">
<h:panelGroup id="pg_solct_tp_pfseg_tt">
<h:outputText id="hd_solct_tp_pfseg_tt" title="#{iimsg.Solct_solct_tp_pfseg_tt}" value="#{iimsg.Solct_solct_tp_pfseg_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nu_tel">
<f:facet name="header">
<h:panelGroup id="pg_solct_nu_tel_tt">
<h:outputText id="hd_solct_nu_tel_tt_xide" title="#{iimsg.Solct_solct_nu_tel_tt}" value="#{iimsg.Solct_solct_nu_tel_ta}"/>
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
<h:column rendered="#{cadSolctBean.assist}">
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
<h:inputText id="solct_cd_solic_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solicpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctBean.fil_solct_cd_solic}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_ab">
<h:inputText id="solct_ab_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctBean.fil_solct_ab}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_nm">
<h:inputText id="solct_nm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctBean.fil_solct_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_id_external">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_id_external">
<h:inputText id="solct_id_external_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctBean.fil_solct_id_external}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_in_ot">
<h:inputText id="fil_solct_in_ot_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctBean.fil_solct_in_ot}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_in_op">
<h:inputText id="fil_solct_in_op_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctBean.fil_solct_in_op}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_acesso_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_tp_acesso">
<h:inputText id="fil_solct_tp_acesso_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPFCP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctBean.fil_solct_tp_acesso}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_tp_pfseg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solct_tp_pfseg">
<h:inputText id="fil_solct_tp_pfseg_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'PFSEG', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadSolctBean.fil_solct_tp_pfseg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_nu_tel">
<f:facet name="footer">
<h:panelGroup id="fpg_solct_nu_tel">
<h:inputText id="solct_nu_tel_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolctBean.fil_solct_nu_tel}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadSolctBean.assist}">
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
value="#{cadSolctBean.pesqData}"
var="Solct"
binding="#{cadSolctBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadSolctBean.pageLength}"
first="#{cadSolctBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="solct_cd_solic_fk">
<h:panelGroup id="pg_solct_cd_solic_sg">
<!--   // 333-->
<h:outputLabel id="sel_solct_cd_solic" onclick="slvl(this.id,this.value);" value="#{Solct.solct_cd_solic}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solct_ab">
<h:panelGroup id="pg_solct_ab_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_ab"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_ab}"/>
<h:inputHidden id="sel_solct_tp_acesso_sist" value="#{Solct.solct_tp_acesso_sist}"/>
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
<h:column id="solct_id_external">
<h:panelGroup id="pg_solct_id_external_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_id_external"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_id_external}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_ot">
<h:panelGroup id="pg_solct_in_ot_sg">
<h:outputLabel id="sel_solct_in_ot" title="#{Solct.solct_in_ot_desc}" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_in_ot}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solct_in_op">
<h:panelGroup id="pg_solct_in_op_sg">
<h:outputLabel id="sel_solct_in_op" title="#{Solct.solct_in_op_desc}" onclick="slvlcd(this.id,this.value);" value="#{Solct.solct_in_op}"/>
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
<h:column id="solct_nu_tel">
<h:panelGroup id="pg_solct_nu_tel_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solct_nu_tel"  onclick="slvl(this.id,this.value);" value="#{Solct.solct_nu_tel}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_solct_cd" value="#{Solct.solct_cd}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadSolctBean.doObternullSearchBack}" onmousedown="wtran='solctcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_solct_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadSolctBean.assist}">
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


</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Solct" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadSolctBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
