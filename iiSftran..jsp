<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
  String ch = request.getParameter("ch");              // Child Record
  String pk = request.getParameter("pk");
  String ds = request.getParameter("ds");
  String ak = request.getParameter("ak");

  String dao = request.getParameter("dao");
  String[] vl = request.getParameterValues("vl");

  session.setAttribute("objtcampo", "cad_c"+value[0].toLowerCase());
  if (vl.length > 1) {
      vl[1] = StringUtils.rightPad(vl[1].toUpperCase(), 5, ' ');
  }

  String pkvl = "";
  String dsvl = "";
  String akvl = "";

  String jscampo=""; String jscampo1=""; String jscampo2="";
  if ( ch.equals("") ) {
      ch = "x";
      jspk="cadForm:"+pk;
      jsds="cadForm:"+pk+"_desc";
      jsak="cadForm:"+ak;
  } else {
      jsds="cadForm:tab"+ch+":"+pk+"_desc0";
      jspk="cadForm:tab"+ch+":"+pk;
      jsak="cadForm:tab"+ch+":"+ak;
  }

  int vflag = 0;
  String desc = "";
  for (int iv=0; iv<value.length; iv++) {
      if (vl[iv].trim().equals("")) {
          desc = "Não Encontrado";
          vflag = 1;
          break;
      }
  }

  if (vflag == 0) {

      Connection con = DatabaseUtils.getConnection();
      try {
          if (value != null) {
              DataObject dao = (DataObject) Class.forName("appl.data." + tabela).newInstance();
              List list = dao.find(con, ak, vl);
              if (list.isEmpty()) {
                  desc = "Não Encontrado";
              } else {
                  pkvl = ((DataObject)list.get(0)).getString(pk);
                  dsvl = ((DataObject)list.get(0)).getString(ds);
                  akvl = ((DataObject)list.get(0)).getString(ak);

                  prop1 = ((DataObject)list.get(0)).getString("prop1");
                  prop2 = ((DataObject)list.get(0)).getString("prop2");
                  prop3 = ((DataObject)list.get(0)).getString("prop3");
              }
          }
      } finally {
          DatabaseUtils.releaseConnection(con);
      }
  }

  // Prepare Busca Valid
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
    parent.document.getElementById('<%= jspk %>').value = '<%= pkvl %>';
    parent.document.getElementById('<%= jsds %>').value = '<%= dsvl %>';
    parent.document.getElementById('<%= jsak %>').value = '<%= akvl %>';
    var zz = '<%= desc %>';
    if (zz == "Não Encontrado") {parent.document.getElementById('<%= jscampo1 %>').value = '<%= valor %>';}
    upflag=0;

    parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jsak %>').value+'';

</script>
</html>
