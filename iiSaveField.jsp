<%@page import="javax.servlet.http.HttpServletRequest, javax.faces.context.FacesContext, javax.faces.context.ExternalContext, appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
    String[] campo = request.getParameterValues("campo");
    String[] valor = request.getParameterValues("valor");
    session.setAttribute("cmpSession", true);
    for (int i=0; i<campo.length; i++) {
        if (campo[i] != null) {
            session.setAttribute(campo[i], valor[i]);
        }
    }
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
