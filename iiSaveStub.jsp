<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
  String cadbeanx = request.getParameter("cadbeanxparm");
  String aba = request.getParameter("abaparm");
  String mv = request.getParameter("mv");
  session.setAttribute(cadbeanx+"x", aba);

  String w = (String)session.getAttribute("cadbeanx");
  session.setAttribute(w+aba, mv);
  session.setAttribute(w+"tp", mv);// Sava Tipo da Ultima aba acionada
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
