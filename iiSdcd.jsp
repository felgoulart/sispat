<%@page import="javax.servlet.http.HttpServletRequest, javax.faces.context.FacesContext, javax.faces.context.ExternalContext"%>
<%@page import="appl.bean.*, appl.data.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%@page import="appl.data.Codf"%>
<%
  String ch = request.getParameter("ch");              // Child Record
  String field = request.getParameter("field");

  // String tabela = request.getParameter("tabela");
  String tabela = "Codf";

  String[] codigo = request.getParameterValues("codigo"); // Leave it like this even if not needed
  String[] value = request.getParameterValues("value");
  codigo = new String[3];
  codigo[0] = "codf_tp";
  codigo[1] = "codf_id";
  codigo[2] = "codf_lg";

  String[] valor = new String[3];
  valor[0] = value[0];
  valor[1] = value[1];
  valor[2] = "";

  session.setAttribute("objtcampo", "cad_c"+value[0].toLowerCase());
  //if (value.length > 1) {
  //    value[1] = StringUtils.rightPad(value[1].toUpperCase(), 5, ' ');
  //}
  //String campo = request.getParameter("campo");
  String campo = "codf_ds";

  String pkvl = ""; String jspk = "";
  String dsvl = ""; String jsds = "";
  String akvl = ""; String jsak = "";

  String desc = "";
  String jscampo=""; String jscampo1="";
  if ( ch.equals("") ) {
      ch = "x";
      jscampo="cadForm:"+field+"_desc";
      jscampo1="cadForm:"+field;
	  jspk="cadForm:"+field;
	  jsds="cadForm:"+field+"_desc";
  } else {
      jscampo="cadForm:tab"+ch+":"+field+"_desc0";
      jscampo1="cadForm:tab"+ch+":"+field;
      jspk="cadForm:tab"+ch+":"+field;
      jsds="cadForm:tab"+ch+":"+field+"_desc0";
  }

  int vflag = 0;
  String descricao = "";
  for (int iv=0; iv<value.length; iv++) {
      if (value[iv].trim().equals("")) {
          vflag = 1;
          break;
    } else if (value[iv].equals("null")) {
        value[iv] = null;
    }
  }

  if (vflag == 0) {

  Connection con = DatabaseUtils.getConnection();
  try {
    if (value != null) {
      DataObject dao = (DataObject) Class.forName("appl.data." + tabela).newInstance();
      String locale = CadLangBean.lang_cd_var;
      if (locale != null) {
          valor[2] = locale;
      } else {
      }

      String userType = ""; String tipoObra = "";
      if ( valor[0].indexOf("STPRC") >= 0) {
          tipoObra = (String) session.getAttribute("tipoObra");
    	  userType = (String) session.getAttribute("userType");
          if (tipoObra.contains("OP")) {
              if (userType.contains("1")) {valor[0] = "STPOP";}
              if (userType.contains("2")) {valor[0] = "STSOP";}
              if (userType.contains("3")) {valor[0] = "STAOP";}
          }
          if (tipoObra.contains("OT")) {
              if (userType.contains("1")) {valor[0] = "STPOT";}
              if (userType.contains("2")) {valor[0] = "STSOT";}
              if (userType.contains("3")) {valor[0] = "STAOT";}
          }
         //System.out.println(">> 2 userType: "+userType+" valor: "+valor[0]);  
      }            
 
      List list = dao.find(con, codigo, valor);
      if (list.isEmpty()) {
	      dsvl = "sys_notfound";
      } else {
	    pkvl = ((DataObject)list.get(0)).getString("codf_id");
        dsvl = ((DataObject)list.get(0)).getString(campo);
      }
    }
  } finally {
    DatabaseUtils.releaseConnection(con);
  }

  }
  // Busca Valid
  String number = request.getParameter("number");
  String _vf = request.getParameter("vf");
  if (_vf == null ) { _vf = "x";}
  if ( ch.equals("") ) {
      ch = "x";
  }
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
<script  type="text/javascript"  >
    parent.if_pel('<%= jspk %>', '<%= pkvl %>');
    if ('<%= dsvl %>' == "sys_notfound") {
        parent.if_pel('<%= jsds %>', parent.rel('cadForm:label_notfound'));
    } else {
        parent.if_pel('<%= jsds %>', '<%= dsvl %>');
    }
    upflag=0;
    parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';
</script>
</html>
