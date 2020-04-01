<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../styleBS.css">
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
fcf('cadForm:obimg_nm_file');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title><h:outputText value="#{cadObimgBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='obimgcad';cadbeanx='cadObimgBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" enctype="multipart/form-data" >
<jsp:setProperty property="cadbeanx" name="cadObimgBean" value="cadObimgBean"/>
<h:inputHidden id="cadbeanx" value="#{cadObimgBean.cadbeanx}"  />
<%@include file="projHeader1.jsp"%>



	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText styleClass="h2" value="#{cadObimgBean.trans_tt}"/></h2>
		
		<p class="subtitle" style="text-align:center;color:#505050">
			<h:outputLabel  styleClass="h6"  id="lbl_obimg_id" for="obimg_id"  value="#{iimsg.Obimg_obimg_id_tt}"/> 
			<h:outputLabel id="obimg_id" tabindex="-1"  value="#{cadObimgBean.obimg_id}"  styleClass="h6" />
			</p>
		<p style="text-align:center;">
		<div class="row" align="center">
			<div class="col">
			<h:outputLabel id="mesg_var" value="#{cadObimgBean.mesg_var}"  styleClass="alert alert-primary" tabindex="-1" />
			</div>
	   </div>			
	   </p>
		</div>
		<div class="col-sm-1">
		       
		<h:commandButton id="aClose" immediate="true" styleClass="btn btn-outline-dark" value ="Voltar" title="#{iimsg.botao_close}" onmousedown="msgwinclose()"/>
		</div>
	</div>
	</div>

<div class="container bg-transparent">
	<div class="row">
	<div class="col-sm-7">
 	<div class="row" align="center">
		<div class="mx-auto">
		<img src="" id="img_grande" style="display:none" class="image" width="90%"/>
		</div>
   </div>
 	<div class="row" align="center">
		<div class="mx-auto" >
		<h:inputTextarea id="obimg_ds" tabindex="2"  value="#{cadObimgBean.obimg_ds}" cols="60" rows="1" styleClass="form-control" onchange="bv('','obimg_ds','0',this.value);"/>
		</div>
	</div>
   </div>
    <div class="col-sm-5">
   	<div id="abc_notr" style="display: none"></div>
	<div class="row" style="padding-bottom:40px">
		<!--Miniaturas-->
		<table> <tr> <td>
		<c:forEach var="imagem_" items="${ imagens }" varStatus="st">
		<img src="<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img=<c:out value="${ imagem_.obimg_nm_file }" />parm=<c:out value="${ imagem_.obimg_id }" />&tipo=icone" onclick="mostraDados('<c:out value="${  imagem_.obimg_id }" />','<c:out value="${  imagem_.obimg_sq }" />','<c:out value="${  imagem_.obimg_ds }" />','<c:out value="${  imagem_.obimg_nm_file }" />');">
		<c:if test="${ st.count mod 20 == 0}"><br></c:if>
		</c:forEach>
		</td> </tr> </table>
		
		<!--Miniaturas-->
	</div>
	<div class="row" >
		<h:inputHidden id="obimg_ct" value="#{cadObimgBean.obimg_ct}"/>
		<%-- outputLabel aaa --%>
		<h:outputLabel  styleClass="tip txl pl0"  id="lbl_obimg_nm_file" for="obimg_nm_file"  value="#{iimsg.Obimg_obimg_nm_file_tt}"/>
		<%-- prop imageUpload --%>
		<h:inputHidden id="obimg_nm_file" value="#{cadObimgBean.obimg_nm_file}"/>
		<ps:psInputFile id="inputImage"  value="#{cadObimgBean.imagem}" styleClass="mb-3" /> 
		<%-- Hidden --%>
		<h:inputHidden id="obimg_sq" value="#{cadObimgBean.obimg_sq}"/>
		<%-- <tr open> vvv --%>
		<%-- Hidden --%>
		<h:inputHidden id="obimg_tp_cfasttp" value="#{cadObimgBean.obimg_tp_cfasttp}"/><%-- <tr open> vvv --%>
		<%-- Hidden --%>
		<h:inputHidden id="obimg_sq_pres" value="#{cadObimgBean.obimg_sq_pres}"/>
	</div>
	<div class="row">
		<h:commandButton id="doUpload" styleClass="btn btn-outline-dark ml-1" action="#{cadObimgBean.doUpload}" value="Upload" />
		<h:commandButton id="aUpdate" styleClass="btn btn-outline-dark  ml-1" rendered="#{cadObimgBean.canUpdate}" value="Salvar" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obimgcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadObimgBean.doUpdate}"/>
		<h:commandButton id="aExcluir" styleClass="btn btn-outline-dark  ml-1" title="#{iimsg.botao_excluir}" rendered="#{cadObimgBean.canExcluir}" value="Excluir"  disabled="" onmousedown="msgwex()" action="#{cadObimgBean.doExcluir}"/>
		<h:commandButton id="aRefresh" styleClass="btn btn-outline-dark  ml-1"  value="Atualizar" title="#{iimsg.botao_refresh}" action="#{cadObimgBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obimgcad'+'&ufmv='+stx"/>
		<h:inputHidden id="tabsvf" value="#{cadObimgBean.tabsvf}" />
		<h:inputHidden id="xhelp_rc" value="#{cadObimgBean.xhelp_rc}" />
		<h:inputHidden id="tabsvf_in" value="#{cadObimgBean.tabsvf_in}" />
		<h:inputHidden id="tabsvf_tr" value="#{cadObimgBean.tabsvf_tr}" />
		<h:inputHidden id="xbutn_id" value="#{cadObimgBean.xbutn_id}" />
		<h:inputHidden id="xbutx_id" value="" />
		<h:inputHidden id="xuserx_id_login" value="#{cadObimgBean.xuserx_id_login}" />
		<h:inputHidden id="xmesg_rc" value="#{cadObimgBean.xmesg_rc}" />
		<h:inputHidden id="xmesg_st" value="#{cadObimgBean.xmesg_st}" />
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
	</div>
	</div>
   
</div>




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
<!-- Principal -->
<!-- Botoes -->
<!--<h:commandButton id="aBackToSearchMenu" immediate="true"  styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obimgcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObimgBean.doReturnMenu}"/>-->

<!-- Botoes -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:inputHidden id="source" value="cadForm:"/>
<h:inputHidden id="sourcedesc" value="cadForm:nome"/>
<h:commandLink id="xsel_vali" action="#{cadObimgBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_orgzn" action="#{cadOrgznBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
<script>
// loadFieldsFromList  ------------------------------------
function mostraDados( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
document.getElementById( "cadForm:obimg_id").value = obimg_id;
document.getElementById( "cadForm:obimg_sq").value = obimg_sq;
document.getElementById( "cadForm:obimg_ds").value = obimg_ds;
document.getElementById( "cadForm:lbl_obimg_nm_file").value = obimg_nm_file;
document.getElementById( "cadForm:obimg_nm_file").value = obimg_nm_file;

document.getElementById( "img_grande").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande").style.display = 'block';
}
<c:if test="${  cadObimgBean.obimg_nm_file !=null }">
mostraDados('<c:out value="${  cadObimgBean.obimg_id }" />','<c:out value="${  cadObimgBean.obimg_sq }" />','<c:out value="${  cadObimgBean.obimg_ds }" />','<c:out value="${  cadObimgBean.obimg_nm_file }" />');
</c:if>
</script>
   <script src="bootstrap/js/jquery.min.js"></script>
   <script src="bootstrap/js/popper.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
