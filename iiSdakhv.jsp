<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
  String ch = request.getParameter("ch");              // Child Record
  String field = request.getParameter("field");
  String field2 = request.getParameter("field2");
  String tabela = request.getParameter("tabela");
  String[] campo = request.getParameterValues("campo");
  String[] codigo = request.getParameterValues("codigo");
  String[] value = request.getParameterValues("value");

  session.setAttribute("objtcampo", "cad_c"+value[0].toLowerCase());
  if (value.length > 1) {
      value[1] = StringUtils.rightPad(value[1].toUpperCase(), 5, ' ');
  }

  String valor = "";
  String valor_hidden = "";
  String jscampo=""; String jscampo1=""; String jscampo2="";
  if ( ch.equals("") ) {
      ch = "x";
      jscampo="cadForm:"+field+"_desc";
      jscampo1="cadForm:"+field;
      jscampo2="cadForm:"+field2;
  } else {
      jscampo="cadForm:tab"+ch+":"+field+"_desc0";
      jscampo1="cadForm:tab"+ch+":"+field;
      jscampo2="cadForm:tab"+ch+":"+field2;
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
          descricao = ((DataObject)list.get(0)).getString(campo[0]);
          valor = ((DataObject)list.get(0)).getString(campo[1]);
          valor_hidden = ((DataObject)list.get(0)).getString(codigo[0]);
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
    parent.document.getElementById('<%= jscampo1 %>').value = '<%= valor_hidden %>';
    parent.document.getElementById('<%= jscampo2 %>').value = '<%= valor %>';
    parent.document.getElementById('<%= jscampo %>').value = '<%= descricao %>';
    var zz = '<%= descricao %>';
    if (zz == "Não Encontrado") {parent.document.getElementById('<%= jscampo1 %>').value = '<%= valor %>';}
    upflag=0;

    parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';

</script>
</html>
