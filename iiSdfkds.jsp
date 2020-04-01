<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
  String ch = request.getParameter("ch");              // Child Record
  String field = request.getParameter("field");
  String tabela = request.getParameter("tabela");
  String campo = request.getParameter("campo");
  String[] codigo = request.getParameterValues("codigo");
  String[] value = request.getParameterValues("value");

  String tabela1 = request.getParameter("tabela1");
  String campo1 = request.getParameter("campo1");
  String[] codigo1 = request.getParameterValues("codigo1");
  String[] value1 = request.getParameterValues("value1");

  tabela1 = "Codf";
  campo1 = "codf_ds";
  codigo1 = new String[2];
  codigo1[0] = "codf_tp";
  codigo1[1] = "codf_id";
  value1 = new String[2];
  value1[0] = "FFN";

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

          if (tabela.equalsIgnoreCase("FUNC")) {
              String aos = ((DataObject)list.get(0)).getString("func_cd_osp_cfaos");
              if (aos.equals("PC")) {
                  value1[0] = "FPC";
              } else if (aos.equals("PM")) {
                  value1[0] = "FPM";
              } else if (aos.equals("BM")) {
                  value1[0] = "FBM";
              }
              value1[1] = ((DataObject)list.get(0)).getString("func_tp_cfffn");
          }

          Boolean v_value = true;
          for (int i=0; i<value1.length; i++) {
              if (value1[i] ==  null) {
                  v_value = false;
              }
          }

          if (v_value == true) {
              DataObject dao1 = (DataObject) Class.forName("appl.data." + tabela1).newInstance();
              List list1 = dao1.find(con, codigo1, value1);
              if (list1.isEmpty()) {

              } else {
                  descricao = ((DataObject)list1.get(0)).getString(campo1) +" "+ descricao;
              }
          }
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
