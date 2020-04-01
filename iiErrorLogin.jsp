<%@page isErrorPage="true"%>
<% response.addHeader("PRAGMA", "NO-CACHE"); %>
<html>
<head>
  <%-- Mensagens de erro --%>
  <meta http-equiv="PRAGMA" content="no-cache"/>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>
  Erro de login
</title>
  <link rel="stylesheet" href="../projStandard.css" type="text/css">
</head>
<body>
<%@include file="/projHeader.jsp"%>
  <table class="tbp">
    <tr>
      <td height="23" valign="top">
        <table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="tti">
              <br/><br/><br>Você não está logado ou sua sessão foi finalizada devido ao espaço de tempo com o servidor.<br/>
                  Faça o Login novamente.<br/><br/><br/>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
<%@include file="projFooter.jsp"%>
</body>
</html>
