<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<% response.addHeader("PRAGMA", "NO-CACHE"); %>
<%@include file="iiLoginRequired.jsp"%>
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<f:view><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <%-- Mensagens de erro --%>
  <ps:messages layout="script"/>
  <meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandard.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<title>
  <h:outputText value="#{iimsg.index_title}"/>
</title>
</head>
<body onload="tran='projIndex2';AlternarSuperMenu('0');">
  <h:form id ="cadForm">
  <%@include file="projHeader.jsp"%>
  <%@include file="projMenu.jsp"%>
    <%-- Titulo --%>
    <table class="tbp">
      <tr>
        <td valign="top" align="center">
          <table align="center">
            <tr>
              <td width="100%" valign="top" align="center"><br>
                <h:outputText styleClass="tti" value="#{iimsg.msg_index}"/>
              </td>
            </tr>
            <tr>
              <td width="100%" valign="top"><br>
                <img src="imagens/iiTelaMain.JPG"><br>
              </td>
            </tr>
          </table><br>
          <iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSaveAssist" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
	    </td>
      </tr>
    </table>
  </h:form>
  <!-- This hidden form used to send a request to a popup window. -->
  <h:form id="hiddenform" target="">
    <h:inputHidden id="target" value=""/>
    <h:commandLink id="xrec_Yardopr" action="#{cadYardoprBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_Trainopr" action="#{cadTrainOprBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_Crewopr" action="#{cadCrewoprBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_Crewmnt" action="#{cadCrewmntBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_CrewDetails" action="#{cadCrewDetailsBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_TrainForm" action="#{cadTrainFormBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_WagLoadOpr" action="#{cadWagLoadOprBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_WagLoadMnt" action="#{cadWagLoadMntBean.doObternull}" immediate="true"/>
    <h:commandLink id="xrec_CrewDetails" action="#{cadCrewDetailsBean.doNovo}" immediate="true"/>
    <h:commandLink id="xrec_VhwagDetails" action="#{cadVhwagDetailsBean.doNovo}" immediate="true"/>
    <h:commandLink id="xrec_VhengDetails" action="#{cadVhengDetailsBean.doNovo}" immediate="true"/>
    <h:commandLink id="xrec_TrainCircList" action="#{cadTrainCircListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_TrainCompList" action="#{cadTrainCompListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_TrainOperList" action="#{cadTrainOperListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_TrainOperPctList" action="#{cadTrainOperPctListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhwagLocQty" action="#{cadVhwagLocQtyBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhwagLocIdv" action="#{cadVhwagLocIdvBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhwagDstList" action="#{cadVhwagDstListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhengLocQty" action="#{cadVhengLocQtyBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhengLocIdv" action="#{cadVhengLocIdvBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhoprhoList" action="#{cadVhoprhoListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_TrainPgmList" action="#{cadTrainPgmListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_YrdmpList" action="#{cadYrdmpListBean.doSelecionar}" immediate="true"/>

    <h:commandLink id="xrec_VhpcrLocIdv" action="#{cadVhpcrLocIdvBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VheqpLocIdv" action="#{cadVheqpLocIdvBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhfbsLocIdv" action="#{cadVhfbsLocIdvBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_VhwagDstList" action="#{cadVhwagDstListBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_CrewLocList" action="#{cadCrewLocListBean.doSelecionar}" immediate="true"/>

	</h:form>
  <%@include file="projFooter.jsp"%>
</body>
</html>
</f:view>
