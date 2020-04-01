<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
  String ch = request.getParameter("ch");              // Child Record
  String field = request.getParameter("field");
  String tabela = request.getParameter("tabela");
  String campo = request.getParameter("campo");
  String[] codigo = request.getParameterValues("codigo");
  String[] value = request.getParameterValues("value");

  session.setAttribute("objtcampo", "cad_c"+value[0].toLowerCase());
  if (value.length > 1) {
  //    if (value[2].length() > 0) {
  //        value[2] = StringUtils.rightPad(value[2].toUpperCase(), 5, ' ');
  //    } else {
          value[1] = StringUtils.rightPad(value[1].toUpperCase(), 5, ' ');
  //    }
  }

  String desc = "";
  String jscampo=""; String jscampo1="";
  if ( ch.equals("") ) {
      ch = "x";
      jscampo="cadForm:"+field+"_desc";
      jscampo1="cadForm:"+field;
  } else {
      jscampo="cadForm:tab"+ch+":"+field+"_desc0";
      jscampo1="cadForm:tab"+ch+":"+field;
  }

  int vflag = 0;
  String descricao = "";
  for (int iv=0; iv<value.length; iv++) {
      if (value[iv].trim().equals("")) {
          descricao = "Não Encontrado";
          vflag = 1;
          break;
      }
  }

  if (vflag == 0) {

  Connection con = DatabaseUtils.getConnection();
  try {
    if (value != null) {
      DataObject dao = (DataObject) Class.forName("appl.data." + tabela).newInstance();
      List list = dao.find(con, codigo, value);
      if (list.isEmpty()) {
//        if (!value[value.length - 1].trim().equals("")) {
          descricao = "Não Encontrado";
//        }
      } else {
        descricao = ((DataObject)list.get(0)).getString(campo);
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
    parent.document.getElementById('<%= jscampo %>').innerHTML = '<%= descricao %>';
    var zz = '<%= descricao %>';
    if (zz == "Não Encontrado") {parent.document.getElementById('<%= jscampo1 %>').value = '<%= desc %>';}
    upflag=0;

    parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';

</script>
</html>
