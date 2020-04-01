<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadSolinBean");%>
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
<link rel="stylesheet" type="text/css"   href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" type="text/css"   href="../style.css">
<link rel="stylesheet" type="text/css"   href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Solinpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("solinpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadSolinBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='SolinSfm';;tran='solinpsq'; vl='';cadbeanx='cadSolinBean';<%session.setAttribute("tipo","solinpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>

	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadSolinBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadSolinBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch" styleClass="btn btn-outline-dark" rendered="#{cadSolinBean.assistx}" value ="Voltar" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadSolinBean.doReturnMenu}"/>
		</div>
	</div>
	</div>


<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->

<!-- Moldura -->

<div class="container  expand-max  bg-transparent mb-2" >

<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadSolinBean.hasPrevPage}" action="#{cadSolinBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadSolinBean.hasNextPage}" action="#{cadSolinBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar" title="#{iimsg.botao_filtrar}" action="#{cadSolinBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btn btn-outline-dark" value="Limpar" rendered="#{cadSolinBean.canPesquisar}" title="#{iimsg.botao_limpar}" action="#{cadSolinBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btn btn-outline-dark" value="Inserir" rendered="#{cadSolinBean.canInserir}"  onmousedown="fNovorwpp('solincad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadSolinBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" styleClass="btn btn-outline-dark" value="Exportar" rendered="#{cadSolinBean.assist}" title="#{iimsg.Solin_XlsImport_xls_stb_tt}"  onmousedown="fExecx('obxlssolincad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsSolinBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadSolinBean.canPesquisar}" title="#{iimsg.Solin_XlsExport_xls_stb_tt}" styleClass="btn btn-outline-dark" value="Exportar" action="#{cadSolinBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Solin');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSolinSfm"  styleClass="d-none" tabindex="-1" rendered="#{cadSolinBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','SolinSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadSolinBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadSolinBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>



</div>

<table id="pesquisa_tt" style="" align="center" class="tbpq">

<div class="container  expand-max  bg-transparent" >
<h:outputLabel  styleClass="h6"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  <%-- <top> --%>
<%-- outputText --%>
<h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadSolinBean.codfqt}" styleClass="h6"/>
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
<h:column id="solic_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_solic_cd_tt">
<h:outputText id="hd_solic_cd_tt" title="#{iimsg.Solin_solic_cd_tt}" value="#{iimsg.Solin_solic_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<f:facet name="header">
<h:panelGroup id="pg_solic_nm_razaosocial_tt">
<h:outputText id="hd_solic_nm_razaosocial_tt_xide" title="#{iimsg.Solin_solic_nm_razaosocial_tt}" value="#{iimsg.Solin_solic_nm_razaosocial_ta}"/>
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
<h:column rendered="#{cadSolinBean.assist}">
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
<h:column id="solic_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_solic_cd">
<h:inputText id="solic_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" onclick="this.value=''" value="#{cadSolinBean.fil_solic_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<f:facet name="footer">
<h:panelGroup id="fpg_solic_nm_razaosocial">
<h:inputText id="solic_nm_razaosocial_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadSolinBean.fil_solic_nm_razaosocial}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadSolinBean.assist}">
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
<div id="div_dtDados" class="grid-result  table-responsive" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadSolinBean.pesqData}"
var="Solic"
binding="#{cadSolinBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadSolinBean.pageLength}"
first="#{cadSolinBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="solic_cd_fk">
<h:panelGroup id="pg_solic_cd_sg">
<!--   // 333-->
<h:outputLabel id="sel_solic_cd" onclick="slvl(this.id,this.value);" value="#{Solic.solic_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<h:panelGroup id="pg_solic_nm_razaosocial_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solic_nm_razaosocial"  onclick="slvl(this.id,this.value);" value="#{Solic.solic_nm_razaosocial}"/>
<h:inputHidden id="sel_solic_tp_sol" value="#{Solic.solic_tp_sol}"/>
<h:inputHidden id="sel_solic_in_op" value="#{Solic.solic_in_op}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadSolinBean.doObternullSearchBack}" onmousedown="wtran='solincad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_solic_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadSolinBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_solic_cd');desc=rel(aa+'sel_solic_nm');update(valor,desc);" image="../imagens/btSel.gif"/>
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
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Solin" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsSolin" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadSolinBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solin" action="#{cadSolinBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obxlssolin" action="#{cadObxlsSolinBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlssolin" action="#{cadObxlsSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlssolin" action="#{cadObxlsSolinBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
