<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuProssBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css"  href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"  href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" type="text/css"  href="../style.css">
<link rel="stylesheet" type="text/css"  href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
fcf('cadForm:_Solin');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuProssBean.role}"/></title>
<style>
.menu-group {
border: 1px solid black;
width: 97%;
margin-top: 5px;
margin-bottom: 10px;
margin-left: 5px;
height: 86px;
}
.menu-group th {
border-bottom: 1px solid black;
}
.menu-group td:first-of-type {
width: 50px;
}
</style>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuprosscad';cadbeanx='cadZMenuProssBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->

<div class="logistica-integrada">
	<div class="container bg-transparent minExpand">
		<div class="row">
			<div class="col twelve-mobile text-center">
				<h2 class="title">SISPAT<strong>GEO</strong></h2>
				<p class="subtitle"><h:outputText value="#{cadZMenuProssBean.role}"/></p>
			</div>
		</div>
	<div align="center" class="mt-3">
	<h:selectOneMenu styleClass="btn btn-outline-secondary dropdown-toggle" value="#{cadZMenuProssBean.selectedItem}">
	<f:selectItems value="#{cadZMenuProssBean.selectItems}" />
	</h:selectOneMenu>
	<h:commandButton value="ativar" styleClass="btn btn-primary" action="#{cadZMenuProssBean.action}" />
	<h:messages />
	&nbsp&nbsp&nbsp&nbsp
	<h:inputText id="mesg_var" value="#{cadZMenuProssBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
	</div>
	<div align="center" class="mt-5 h4">
	<h:outputText  value="#{iimsg.ZMenuPross_MenuSolic_tt}"/>
	</div>
		<div class="row" style="margin-top:20px">						
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeSolin" rendered="#{cadZMenuProssBean.canac_solin}" onmousedown="fExecx('solinpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolinBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Solin40.png" styleClass="btp" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.solin_TT_ta}"/></h5>
				</a>
				</div>			
			</div>	
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeSolct" rendered="#{cadZMenuProssBean.canac_solct}" onmousedown="fExecx('solctpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadSolctBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Solct40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.solct_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeFxprs" rendered="#{cadZMenuProssBean.canac_fxprs}" onmousedown="fExecx('fxprspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadFxprsBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Fxprs40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.fxprs_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExePrhsogpx" rendered="#{cadZMenuProssBean.canac_prhsogpx}" onmousedown="fExecx('prhsogpxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadPrhsogpxBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Prhsogpx40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prhsogpx_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
		</div>			
	<div align="center" class="mt-5 h4">
	<h:outputText  value="#{iimsg.ZMenuPross_MenuPross_tt}"/>
	</div>
		<div class="row" style="margin-top:20px">						
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssImcpa" rendered="#{cadZMenuProssBean.canac_prossimcpa}" onmousedown="fExecx('prossimcpapsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssImcpaBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Solin40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossimcpa_TT_ta}"/></h5>
				</a>
				</div>			
			</div>	
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssMrbxp" rendered="#{cadZMenuProssBean.canac_prossmrbxp}" onmousedown="fExecx('prossmrbxppsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssMrbxpBean.doSelecionar}">
				<h:graphicImage  url="../imagens/ProssMrbxp40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossmrbxp_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssMrbxa" rendered="#{cadZMenuProssBean.canac_prossmrbxa}" onmousedown="fExecx('prossmrbxapsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssMrbxaBean.doSelecionar}">
				<h:graphicImage  url="../imagens/ProssMrbxp40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossmrbxa_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssAfata" rendered="#{cadZMenuProssBean.canac_prossafata}" onmousedown="fExecx('prossafatapsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssAfataBean.doSelecionar}">
				<h:graphicImage  url="../imagens/ferramenta.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossafata_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
		</div>	
		<div class="row" style="margin-top:20px">						
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssIvges" rendered="#{cadZMenuProssBean.canac_prossivges}" onmousedown="fExecx('prossivgespsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssIvgesBean.doSelecionar}">
				<h:graphicImage  url="../imagens/FaixaDeDominio.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossivges_TT_ta}"/></h5>
				</a>
				</div>			
			</div>	
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeProssIvgen" rendered="#{cadZMenuProssBean.canac_prossivgen}" onmousedown="fExecx('prossivgenpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssIvgenBean.doSelecionar}">
				<h:graphicImage  url="../imagens/FaixaDeDominio.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prossivgen_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<h:commandLink id="aExeProssComod" rendered="#{cadZMenuProssBean.canac_prosscomod}" onmousedown="fExecx('prosscomodpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadProssComodBean.doSelecionar}">
				<a href="#">
				<h:graphicImage  url="../imagens/ProssComod40.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.prosscomod_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
		</div>
		
	</div>
		
			
<h:inputHidden id="tabsvf" value="#{cadZMenuProssBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuProssBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuProssBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuProssBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuProssBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuProssBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuProssBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuProssBean.xmesg_st}" />
<h:outputText id="label_key_enter" style="display:none" value="#{iimsg.label_key_enter}" />
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="label_and" style="display:none" value="#{iimsg.label_and}" />
<h:outputText id="label_or" style="display:none" value="#{iimsg.label_or}" />
<h:outputText id="msg_actionValidOnlyForButtons" style="display:none" value="#{iimsg.msg_actionValidOnlyForButtons}" />
<h:outputText id="msg_actionNotValidForButtons" style="display:none" value="#{iimsg.msg_actionNotValidForButtons}" />
<h:outputText id="msg_cleanCurrentSelection" style="display:none" value="#{iimsg.msg_cleanCurrentSelection" />
<h:outputText id="msg_cleanSelectionToGetNewRecord" style="display:none" value="#{iimsg.msg_cleanSelectionToGetNewRecord" />
<h:outputText id="msg_fillTheField" style="display:none" value="#{iimsg.msg_fillTheField}" />
<h:outputText id="msg_itDoesntApply" style="display:none" value="#{iimsg.msg_itDoesntApply}" />
<h:outputText id="msg_cleanRecordToImport" style="display:none" value="#{iimsg.msg_cleanRecordToImport}" />
<h:outputText id="msg_selectFromListToExceuteFunction" style="display:none" value="#{iimsg.msg_selectFromListToExceuteFuncion}" />
<h:outputText id="msg_invalidOperation" style="display:none" value="#{iimsg.msg_invalidOperation}" />
<h:outputText id="msg_invalidValue" style="display:none" value="#{iimsg.msg_invalidValue}" />
<h:outputText id="msg_valueOf" style="display:none" value="#{iimsg.msg_valueOf}" />
<h:outputText id="msg_mustBe" style="display:none" value="#{iimsg.msg_mustBe}" />
<h:outputText id="msg_cannotBe" style="display:none" value="#{iimsg.msg_cannotBe}" />
<h:outputText id="msg_unlock" style="display:none" value="#{iimsg.msg_unlock}" />
<h:outputText id="multiple_porte" style="display:none" value="#{iimsg.multiple_porte}" />
<h:outputText id="no_porte" style="display:none" value="#{iimsg.no_porte}" />
<h:outputText id="sys_confirm_excluir" style="display:none" value="#{iimsg.sys_confirm_excluir}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />



<!-- Conteudo -->
<!-- iFrames -->
<iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakht" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakhv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfkds" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiLocalidadesch" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiwsCEP" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveValue" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeSw" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeHelp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveFieldx" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fTrainDelayCalc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="TrainOprDelay" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:inputHidden id="source" value="cadForm:"/>
<h:inputHidden id="sourcedesc" value="cadForm:nome"/>
<h:commandLink id="xsel_vali" action="#{cadZMenuProssBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_solin" action="#{cadSolinBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_fxprs" action="#{cadFxprsBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prhsogpx" action="#{cadPrhsogpxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossimcpa" action="#{cadProssImcpaBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossmrbxp" action="#{cadProssMrbxpBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossmrbxa" action="#{cadProssMrbxaBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossafata" action="#{cadProssAfataBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossivges" action="#{cadProssIvgesBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prossivgen" action="#{cadProssIvgenBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_prosscomod" action="#{cadProssComodBean.doSelecionar}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenupross" action="#{cadZMenuProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenupross" action="#{cadZMenuProssBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
