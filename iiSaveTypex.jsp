<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String tbak = request.getParameter("tbak");
        session.setAttribute("tbak", tbak);
        System.out.println("tbak:zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz  " + tbak);

        String tipo = request.getParameter("tipo");
        session.setAttribute("tipo", tipo);
        if (tipo.substring(0,1).matches("C")){tipo = "codf";};
        //System.out.println("saveType tipo: " + tipo);
        String assist = request.getParameter("assist");
        System.out.println("saveType assist: " + assist);
        if (assist != null) {
            if (assist.equals("false")) {
                session.setAttribute(tipo, false);
            } else {
                session.setAttribute(tipo, true);
            }
        } else {
            session.setAttribute(tipo, false);
        }

        String filter = request.getParameter("filter");
        if (filter != null) {
            session.setAttribute("filter", filter);
            System.out.println("filter: "+session.getAttribute("filter"));
//            String aa=(String) session.getAttribute("cadbeanx");
//            session.setAttribute("cadBean", (CadastroBean) session.getAttribute(aa));
//            CadastroBean bean = (CadastroBean) session.getAttribute("cadBean");
//            bean.setFilter("1");
        }

        String valor = request.getParameter("valor");
        if (valor != null ) {session.setAttribute(tipo+"valor", valor);} 
        String valor1 = request.getParameter("valor1");
        if (valor1 != null ) {session.setAttribute(tipo+"valor1", valor1);}
        //System.out.println("valor:zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz  " + valor1);
        
        String novainclusao = request.getParameter("ninc");
        if (novainclusao != null) {
            session.setAttribute("novainclusao", true);
        }

%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
</html>
