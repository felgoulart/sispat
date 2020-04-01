<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAdminBean");%>
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
<link rel="stylesheet" href="../projStandardMenu.css" type="text/css">
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
fcf('cadForm:_Userx');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAdminBean.role}"/></title>
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
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuadmincad';cadbeanx='cadZMenuAdminBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>

<div class="logistica-integrada">
	<div class="container bg-transparent minExpand">
		<div class="row">
			<div class="col twelve-mobile text-center">
				<h2 class="title">SISPAT<strong>GEO</strong></h2>
				<p class="subtitle"><h:outputText value="#{cadZMenuAdminBean.role}"/></p>
			</div>
		</div>
	<div align="center" class="mt-3">
	<h:selectOneMenu styleClass="btn btn-outline-secondary dropdown-toggle" value="#{cadZMenuAdminBean.selectedItem}">
	<f:selectItems value="#{cadZMenuAdminBean.selectItems}" />
	</h:selectOneMenu>
	<h:commandButton value="ativar" styleClass="btn btn-primary" action="#{cadZMenuAdminBean.action}" />
	<h:messages />
	&nbsp&nbsp&nbsp&nbsp
	<h:inputText id="mesg_var" value="#{cadZMenuAdminBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
	</div>
		<div class="row mt-5" style="margin-top:20px">		
			<div class="col-sm-1">
		
			</div>
			<div class="col-sm-2">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeUserx" rendered="#{cadZMenuAdminBean.canac_userx}" onmousedown="fExecx('userxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadUserxBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Solin40.png" height="100px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.userx_TT_ta}"/></h5>
				</a>
				</div>			
			</div>	
			<div class="col-sm-2">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeRole" rendered="#{cadZMenuAdminBean.canac_role}" onmousedown="fExecx('rolepsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadRoleBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Solct40.png" height="100px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.role_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-2">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeTranscodf" rendered="#{cadZMenuAdminBean.canac_transcodf}" onmousedown="fExecx('transcodfpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadTranscodfBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Fxprs40.png" height="100px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.transcodf_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-2">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeMssg" rendered="#{cadZMenuAdminBean.canac_mssg}" onmousedown="fExecx('mssgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMssgBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Mssg40.png" height="100px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.mssg_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-2">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeMesg" rendered="#{cadZMenuAdminBean.canac_mesg}" onmousedown="fExecx('mesgpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadMesgBean.doSelecionar}">
				<h:graphicImage  url="../imagens/Mssg40.png" height="100px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.mesg_TT_ta}"/></h5>
				</a>
				</div>			
			</div>
			<div class="col-sm-1">
		
			</div>
		</div>	
	</div>
</div>
<h:inputHidden id="tabsvf" value="#{cadZMenuAdminBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAdminBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAdminBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAdminBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAdminBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAdminBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAdminBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAdminBean.xmesg_st}" />
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
<h:commandLink id="xsel_vali" action="#{cadZMenuAdminBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAdminBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_userx" action="#{cadUserxBean.doSelecionarNull}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_transcodf" action="#{cadTranscodfBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mssg" action="#{cadMssgBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_mesg" action="#{cadMesgBean.doSelecionarNull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuadmin" action="#{cadZMenuAdminBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuadmin" action="#{cadZMenuAdminBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
