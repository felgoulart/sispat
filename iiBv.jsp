<%@page import="appl.bean.*, appl.bean.FacesBean,appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
// Parm Names
//("cb"); // CadBean Name used
//("ch"); // Child Record Name - only for Multivalued Divs
//("fd"); // field  - ID do campo (prop no cadBean) no form Web
//("nb"); // Tab / Div Number
//("vl"); // value  = this.value        - Typed In Value - Valor do campo no form Web
//("vf"); // _vf  value of a Multivalued Record
%>
<%
  String cb = request.getParameter("cb"); // cadBean
  String ch = request.getParameter("ch"); // ID do campo (prop no cadBean) no form Web
  String field = request.getParameter("fd"); // ID do campo (prop no cadBean) no form Web
  String fflag = ""; // field_vc variable name

  String path="";
  String number = request.getParameter("nb"); // Tab / Div Number
  String value = request.getParameter("vl"); // Valor do campo no form Web
  String _vf = request.getParameter("vf"); // valor do _vf para multivalorado
  if (ch != null ) {
      if (ch.equals("x") ) {
          ch = null;
          _vf = null;
          path="cadForm";
          fflag = field+"_vc";
      } else {
          path="cadForm:tab"+ch;
          fflag = field+"_vc0";
      }
  }


  String _path = null; // path caminho do form sem :
  String vfield = null; // Valor da validacao aplicada ao campo (field)
  String ffield = null; // Valor da validacao do pior campo da Aba
  String _field = null; // nome do objeto do campo (radical)
  String vf_list = null; // valor do vfmax
  boolean add_list = false;
  String message = "";

  if (value != null) {

    String aa=(String) session.getAttribute("cadbeanx");
    CadastroBean bean = (CadastroBean) session.getAttribute(cb);
    if (number == null || number.equals("null")) {number = "0";}

    if (_vf == null || _vf.equals("null")   ) { // quando é univalorado (com o sem aba)
        vfield = bean.validateFieldOnChange(value, field);
    } else {                                    // quando é aba multivaloradas
        if(_vf.contains("a")) {
           _vf = _vf.substring(1, _vf.length());
           add_list = true;
        }
        vfield = bean.validateFieldOnChange(value, field, _vf, number);
        vf_list = bean.checkVFMaxFieldOnChange(number);
    }

    ffield = bean.checkMaxFieldOnChange(number); // tabs_vf

    ArrayList errorList = bean.errorList;
    if (!errorList.isEmpty()) {
        for (int i=0; i < errorList.size(); i++) {
            String key = (String) errorList.get(i);
            message = message + " " + bean.translateMesg(key);
            System.out.println(key);
            System.out.println(message);
        }
        errorList.clear();
    }

    StringBuffer tbsField = new StringBuffer();
    tbsField.append(ffield);
    Integer n = 0;
    n.parseInt(number);
    String _tbsField = tbsField.substring(n, n+1); // path

    if (path != null) {
        _path = path.replace(':', '_');
    }

    if (field != null) {
        int _field_n = field.indexOf("_");
        _field = field.substring(0, _field_n+1);
    }

    // System.out.println("ffield: "+ffield);
  }
%>
<%@include file="iiStubs.jsp"%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
<script type="text/javascript">
    vf_list = <%= vf_list %>;
    parent.AlternarSrcFields('<%= path %>:<%= fflag %>', '<%= vfield %>');
    parent.xxtabsvf = '<%= ffield %>';

    //parent.if_pel('cadForm:mesg_var', '<%= message %>');

    if (parent.document.getElementById('cadForm:tabsvf')) {
        parent.document.getElementById('cadForm:tabsvf').value = '<%= ffield %>';
    }
    _vf = <%= _vf %>;
    //alert('vf_list: '+vf_list); 
    if (vf_list != null) { // apenas se multivalorado
        vc_list = '<%= ffield %>';
        vc_list_n = vc_list.charAt(<%=number%>);
        // alert(vc_list_n);
        parent.document.getElementById('<%= path %>:<%= _field %>vc0').value = vc_list_n;
        parent.document.getElementById('<%= path %>:<%= _field %>vf0').value = '<%= vf_list %>';
        parent.AlternarFlag(parent.xxtabsvf);
        add_list = <%= add_list %>;
        // alert(add_list);
        if(add_list == 'false') {
          tabela = parent.el('tabela_'+'<%= _path %>');
          tr = tabela.getElementsByTagName("tr")[parent.valorx];
          tdn = tr.getElementsByTagName("td").length;
          tdvc = tr.getElementsByTagName("td")[tdn-2];
          img_vc = tdvc.childNodes[0];
          img_vc.src = AlternarSubFlag('<%= vfield %>');
        }
    } else {
       // alert(parent.xxtabsvf);
        if (parent.arAbas) {
            parent.AlternarFlag(parent.xxtabsvf);
        } else {
            parent.AlternarSuperFlag(parent.xxtabsvf);
        }
    }
    parent.cle_mesg();

</script>
</html>
