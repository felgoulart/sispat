<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%  String tabela = request.getParameter("tabela");
  String[] codigo = request.getParameterValues("codigo");
  String[] value = request.getParameterValues("value");
  if (tabela.equals("Codf")) {
    session.setAttribute("objtcampo", "cad_c"+value[0].toLowerCase());
//    if (value.length > 1) {
//      value[1] = StringUtils.rightPad(value[1].toUpperCase(), 5, ' ');
//    }
  } else {
    session.setAttribute("objtcampo", "cad_"+tabela.toLowerCase());
  }

  String ch = request.getParameter("ch");              // Child Record
  String field = request.getParameter("field");
  String fflag = request.getParameter("fflag");
  String path = request.getParameter("path");

  String campo = request.getParameter("campo");
  String jscampo = request.getParameter("jscampo");
  String jscampo1=jscampo.replaceFirst("_desc","");
  jscampo1=jscampo1.replaceFirst("00","0");

  String desc = "";
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
    vf = parent.valueVf('tab'+'<%= ch %>'+':'+'<%= ch %>'+'_vf0');
    upflag=0;
    if ('<%= field %>' != 'null' && '<%= fflag %>' != 'null' && '<%= path %>' != null && vf != '') {
//        parent.el('fiiBv').src = 'iiBv.jsp?field=<%= field %>&fflag=<%= fflag %>&path=<%= path %>&number=<%=number%>&vf=<%=_vf%>&value='+parent.document.getElementById('<%= jscampo1 %>').value+'';
//        parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= path %>'+'&nb=<%= number %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';
        parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vf='+vf+'&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';
    } else {
        parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= field %>'+'&ch=<%= ch %>'+'&nb=<%= number %>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';
    }

    //parent.el('fbv').src = 'bv.jsp?fd='+'<%= field %>'+'&fg=<%= field %>_vc0&pt=cadForm:tab'+'pecnt'+'&nb=2&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jscampo1 %>').value+'';


</script>
</html>
