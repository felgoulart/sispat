<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%@include file="iiLoginRequired.jsp"%>
<f:view>
<html>
<head>
  <meta http-equiv="PRAGMA" content="no-cache"/>
<title>Upload de Imagem</title>
<script src="../iiFunctions.js" type="text/javascript"></script>
  <ps:messages layout="script"/>
</head>
<body leftmargin=0 topmargin=0>
  <h:form id="imgForm" enctype="multipart/form-data">
    <h:inputHidden id="idImagem" value="#{imgUploadBean.idImagem}"/>
    <center>      Imagem:
      <ps:psInputFile id="inputImage" value="#{imgUploadBean.imagem}" styleClass="teste"/>
      <br>
      <h:commandButton id="doUpload" action="#{imgUploadBean.doUpload}" value="Upload"/>
      <br>
      <ps:psGraphicImage id="aImagem" value="#{imgUploadBean.srcImage}" border="1" style="cursor: hand" onclick="fullImage();"/>
      <input type="button" value="Selecionar" onclick="selecionaImagem();" />
    </center>
  </h:form>
</body>
</html>
</f:view>
