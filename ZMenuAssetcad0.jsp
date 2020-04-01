
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadZMenuAssetBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" type="text/css"  href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"  href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" type="text/css"  href="../style.css">
<link rel="stylesheet" type="text/css"  href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
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
fcf('cadForm:_AssetVhwag');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadZMenuAssetBean.role}"/></title>
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
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='zmenuassetcad';cadbeanx='cadZMenuAssetBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>

<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>

<!-- Principal -->


<div class="logistica-integrada">
	<div class="container bg-transparent minExpand">
		<div class="row">
			<div class="col twelve-mobile text-center">
				<h2 class="title">SISPAT<strong>GEO</strong></h2>
				<p class="subtitle"><h:outputText value="#{cadZMenuAssetBean.role}"/></p>
			</div>
		</div>
	<div align="center" class="mt-5">
	<h:selectOneMenu styleClass="btn btn-outline-secondary dropdown-toggle" value="#{cadZMenuAssetBean.selectedItem}">
	<f:selectItems value="#{cadZMenuAssetBean.selectItems}" />
	</h:selectOneMenu>
	<h:commandButton value="ativar" styleClass="btn btn-primary" action="#{cadZMenuAssetBean.action}" />
	<h:messages />
	&nbsp&nbsp&nbsp&nbsp
	<h:inputText id="mesg_var" value="#{cadZMenuAssetBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
	</div>
		<div class="row" style="margin-top:50px">						
			<div class="col-sm-3">
					<div class="mx-auto p-3 text-center">
					<a href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<img src="imagens/MaterialRodante.png" height="150px" ></a>
					<h5 class="mt-3">Material Rodante</h5>
					<div class="dropdown-menu rounded" aria-labelledby="dropdownMenuLink" >
							<a class="dropdown-item" href="#">					
									<div class="col-12 text-center">
									<h:commandLink id="aExeAssetVhwag" rendered="#{cadZMenuAssetBean.canac_assetvhwag}" onmousedown="fExecx('assetvhwagpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhwagBean.doSelecionar}">
									<h:outputText styleClass="list-inline-item" value="#{iimsg.assetvhwag_TT_ta}"/>
									</h:commandLink>
									</div>
							</a>
							<a class="dropdown-item" href="#">
									<div class="col-12 text-center">
									<h:commandLink id="aExeAssetVheng" rendered="#{cadZMenuAssetBean.canac_assetvheng}" onmousedown="fExecx('assetvhengpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhengBean.doSelecionar}">
									<h:outputText styleClass="list-inline-item" value="#{iimsg.assetvheng_TT_ta}"/>
									</h:commandLink>							
									</div>
							</a>
							<a class="dropdown-item" href="#">
									<div class="col-12 text-center">
									<h:commandLink id="aExeAssetVhaux" rendered="#{cadZMenuAssetBean.canac_assetvhaux}" onmousedown="fExecx('assetvhauxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhauxBean.doSelecionar}">
									<h:outputText styleClass="list-inline-item" value="#{iimsg.assetvhaux_TT_ta}"/>
									</h:commandLink>
									</div>			
							</a>
							<a class="dropdown-item" href="#">
									<div class="col-12 text-center">
									<h:commandLink id="aExeAssetVhpax" rendered="#{cadZMenuAssetBean.canac_assetvhpax}" onmousedown="fExecx('assetvhpaxpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhpaxBean.doSelecionar}">
									<h:outputText styleClass="list-inline-item" value="#{iimsg.assetvhpax_TT_ta}"/>
									</h:commandLink>
									</div>		
							</a>
							<a class="dropdown-item" href="#">
									<div class="col-12 text-center">
									<h:commandLink id="aExeAssetVhrdv" rendered="#{cadZMenuAssetBean.canac_assetvhrdv}" onmousedown="fExecx('assetvhrdvpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetVhrdvBean.doSelecionar}">
									<h:outputText styleClass="list-inline-item" value="#{iimsg.assetvhrdv_TT_ta}"/>
									</h:commandLink>
									</div>		
							</a>
					</div>
					</div>	
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
				<h:commandLink id="aExeAssetBldng" rendered="#{cadZMenuAssetBean.canac_assetbldng}" onmousedown="fExecx('assetbldngpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetBldngBean.doSelecionar}">
				<h:graphicImage  url="imagens/Edificacao.png" height="150px" />
				</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.assetbldng_TT_ta}"/></h5>
				</a>
				</div>			
			</div>			
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
						<h:commandLink id="aExeAssetInvas" rendered="#{cadZMenuAssetBean.canac_assetinvas}" onmousedown="fExecx('assetinvaspsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetInvasBean.doSelecionar}">
						<h:graphicImage  url="imagens/FaixaDeDominio.png" height="150px" />
						</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="#{iimsg.assetinvas_TT_ta}"/></h5>
				</a>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="mx-auto p-3 text-center">
				<a href="#">
						<h:commandLink id="aExeAssetEqgpt" rendered="#{cadZMenuAssetBean.canac_asseteqgpt}" onmousedown="fExecx('asseteqgptpsq', tran, this.id, 'no', '', 'false');" immediate="true" styleClass="mnt" action="#{cadAssetEqgptBean.doSelecionar}">
						<h:graphicImage  url="imagens/GrandePorte.png" height="150px" />
						</h:commandLink>
					<h5 class="mt-3"><h:outputText styleClass="list-inline-item" value="Equipamento de Grande Porte"/></h5>
				</a>
				</div>
			</div>
						
		</div>			
	</div>


<!-- Conteudo -->

<h:inputHidden id="tabsvf" value="#{cadZMenuAssetBean.tabsvf}" />
<h:inputHidden id="xhelp_rc" value="#{cadZMenuAssetBean.xhelp_rc}" />
<h:inputHidden id="tabsvf_in" value="#{cadZMenuAssetBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadZMenuAssetBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadZMenuAssetBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadZMenuAssetBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadZMenuAssetBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadZMenuAssetBean.xmesg_st}" />
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
</h:form>
<!-- Principal -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:inputHidden id="source" value="cadForm:"/>
<h:inputHidden id="sourcedesc" value="cadForm:nome"/>
<h:commandLink id="xsel_vali" action="#{cadZMenuAssetBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadZMenuAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_userpw" action="#{cadUserpwBean.doObter}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhwag" action="#{cadAssetVhwagBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvheng" action="#{cadAssetVhengBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhaux" action="#{cadAssetVhauxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhpax" action="#{cadAssetVhpaxBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetvhrdv" action="#{cadAssetVhrdvBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetbldng" action="#{cadAssetBldngBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_assetinvas" action="#{cadAssetInvasBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 1-->
<h:commandLink id="xsel_asseteqgpt" action="#{cadAssetEqgptBean.doSelecionar}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_zmenuasset" action="#{cadZMenuAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_zmenuasset" action="#{cadZMenuAssetBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
   <script src="bootstrap/js/jquery.min.js"></script>
   <script src="bootstrap/js/popper.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
</f:view>
