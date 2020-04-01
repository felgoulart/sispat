<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String mvsq = request.getParameter("mvsq");
        if (mvsq != null ) {session.setAttribute("mvsq", mvsq);}
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
