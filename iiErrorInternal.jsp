<%@page isErrorPage="true"%>
<% response.addHeader("PRAGMA", "NO-CACHE"); %>
<html>
<head>
  <%-- Mensagens de erro --%>
  <meta http-equiv="PRAGMA" content="no-cache"/>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>
</title>
  <link rel="stylesheet" href="../projStandard.css" type="text/css">
</head>
<body>
<%@include file="projHeader1.jsp"%>
  <table class="tbp">
    <tr>
      <td height="23" valign="top">
        <table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="tti">
              <br/><br/><br><br><%= exception.getMessage() %><br/><br/><br/><br/>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
<%@include file="projFooter.jsp"%>
</body>
</html>
