<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String tipo = request.getParameter("tipo");
        session.setAttribute("tipo", tipo);
        String ufmv = request.getParameter("ufmv");
        if (ufmv != null   ) {session.setAttribute("ufmv", ufmv);}
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
