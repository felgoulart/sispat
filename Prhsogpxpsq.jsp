<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPrhsogpxBean");%>
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
<link rel="stylesheet" href="../Prhsogpxpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../Prhsogpfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("prhsogppsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:prhso_id_pross_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_prhso_tp_cfpjtp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_prhso_st_acao_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadPrhsogpxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='PrhsogpxSfm';;tran='prhsogpxpsq'; vl='';cadbeanx='cadPrhsogpxBean';<%session.setAttribute("tipo","prhsogpxpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadPrhsogpxBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadPrhsogpxBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch" styleClass="btn btn-outline-dark" rendered="#{cadPrhsogpxBean.assistx}" value ="Voltar" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPrhsogpxBean.doReturnMenu}"/>
		</div>
	</div>
	</div>
<!-- Titulo -->



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
	<div class="col-12 text-white mb-2" align="center" style="vertical-align: text-bottom;">
	<h:selectOneMenu styleClass="btn btn-outline-secondary dropdown-toggle" value="#{cadPrhsogpxBean.selectedItem}">
	<f:selectItems value="#{cadPrhsogpxBean.selectItems}" />
	</h:selectOneMenu>
	<h:commandButton styleClass="btn btn-outline-dark" value="OK" action="#{cadPrhsogpxBean.action}" />
	<h:messages />
	</div>
</div>
<div class="row">
<div class="col-9 text-white mb-2" align="left" style="vertical-align: text-bottom;">
<h:commandButton id="aBackToSearchMenu" styleClass="d-none" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'prhsogpxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadPrhsogpxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadPrhsogpxBean.hasPrevPage}" action="#{cadPrhsogpxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadPrhsogpxBean.hasNextPage}" action="#{cadPrhsogpxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btn btn-outline-dark"  value="Filtrar"    title="#{iimsg.botao_filtrar}" action="#{cadPrhsogpxBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btn btn-outline-dark"  value="Limpar"   rendered="#{cadPrhsogpxBean.canPesquisar}" title="#{iimsg.botao_limpar}" action="#{cadPrhsogpxBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btn btn-outline-dark"  value="Novo"  rendered="#{cadPrhsogpxBean.canInserir}"  onmousedown="fNovorwpp('prhsogpcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadPrhsogpxBean.doNovoUpload}"/>
<h:commandButton id="XlsExport_xls_stb"  styleClass="btn btn-outline-dark"  value="Exportar"  rendered="#{cadPrhsogpxBean.canPesquisar}" title="#{iimsg.Prhsogp_XlsExport_xls_stb_tt}" action="#{cadPrhsogpxBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Prhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldxSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPrhsogpxSfm" styleClass="d-none"  tabindex="-1" rendered="#{cadPrhsogpxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','PrhsogpxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadPrhsogpxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadPrhsogpxBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</div>
    <div class="col-3 text-white" align="right" style="vertical-align: text-bottom;">
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadPrhsogpxBean.codfqt}"   styleClass="h6 text-secondary"/>
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
<h:column id="prhso_id_pross_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_prhso_id_pross_tt">
<h:outputText id="hd_prhso_id_pross_tt" title="#{iimsg.Prhsogp_prhso_id_pross_tt}" value="#{iimsg.Prhsogp_prhso_id_pross_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp_tt">
<f:facet name="header">
<h:panelGroup id="pg_prhso_tp_cfpjtp_tt">
<h:outputText id="hd_prhso_tp_cfpjtp_tt" title="#{iimsg.Prhsogp_prhso_tp_cfpjtp_tt}" value="#{iimsg.Prhsogp_prhso_tp_cfpjtp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<f:facet name="header">
<h:panelGroup id="pg_prhso_sq_dthm_tt">
<h:outputText id="hd_prhso_sq_dthm_tt_xide" title="#{iimsg.Prhsogp_prhso_sq_dthm_tt}" value="#{iimsg.Prhsogp_prhso_sq_dthm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<f:facet name="header">
<h:panelGroup id="pg_prhso_tp_acao_tt">
<h:outputText id="hd_prhso_tp_acao_tt_xide" title="#{iimsg.Prhsogp_prhso_tp_acao_tt}" value="#{iimsg.Prhsogp_prhso_tp_acao_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<f:facet name="header">
<h:panelGroup id="pg_prhso_ds_assunto_tt">
<h:outputText id="hd_prhso_ds_assunto_tt_xide" title="#{iimsg.Prhsogp_prhso_ds_assunto_tt}" value="#{iimsg.Prhsogp_prhso_ds_assunto_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao_tt">
<f:facet name="header">
<h:panelGroup id="pg_prhso_st_acao_tt">
<h:outputText id="hd_prhso_st_acao_tt" title="#{iimsg.Prhsogp_prhso_st_acao_tt}" value="#{iimsg.Prhsogp_prhso_st_acao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<f:facet name="header">
<h:panelGroup id="pg_prhso_cd_de_tt">
<h:outputText id="hd_prhso_cd_de_tt_xide" title="#{iimsg.Prhsogp_prhso_cd_de_tt}" value="#{iimsg.Prhsogp_prhso_cd_de_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<f:facet name="header">
<h:panelGroup id="pg_prhso_cd_para_tt">
<h:outputText id="hd_prhso_cd_para_tt_xide" title="#{iimsg.Prhsogp_prhso_cd_para_tt}" value="#{iimsg.Prhsogp_prhso_cd_para_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pross_fxaco_ongrid_tt">
<h:outputText id="hd_pross_fxaco_ongrid_tt_xide" title="#{iimsg.Prhsogp_pross_fxaco_ongrid_tt}" value="#{iimsg.Prhsogp_pross_fxaco_ongrid_ta}"/>
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_ttpk">
<h:outputText id="hd_recd_wd_tt_xidepk" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
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
<h:column id="prhso_id_pross_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_id_pross">
<!--   // 444-->
<h:inputText id="prhso_id_pross_xfil" title="#{iimsg.hint_dblclick}" ondblclick="this.value=''" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_id_pross}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_prhso_tp_cfpjtp">
<h:inputText id="fil_prhso_tp_cfpjtp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPPRO', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_tp_cfpjtp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_sq_dthm">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_tp_acao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_ds_assunto">
<h:inputText id="prhso_ds_assunto_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_ds_assunto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_prhso_st_acao">
<h:inputText id="fil_prhso_st_acao_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STAPS', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_st_acao}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_cd_de">
<h:inputText id="prhso_cd_de_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_cd_de}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_cd_para">
<h:inputText id="prhso_cd_para_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpxBean.fil_prhso_cd_para}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpross_fxaco_ongrid">
<h:outputText id="bButtpross_fxaco_ongrid" styleClass="pf" value=""/>
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ftpk">
<h:outputText id="recd_wd_ftpk" value=""/>
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
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadPrhsogpxBean.pesqData}"
var="Prhso"
binding="#{cadPrhsogpxBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadPrhsogpxBean.pageLength}"
first="#{cadPrhsogpxBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="prhso_id_pross_fk">
<h:panelGroup id="pg_prhso_id_pross_sg">
<!--   // 333-->
<h:outputText id="sel_prhso_id_pross" value="#{Prhso.prhso_id_pross}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp">
<h:panelGroup id="pg_prhso_tp_cfpjtp_sg">
<h:outputLabel id="sel_prhso_tp_cfpjtp" title="#{Prhso.prhso_tp_cfpjtp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:inputHidden id="sel_prhso_st_sum" value="#{Prhso.prhso_st_sum}"/>
<h:inputHidden id="sel_prhso_st" value="#{Prhso.prhso_st}"/>
<h:inputHidden id="sel_prhso_ds_depara" value="#{Prhso.prhso_ds_depara}"/>
<h:inputHidden id="sel_prhso_ds_deparax" value="#{Prhso.prhso_ds_deparax}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<h:panelGroup id="pg_prhso_sq_dthm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_sq_dthm"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_sq_dthm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<h:panelGroup id="pg_prhso_tp_acao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_tp_acao"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_tp_acao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<h:panelGroup id="pg_prhso_ds_assunto_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_ds_assunto"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_ds_assunto}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao">
<h:panelGroup id="pg_prhso_st_acao_sg">
<h:outputLabel id="sel_prhso_st_acao" title="#{Prhso.prhso_st_acao_desc}" onclick="slvlcd(this.id,this.value);" value="#{Prhso.prhso_st_acao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<h:panelGroup id="pg_prhso_cd_de_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_cd_de"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_cd_de}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<h:panelGroup id="pg_prhso_cd_para_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_cd_para"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_cd_para}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<h:panelGroup id="pg_pross_fxaco_ongrid_bt">
<h:inputHidden id="sel_prhso_id_prosspross_fxaco_ongrid_bt" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:inputHidden id="sel_prhso_sqpross_fxaco_ongrid_bt" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:commandButton id="flag_imgrecd_wd_pross_fxaco_ongrid" action="#{cadFxacoBean.doSelecionar}" image="../imagens/process.png" onmousedown="wtran='fxacopsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_prhso_id_prosspross_fxaco_ongrid_bt').value;valor2=el(aa+'sel_prhso_sqpross_fxaco_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=prhsogppsq&tipo='+wtran+'&valor='+valor1+','+valor2;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_prhso_sq" value="#{Prhso.prhso_sq}"/>
<!-- CRX-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadPrhsogpxBean.doObternullSearchBack}" onmousedown="wtran='prhsogpxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_prhso_id_pross');valor2=rpel(aa+'sel_prhso_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<h:panelGroup id="pg_recd_wd_sgpk">
<h:inputHidden id="sel_prhso_sqpk" value="#{Prhso.prhso_sq}"/>
<!-- PRX-20-->  <h:commandButton id="flag_imgrecd_wdpk" image="../imagens/btRecdpk.gif" onmousedown="aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_prhso_id_pross');typevl=rpel(aa+'sel_prhso_tp_cfpjtp');tranx=ProssType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey; onclickx('xrec_'+tranx,'yes');"/>
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

<!-- Conteudo -->
<iframe id="Prhsogp" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obdocpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
<!-- Super Trans Subtypes c'ommandLinks -->
<h:commandLink id="xrec_prossimcpa" action="#{cadProssImcpaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossafata" action="#{cadProssAfataBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssMrbxaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssMrbxpBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivges" action="#{cadProssIvgesBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivgen" action="#{cadProssIvgenBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prosscomod" action="#{cadProssComodBean.doObternull}" immediate="true">
<f:param name="tipoant" value="prhsogpxpsq"/>
</h:commandLink>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPrhsogpxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadPrhsogpxBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_prhsogp" action="#{cadPrhsogpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prhsogp" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossimcpa" action="#{cadProssimcpaBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossafata" action="#{cadProssafataBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxa" action="#{cadProssmrbxaBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxp" action="#{cadProssmrbxpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivges" action="#{cadProssivgesBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivgen" action="#{cadProssivgenBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prosscomod" action="#{cadProsscomodBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpr" action="#{cadObdocprBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpr" action="#{cadObdocprBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpr" action="#{cadObdocprBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpreml" action="#{cadObdocpremlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_fxaco" action="#{cadFxacoBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
