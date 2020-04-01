<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadCodfBean");%>
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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../iiwsCodfmspsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("codfpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadCodfBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='';zz=document.getElementById('cadForm:codfqt').value;wincodfsize(zz);window.resizeTo(codfwidth,codfheight);hoverDatatable('dtDados');tran='codfpsq'; vl='';cadbeanx='cadCodfBean';<%session.setAttribute("tipo","codfpsq");%>">
<h:form id="cadForm">
<%@include file="projHeadercodf.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText value="#{cadCodfBean.trans_tt}"/></h2>
		<p class="subtitle"></p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aClose" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" styleClass="btn btn-outline-dark" value="Fechar"/>
		</div>
	</div>

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
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadCodfBean.hasPrevPage}" action="#{cadCodfBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadCodfBean.hasNextPage}" action="#{cadCodfBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:inputHidden id="xmesg_rc" value="#{cadCodfBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadCodfBean.xhelp_rc}" />
 </div>

</td>
</tr>
<tr>

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

</tr>
<tr>

<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">

<tr>
<td colspan="" align="" valign="top">
    <div class="col-lg text-white mb-1" align="right" style="vertical-align: text-bottom;">
			<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar" title="#{iimsg.botao_filtrar}" action="#{cadCodfBean.doSelecionar}"/>
			<h:commandButton id="CodfsFromSList"  immediate="true"  title="#{iimsg.msg_selectSelectedValues_tt}" value="#{iimsg.msg_selectSelectedValues_tt}" styleClass="btn btn-outline-dark"  action="#{cadCodfBean.RloprGrtRvkFromSList}" onmousedown="ckbSelListz__a('codf_id');"/>
			<h:inputText id="mesg_var" value="#{cadCodfBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
			<h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>
			<h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadCodfBean.codfqt}" styleClass="h6 text-secondary"/>
	</div>
<div id="div_dtDados_hor_" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- propColumnGen -->
<h:column id="codf_id">
<f:facet name="header">
<h:panelGroup id="pg_codf_id_tt">
<h:outputText id="hd_codf_id_tt_xide" title="#{iimsg.Codf_codf_id_tt}" value="#{iimsg.Codf_codf_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<f:facet name="header">
<h:panelGroup id="pg_codf_ds_tt">
<h:outputText id="hd_codf_ds_tt_xide" title="#{iimsg.Codf_codf_ds_tt}" value="#{iimsg.Codf_codf_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>

<h:column id="chk_varchk">
<f:facet name="header">
<h:panelGroup id="pg_selected_tt">
<h:selectBooleanCheckbox id="chk_var_sel_tt" onclick="ckbSelAll(this.id);" title="#{iimsg.Rloprcodf_chk_var_tt}" />
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
<h:column id="codf_id">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_id">
<h:inputText id="codf_id_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadCodfBean.fil_codf_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_ds">
<h:inputText id="codf_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadCodfBean.fil_codf_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadCodfBean.pesqData}"
var="Codf"
binding="#{cadCodfBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadCodfBean.pageLength}"
first="#{cadCodfBean.currentLine}">
<!-- propColumnGen -->
<h:column id="codf_id">
<h:panelGroup id="pg_codf_id_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_codf_id"  onclick="slvl(this.id,this.value);" value="#{Codf.codf_id}"/>
<h:inputHidden id="sel_codf_supid" value="#{Codf.codf_supid}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<h:panelGroup id="pg_codf_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_codf_ds"  onclick="slvl(this.id,this.value);" value="#{Codf.codf_ds}"/>
</h:panelGroup>
</h:column>

<!--   // 333-->
<h:column id="chk_varchk">
<h:panelGroup id="pg_chk_var_sg">
<h:selectBooleanCheckbox id="chk_var" value="" onclick="" />
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
<iframe id="Codf" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadCodfBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadCodfBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- superType commandLinks -->
<h:commandLink id="xrec_codf" action="#{cadCodfBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_codf" action="#{cadCodfBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_codf" action="#{cadCodfBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>