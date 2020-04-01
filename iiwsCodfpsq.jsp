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
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/fa/css/all.css">
<link rel="stylesheet" href="styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../iiwsCodfpsq.css" type="text/css">
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
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
<!-- Principal -->
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadCodfBean.hasPrevPage}" action="#{cadCodfBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadCodfBean.hasNextPage}" action="#{cadCodfBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:inputHidden id="xmesg_rc" value="#{cadCodfBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadCodfBean.xhelp_rc}" />
<!-- Barra -->
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 30px;"><h:outputText value="#{cadCodfBean.trans_tt}"/></h2>
		<p class="subtitle"></p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" styleClass="btn btn-outline-dark" value="Fechar"/>		</div>
	</div>
	</div>
	
<div class="container  expand-max  bg-transparent" style="margin-top:20px">
  <div class="row valignbottom">
    <div class="col-sm-6">
	<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar"  title="#{iimsg.botao_filtrar}" action="#{cadCodfBean.doSelecionar}"/>
    </div>
    <div class="col-sm-6 text-white" align="right" style="vertical-align: text-bottom;">
	<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadCodfBean.codfqt}"  styleClass="tip txr pl0"/>
	</div>
  </div>
</div>
	


<!-- Pesquisa aa-->
<div class="container  expand-max  bg-transparent" >
<div id="div_dtDados_hor_" class="table-responsive"><!-- Pesquisa Header Table -->
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
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadCodfBean.assist}">
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
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadCodfBean.assist}">
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
<div id="div_dtDados" class="grid-result table-responsive">
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
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadCodfBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_codf_id');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
</h:dataTable>
<!-- Dados -->
</div>

<!-- Pesquisa cc-->
</div>
<!-- Moldura -->
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
   <script src="bootstrap/js/jquery.min.js"></script>
   <script src="bootstrap/js/popper.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
</f:view>
