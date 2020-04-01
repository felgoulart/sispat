<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="javax.servlet.http.HttpServletRequest, javax.faces.context.FacesContext, javax.faces.context.ExternalContext"%>
<%@page import="appl.bean.*, appl.data.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%@page import="appl.data.Helpr"%>

<%
String tipoant = (String) session.getAttribute("tipo");
System.out.println("tipoant: "+tipoant);
if (tipoant != null && tipoant.indexOf("help") < 0) {
	session.setAttribute("tipoant", tipoant);
}


String tipo = request.getParameter("tipo");
//session.setAttribute("tipo", tipo);
//session.setAttribute("tipo", "helprvwpsq");
System.out.println("tipo------------------: "+tipo);



String tabela = "Helpr";
System.out.println("String tabela = ");
String[] codigo = null;
codigo = new String[1];
codigo[0] = "helpr_cd_help";

String campo = "helpr_cd_help";
String pkvl = ""; String dsvl = "";

String[] value = request.getParameterValues("value");
String[] valor = new String[1];
valor[0] = "AssetBldng";

//session.setAttribute("tipo", "helprvwpsq");
//session.setAttribute("tipo", "helpcad");
session.setAttribute("tipo", tipo);

String filter = request.getParameter("filter");
if (filter != null) {
    session.setAttribute("filter", filter);
    //System.out.println("filter: "+session.getAttribute("filter"));
}

String valorx = request.getParameter("valor");
if (valorx != null ) {
    session.setAttribute(tipo+"valor", valorx);
}
String valor1 = request.getParameter("valor1");
if (valor1 != null ) {
    session.setAttribute(tipo+"valor1", valor1);
}
//System.out.println("jshelp: "+jshelp+" jshelpvl: "+jshelpvl);

%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
<script  type="text/javascript"  >

</script>

</html>
