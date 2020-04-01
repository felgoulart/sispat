<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObdocBean");%>
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
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Obdocpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obdocpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_obdoc_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obdoc_cd_emissor_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obdoc_tp_cfasttp_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObdocBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObdocSfm';;tran='obdocpsq'; vl='';cadbeanx='cadObdocBean';<%session.setAttribute("tipo","obdocpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>

	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadObdocBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
		<h:outputLabel  styleClass="h6"  id="lbl_obdoc_id" for="obdoc_id"  title="#{iimsg.Obdoc_obdoc_id_tt}"  value="#{iimsg.Obdoc_obdoc_id_tt}"/>  </td> <%-- <top> --%>
		<h:outputText styleClass="h6"  id="obdoc_id2"  value="#{cadObdocBean.obdoc_id}" />
		<h:commandLink id="obdoc_id_desc" value="#{cadObdocBean.obdoc_id_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
		<h:inputText id="mesg_var" value="#{cadObdocBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aClose" value="Fechar" tabindex="-1"  immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" styleClass="btn btn-outline-dark"/>
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
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObdocBean.hasPrevPage}" action="#{cadObdocBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObdocBean.hasNextPage}" action="#{cadObdocBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar"  value="Filtrar"  styleClass="btn btn-outline-dark"  title="#{iimsg.botao_filtrar}" action="#{cadObdocBean.doSelecionar}"/>
<h:commandButton id="aLimpar" value="Limpar"  styleClass="btn btn-outline-dark" rendered="#{cadObdocBean.canPesquisar}" title="#{iimsg.botao_limpar}" action="#{cadObdocBean.doLimparPesq}"/>
<h:commandButton id="aNew" value="Inserir"  styleClass="btn btn-outline-dark" rendered="#{cadObdocBean.canInserir}" onmousedown="fNovorwpp('obdoccad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadObdocBean.doNovoUpload}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" styleClass="d-none" rendered="#{cadObdocBean.assist}" title="#{iimsg.Obdoc_XlsImport_xls_stb_tt}" image="../imagens/excellYellow.jpg" onmousedown="fExecx('obxlsobdoccad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsObdocBean.doObternull}"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obdoc');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObdocSfm" styleClass="d-none" tabindex="-1" rendered="#{cadObdocBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObdocSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObdocBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObdocBean.xhelp_rc}" />
    </div>
    <div class="col-lg text-white" align="right" style="vertical-align: text-bottom;">
			<h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
			<h:outputLabel styleClass="h6 text-secondary" id="codfqt" onfocus="this.blur()" value="#{cadObdocBean.codfqt}" />
	</div>

</td>
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


<%-- outputLabel msg --%>

<!-- Pesquisa aa-->
<div class="container  expand-max  bg-transparent" >
<table id="pesquisa_tt" style="" align="center" class="container  expand-max  bg-transparent">
<tr>
<td colspan="" align="" valign="middle">
<div id="div_dtDados_hor_" class="table-responsive" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- codfColumnGen -->
<h:column id="obdoc_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdoc_tp_tt">
<h:outputText id="hd_obdoc_tp_tt" title="#{iimsg.Obdoc_obdoc_tp_tt}" value="#{iimsg.Obdoc_obdoc_tp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_cd_emissor_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdoc_cd_emissor_tt">
<h:outputText id="hd_obdoc_cd_emissor_tt" title="#{iimsg.Obdoc_obdoc_cd_emissor_tt}" value="#{iimsg.Obdoc_obdoc_cd_emissor_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_tp_cfasttp_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdoc_tp_cfasttp_tt">
<h:outputText id="hd_obdoc_tp_cfasttp_tt" title="#{iimsg.Obdoc_obdoc_tp_cfasttp_tt}" value="#{iimsg.Obdoc_obdoc_tp_cfasttp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_nm_file">
<f:facet name="header">
<h:panelGroup id="pg_obdoc_nm_file_tt">
<h:outputText id="hd_obdoc_nm_file_tt_xide" title="#{iimsg.Obdoc_obdoc_nm_file_tt}" value="#{iimsg.Obdoc_obdoc_nm_file_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_cd">
<f:facet name="header">
<h:panelGroup id="pg_obdoc_cd_tt">
<h:outputText id="hd_obdoc_cd_tt_xide" title="#{iimsg.Obdoc_obdoc_cd_tt}" value="#{iimsg.Obdoc_obdoc_cd_tt}"/>
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
<!-- codfColumnGen -->
<h:column id="obdoc_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdoc_tp">
<h:inputText id="fil_obdoc_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'DOCTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocBean.fil_obdoc_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_cd_emissor_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdoc_cd_emissor">
<h:inputText id="fil_obdoc_cd_emissor_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'DOCEM', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocBean.fil_obdoc_cd_emissor}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_tp_cfasttp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdoc_tp_cfasttp">
<h:inputText id="fil_obdoc_tp_cfasttp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ASTTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocBean.fil_obdoc_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_nm_file">
<f:facet name="footer">
<h:panelGroup id="fpg_obdoc_nm_file">
<h:inputText id="obdoc_nm_file_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocBean.fil_obdoc_nm_file}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_obdoc_cd">
<h:inputText id="obdoc_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocBean.fil_obdoc_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadObdocBean.pesqData}"
var="Obdoc"
binding="#{cadObdocBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObdocBean.pageLength}"
first="#{cadObdocBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="obdoc_tp">
<h:panelGroup id="pg_obdoc_tp_sg">
<h:outputLabel id="sel_obdoc_tp" onclick="slvlcd(this.id,this.value);" value="#{Obdoc.obdoc_tp}"/>
<h:outputText id="obdoc_tp_desc" value="#{Obdoc.obdoc_tp_desc}"/>
<h:inputHidden id="sel_obdoc_ct" value="#{Obdoc.obdoc_ct}"/>
<h:inputHidden id="sel_obdoc_tp_arquivo" value="#{Obdoc.obdoc_tp_arquivo}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_cd_emissor">
<h:panelGroup id="pg_obdoc_cd_emissor_sg">
<h:outputLabel id="sel_obdoc_cd_emissor" title="#{Obdoc.obdoc_cd_emissor_desc}" onclick="slvlcd(this.id,this.value);" value="#{Obdoc.obdoc_cd_emissor}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdoc_tp_cfasttp">
<h:panelGroup id="pg_obdoc_tp_cfasttp_sg">
<h:outputLabel id="sel_obdoc_tp_cfasttp" title="#{Obdoc.obdoc_tp_cfasttp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Obdoc.obdoc_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_nm_file">
<h:panelGroup id="pg_obdoc_nm_file_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdoc_nm_file"  onclick="slvl(this.id,this.value);" value="#{Obdoc.obdoc_nm_file}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdoc_cd">
<h:panelGroup id="pg_obdoc_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdoc_cd"  onclick="slvl(this.id,this.value);" value="#{Obdoc.obdoc_cd}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obdoc_id" value="#{Obdoc.obdoc_id}"/>
<h:inputHidden id="sel_obdoc_sq" value="#{Obdoc.obdoc_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObdocBean.doObternullSearchBack}" onmousedown="wtran='obdoccad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obdoc_id');valor2=rpel(aa+'sel_obdoc_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
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
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Obdoc" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsObdoc" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObdocBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obxlsobdoc" action="#{cadObxlsObdocBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlsobdoc" action="#{cadObxlsObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsobdoc" action="#{cadObxlsObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
