<%@page import="appl.bean.*, wins.libs.*, appl.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%
        String tipoant = (String) session.getAttribute("tipo");
        tipoant = tipoant.toLowerCase();
        //System.out.println("SaveType / tipoant: "+tipoant);
        //if (tipoant != null && tipoant.indexOf("help") < 0) {
        if (tipoant != null &&  (tipoant.contains("help") || tipoant.contains("codf")) ) {} else {
        	session.setAttribute("tipoant", tipoant);
        }

    //    session.setAttribute("tipoantsuper", null);
        String tranAnt = tipoant;
        tranAnt = tranAnt.replace("cad", "");
    	tranAnt = tranAnt.replace("psq", "");
        if (tranAnt != null && tranAnt.equals("assetsuper") ) {
        	session.setAttribute("tipoantsuper", tipoant);
        }
        if (tranAnt != null && tranAnt.indexOf("ativofixo") >= 0 ) {
        	session.setAttribute("tipoantsuper", tipoant);
        }
        
        String tipo = request.getParameter("tipo");
        session.setAttribute("tipo", tipo);
        if (tipo.substring(0,1).matches("C")){tipo = "codf";}; 

        String assist = request.getParameter("assist");
        if (assist != null) {
            if (assist.equals("false")) {
                session.setAttribute(tipo, false);
            } else {
                session.setAttribute(tipo, true);
            }
        } else {
            session.setAttribute(tipo, true);
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
        String tipovalor = tipo+"valor";  
        //System.out.println("SaveType / tipovalor: "+tipovalor);
        //System.out.println("SaveType-1 / valor: "+valor);
        if (valor != null ) {
        	session.setAttribute(tipovalor, valor);  
        }
        String valor1 = request.getParameter("valor1");
        if (valor1 != null ) {
        	session.setAttribute(tipo+"valor1", valor1);
       	}
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
