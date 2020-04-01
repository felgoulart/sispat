<%@page import="appl.data.Userx, java.util.Date, java.text.SimpleDateFormat"%>
<SCRIPT type="text/javascript">
function stLogo(logo) {this.logo = logo;}
var arLogo = new Array();
function AlternarLogo(number) {
    // Desativa os Logos
    for (i=0;i<arLogo.length;i++) {
        ll = document.getElementById(arLogo[i].logo).style.display = 'none';
    }
    number = RetornaAOS();
    // Ativa o Logo
    if (number != null ) {
        //lw = document.getElementById(arLogo[number].logo).style.display = '';
        document.getElementById('lbl_usuario').style.display = '';
    }
}
 

function RetornaAOS() {
<%
String tipotran = (String) session.getAttribute("tipo");
if (tipotran == null) {
    tipotran = "";
} else {
    tipotran = tipotran + " |";
}
String date = "";
String func_aos = "";
String func_login = "";
Userx user = (Userx) session.getAttribute("loginInfo");
if (user != null) {
    //func_aos = (String) user.getUserx_fk_company();
    func_login = (String) user.getUserx_id_login();
%>
aos = ("<%= func_aos.trim() %>");
if (aos == "PC") { number = 1; }
if (aos == "PM") { number = 2; }
if (aos == "BM") { number = 3; }
<%
      }
%>
        return number;
    }
</SCRIPT>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp&nbsp</td>
    <td width="72" height="50" rowspan="2" bgcolor="" valign="center"><img src="imagens/logo_system_mrs.gif"></td>
    <td>&nbsp&nbsp</td>
    <td width="50" height="50" rowspan="2" bgcolor="" valign="center"><img src="imagens/sysfer3.JPG"></td>
    <td height="50" align="right" valign="top" width="100%">
      <table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="50" valign="middle" bgcolor="" nowrap="nowrap" class="txtTSystem">
	  </td>
          <td width="443" height="48" align="right" valign="bottom" bgcolor="" class="txtHeaderB">
            <h:outputText value="#{iimsg.sys_version}"/>&nbsp;
          </td>
        </tr>
      </table>
    </td>
  </tr>
        <table width="100%" height="23" border="1" cellpadding="0" cellspacing="0" style="border-style: hidden;">
        <tr>
          <td height="23" align="left" valign="top" background="imagens/imagesBlueTTa.JPG">
        </tr>
      </table>
    </td>
  </tr>
</table>
