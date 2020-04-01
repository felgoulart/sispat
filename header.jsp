<%@ page import="java.util.*" %>
<html>
<head>
<title><%= application.getServerInfo() %></title>
</head>
<body>
<h1>HTTP Request Headers Received</h1>
<table border="1" cellpadding="3" cellspacing="3">
<%
Enumeration eNames = request.getHeaderNames();
while (eNames.hasMoreElements()) {
String name = (String) eNames.nextElement();
String value = normalize(request.getHeader(name));
%>
<tr><td><%= name %></td><td><%= value %></td></tr>
<%
}
%>
</table>
<h3>Extra debug</h3>
<p>User remote: <%=request.getRemoteUser()%></p>
<p>User principal: <%=request.getUserPrincipal()%></p>
</body>
</html>
<%!
private String normalize(String value)
{
StringBuffer sb = new StringBuffer();
for (int i = 0; i < value.length(); i++) {
char c = value.charAt(i);
sb.append(c);
if (c == ';')
sb.append("<br>");
}
return sb.toString();
}
%>