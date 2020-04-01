<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
String ph = request.getParameter("ph"); // Additional Path if needed
String ch = request.getParameter("ch");
String fdpk = request.getParameter("fdpk");
String dao = request.getParameter("dao");
String[] pk = request.getParameterValues("pk"); // Must be a Vector for Dao
String ds = request.getParameter("ds");
String[] vl = request.getParameterValues("vl"); // Must be a Vector for Dao
session.setAttribute("objtcampo", "cad_c"+vl[0].toLowerCase());
if (vl.length > 1) {
    vl[1] = StringUtils.rightPad(vl[1].toUpperCase(), 5, ' ');
}
String pkvl = ""; String dsvl = "";
String jspk = ""; String jsds = "";

if ( ch.equals("") ) {
    ch = "x";
    jspk="cadForm:"+ph+fdpk;
    jsds="cadForm:"+ph+fdpk+"_desc";
} else {
    jspk="cadForm:tab"+ch+":"+fdpk;
    jsds="cadForm:tab"+ch+":"+fdpk+"_desc0";
}
int vflag = 0;
String desc = "";
for (int iv=0; iv < vl.length; iv++) {
    if (vl[iv].trim().equals("")) {
        vflag = 1;
        break;
    } else if (vl[iv].equals("null")) {
        vl[iv] = null;
    }
}
if (vflag == 0) {
    Connection con = DatabaseUtils.getConnection();
    try {
        if (vl != null) {
            DataObject daox = (DataObject) Class.forName("appl.data." + dao).newInstance();
            List list = daox.find(con, pk, vl);
            if (list.isEmpty()) {
                dsvl = "sys_notfound";
            } else {
                dsvl = ((DataObject)list.get(0)).getString(ds);
            }
        }
    } finally {
        DatabaseUtils.releaseConnection(con);
    }
}

  // Handle vf if child record
  String st = request.getParameter("st");  // Stub Number
  String _vf = request.getParameter("vf"); // Validation Flag
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
    if ('<%= dsvl %>' == "sys_notfound") {
        parent.if_pel('<%= jspk %>', '');
        parent.if_pel('<%= jsds %>', parent.rel('cadForm:label_notfound'));
    } else {
        parent.if_pel('<%= jsds %>', '<%= dsvl %>');
    }
    upflag=0;
    parent.el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+'<%= fdpk %>'+'&ch=<%= ch %>'+'&nb=<%= st %>&vf=<%=_vf%>&vl='+parent.document.getElementById('<%= jspk %>').value+'';
</script>
</html>
