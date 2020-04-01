<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String xtran = request.getParameter("tran");
        session.setAttribute(xtran, false);

        String tipo = request.getParameter("tran");
        session.setAttribute("tipo", tipo);
        if (tipo.substring(0,1).matches("C")){tipo = "codf";};

        Object number = request.getParameter("menu");
        if (!number.equals("999")) {
           session.setAttribute("menu", number);
        }

%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
