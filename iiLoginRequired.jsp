<%
   if (session.getAttribute("loginInfo") == null) {
       throw new wins.libs.LoginException();
   }
%>
