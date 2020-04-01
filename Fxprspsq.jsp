<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadFxprsBean");%>
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
<link rel="stylesheet" href="../Fxprspsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("fxprspsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_fxprs_tp_area_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadFxprsBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='FxprsSfm';;tran='fxprspsq'; vl='';cadbeanx='cadFxprsBean';<%session.setAttribute("tipo","fxprspsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->

	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadFxprsBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadFxprsBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch" styleClass="btn btn-outline-dark" rendered="#{cadFxprsBean.assistx}" value ="Voltar" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadFxprsBean.doReturnMenu}"/>
		</div>
	</div>
	</div>




<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<h:commandButton id="aPrev" styleClass="d-none"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadFxprsBean.hasPrevPage}" action="#{cadFxprsBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="d-none"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadFxprsBean.hasNextPage}" action="#{cadFxprsBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar"  styleClass="btn btn-outline-dark"  value="Filtrar"  title="#{iimsg.botao_filtrar}" action="#{cadFxprsBean.doSelecionar}"/>
<h:commandButton id="aLimpar"  styleClass="btn btn-outline-dark"  value="Limpar"  rendered="#{cadFxprsBean.canPesquisar}"  title="#{iimsg.botao_limpar}" action="#{cadFxprsBean.doLimparPesq}"/>
<h:commandButton id="aNew"  styleClass="btn btn-outline-dark"  value="Inserir"  rendered="#{cadFxprsBean.canInserir}"  onmousedown="fNovorwpp('fxprscad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadFxprsBean.doNovo}"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Fxprs');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpFxprsSfm" styleClass="d-none" tabindex="-1" rendered="#{cadFxprsBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','FxprsSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadFxprsBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadFxprsBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
    <div class="col-lg text-white" align="right" style="vertical-align: text-bottom;">
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadFxprsBean.codfqt}"   styleClass="h6 text-secondary"/>
	</div>
<div id="div_dtDados_hor_" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- fkeyColumnGen -->
<h:column id="fxprs_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_fxprs_cd_tt">
<h:outputText id="hd_fxprs_cd_tt" title="#{iimsg.Fxprs_fxprs_cd_tt}" value="#{iimsg.Fxprs_fxprs_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxprs_ds">
<f:facet name="header">
<h:panelGroup id="pg_fxprs_ds_tt">
<h:outputText id="hd_fxprs_ds_tt_xide" title="#{iimsg.Fxprs_fxprs_ds_tt}" value="#{iimsg.Fxprs_fxprs_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="fxprs_tp_area_tt">
<f:facet name="header">
<h:panelGroup id="pg_fxprs_tp_area_tt">
<h:outputText id="hd_fxprs_tp_area_tt" title="#{iimsg.Fxprs_fxprs_tp_area_tt}" value="#{iimsg.Fxprs_fxprs_tp_area_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_tt">
<h:outputText id="hd_fxaco_tt_xide" title="#{iimsg.Fxprs_fxaco_tt}" value="#{iimsg.Fxprs_fxaco_tt}"/>
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
<h:column rendered="#{cadFxprsBean.assist}">
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
<h:column id="fxprs_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_fxprs_cd">
<h:inputText id="fxprs_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadFxprsBean.fil_fxprs_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxprs_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_fxprs_ds">
<h:inputText id="fxprs_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadFxprsBean.fil_fxprs_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="fxprs_tp_area_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_fxprs_tp_area">
<h:inputText id="fil_fxprs_tp_area_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ARFNC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadFxprsBean.fil_fxprs_tp_area}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco">
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
<h:column rendered="#{cadFxprsBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:301px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadFxprsBean.pesqData}"
var="Fxprs"
binding="#{cadFxprsBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadFxprsBean.pageLength}"
first="#{cadFxprsBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="fxprs_cd_fk">
<h:panelGroup id="pg_fxprs_cd_sg">
<!--   // 333-->
<h:outputLabel id="sel_fxprs_cd" onclick="slvl(this.id,this.value);" value="#{Fxprs.fxprs_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="fxprs_ds">
<h:panelGroup id="pg_fxprs_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_fxprs_ds"  onclick="slvl(this.id,this.value);" value="#{Fxprs.fxprs_ds}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="fxprs_tp_area">
<h:panelGroup id="pg_fxprs_tp_area_sg">
<h:outputLabel id="sel_fxprs_tp_area" onclick="slvlcd(this.id,this.value);" value="#{Fxprs.fxprs_tp_area}"/>
<h:outputText id="fxprs_tp_area_desc" value="#{Fxprs.fxprs_tp_area_desc}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="fxaco_bt">
<h:panelGroup id="pg_fxaco_bt">
<h:inputHidden id="sel_fxprs_cdfxaco_bt" value="#{Fxprs.fxprs_cd}"/>
<h:commandButton id="flag_imgrecd_wd_fxaco" action="#{cadFxacoBean.doSelecionar}" image="../imagens/btReg.gif" onmousedown="wtran='fxacopsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_fxprs_cdfxaco_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=fxprspsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadFxprsBean.doObternullSearchBack}" onmousedown="wtran='fxprscad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_fxprs_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadFxprsBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_fxprs_cd');desc=rel(aa+'sel_fxprs_nm_title');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Fxprs" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadFxprsBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_fxprs" action="#{cadFxprsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_fxprs" action="#{cadFxprsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_fxaco" action="#{cadFxacoBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
