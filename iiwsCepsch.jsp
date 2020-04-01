<%@page import="appl.bean.*, appl.libs.*, wins.libs.*, appl.data.*, java.sql.*, java.util.*"%>
<%
/*

0  "objt_cd_ed_cep"
1  "objt_cd_ed_cep0_desc"
2  "objt_tp_ed"
3  "objt_ds_tp_ed"
4  "objt_nu_ed_llog"
5  "objt_ds_ed_llog"
6  "objt_nu_ed_lbai"
7  "objt_ds_ed_lbai"
8  "objt_nu_ed_lloc"
9  "objt_ds_ed_lloc"
10 "objt_cd_ed_cfguf"
11 "objt_cd_ed_cfguf0_desc"
12 "objt_cd_pais_cfgpa"
13 "objt_cd_pais_cfgpa0_desc"

*/

  String value = request.getParameter("value");
  String number = request.getParameter("number");
  String type = request.getParameter("type");

  boolean enabled; // habilita os inputText para preenchimento manual
  String flag = ""; // habilita o botão de seleção de Localidade para preenchimento via assistente
  String vflag = ""; // valor da flag (0, 5, 9)
  String style = ""; // define o estilo para campo READ-ONLY
  String pais_cfgpa = ""; // define codf BRA
  String pais_cfgpa_desc = ""; // define descritivo codf BRA
  String message = ""; // mensagem se o CEP nao for encontrado
  System.out.println(value);
  String path = request.getParameter("path");
  String mv = "";
  String cty = "";

  int found = 0;
  if (path.contains("tab")) {
      mv = "0";
  }
  String[] campo = request.getParameterValues("campo");
  Cep cep = new Cep();
  List list = null;
  List listloc = null;
  Connection con = DatabaseUtils.getConnection();
  try {
      if (type.equals("city")) {
          listloc = cep.findFilterSortedCity(con, "loc." + Cep.LOC_NU + " = '" + value + "'", null, 1);
          if (listloc.size() > 0) {
              System.out.println(listloc.get(0));
              found = 1;
              cep = (Cep)listloc.get(0);
              enabled = true;
              flag = "none";
              vflag = "0";
              style = "r";
              pais_cfgpa = "BRA";
              pais_cfgpa_desc = "Brasil";
              //cep.setLoc_no(cep.getLoc_nu());

              cep.setLog_nu("");
              cep.setLog_tipo_log("");
              cep.setLog_tipo_log_desc("");
              cep.setLog_no("");
              cep.setBai_nu("");
              cep.setBai_no("");
              //cep.setUfe_sg("");
          }
      }
      if (type.equals("location")) {
          listloc = cep.findFilterSorted(con, "log." + Cep.LOG_NU + " = '" + value + "'", null, 1);
          if (listloc.size() > 0) {
              System.out.println(listloc.get(0));
              found = 1;
              cep = (Cep)listloc.get(0);
              enabled = true;
              flag = "none";
              vflag = "0";
              style = "r";
              pais_cfgpa = "BRA";
              pais_cfgpa_desc = "Brasil";
              //cep.setLoc_no(cep.getLoc_nu());
              //cep.setLog_nu("");
              //cep.setLog_tipo_log("");
              //cep.setLog_tipo_log_desc("");
              //cep.setLog_no("");
              //cep.setBai_nu("");
              //cep.setBai_no("");
              //cep.setUfe_sg("");
          }
      }
      if (type.equals("code")) {
          list = cep.findFilterSorted(con, "log." + Cep.CEP + " = '" + value + "'", null, 1);
          if (list.size() > 0) {
              System.out.println(list.get(0));
              found = 1;
              cep = (Cep)list.get(0);
              enabled = true;
              flag = "none";
              vflag = "0";
              style = "r";
              pais_cfgpa = "BRA";
              pais_cfgpa_desc = "Brasil";
              //cep.setLog_nu("");
              //cep.setLog_tipo_log("");
              //cep.setLog_tipo_log_desc("");
              //cep.setLog_no("");
              //cep.setBai_nu("");
              //cep.setBai_no("");
          } else {
              listloc = cep.findFilterSortedCity(con, "loc." + Cep.CEP + " = '" + value + "'", null, 1);
              if (listloc.size() > 0) {
                  System.out.println(listloc.get(0));
                  found = 1;
                  cep = (Cep)listloc.get(0);
                  enabled = true;
                  flag = "none";
                  vflag = "0";
                  style = "r";
                  pais_cfgpa = "BRA";
                  pais_cfgpa_desc = "Brasil";
                  cep.setLog_nu("");
                  cep.setLog_tipo_log("");
                  cep.setLog_tipo_log_desc("");
                  cep.setLog_no("");
                  cep.setBai_nu("");
                  cep.setBai_no("");
              }
          }
      }

      if (found == 0 ) {
          cep.setCep("");
          cep.setLog_nu("");
          cep.setLog_tipo_log("");
          cep.setLog_tipo_log_desc("");
          cep.setLog_no("");
          cep.setBai_nu("");
          cep.setBai_no("");
          cep.setLoc_nu("");
          cep.setLoc_no("");
          cep.setUfe_sg("");
          cep.setUf_nm("");
          enabled = false;
          flag = "";
          vflag = "9";
          style = "";
          pais_cfgpa = "";
          pais_cfgpa_desc = "";
          message = "Não Encontrado";
          System.out.println("Nenhum Registro Encontrado");
      }

  } finally {
    DatabaseUtils.releaseConnection(con);
  }
%>
<html>
<head>
<meta http-equiv="PRAGMA" content="no-cache"/>
</head>
<script type="text/javascript">
    parent.document.getElementById('<%= path + campo[0] %>').value = '<%= cep.getCep().trim() %>';
    parent.document.getElementById('<%= path + campo[0] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[1] %>').innerHTML = '<%= message.trim() %>';

    parent.document.getElementById('<%= path + campo[2] %>').value = '<%= cep.getLog_tipo_log().trim() %>';
    parent.document.getElementById('<%= path + campo[3] %>').value = '<%= cep.getLog_tipo_log_desc().trim() %>';
    parent.document.getElementById('<%= path + campo[3] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[4] %>').value = '<%= cep.getLog_nu().trim() %>';
    parent.document.getElementById('<%= path + campo[5] %>').value = '<%= cep.getLog_no().trim() %>';
    parent.document.getElementById('<%= path + campo[5] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[6] %>').value = '<%= cep.getBai_nu().trim() %>';
    parent.document.getElementById('<%= path + campo[7] %>').value = '<%= cep.getBai_no().trim() %>';
    parent.document.getElementById('<%= path + campo[7] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[8] %>').value = '<%= cep.getLoc_nu().trim() %>';
    parent.document.getElementById('<%= path + campo[9] %>').value = '<%= cep.getLoc_no().trim() %>';
    parent.document.getElementById('<%= path + campo[9] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');

    parent.document.getElementById('<%= path + campo[10] %>').value = '<%= cep.getUfe_sg().trim() %>';
    parent.document.getElementById('<%= path + campo[10] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[11] %>').innerHTML = '<%= cep.getUf_nm().trim() %>';
    parent.document.getElementById('<%= path + campo[12] %>').value = '<%= pais_cfgpa.trim() %>';
    parent.document.getElementById('<%= path + campo[12] %>_vc<%= mv %>').src = parent.SrcField('<%= vflag %>');
    parent.document.getElementById('<%= path + campo[13] %>').innerHTML = '<%= pais_cfgpa_desc.trim() %>';
</script>
</html>
