<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String upflag = request.getParameter("upflag");
        if (upflag != null   ) {session.setAttribute("upflag", upflag);}
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
