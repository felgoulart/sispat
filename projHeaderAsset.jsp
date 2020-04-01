<%@page import="appl.data.Userx, java.util.Date, java.text.SimpleDateFormat"%>
<%
        String func_aos = "";
        String func_login = "";

        Userx user = (Userx) session.getAttribute("loginInfo");
        if (user != null) {
            //func_aos = (String) user.getUserx_fk_company();
            func_login = (String) user.getUserx_id_login();
        }

        String tipotran = (String) session.getAttribute("tipo");
        if (tipotran == null) {
            tipotran = "";
        } else {
            tipotran = tipotran + " |";
        }
        String date = "";//(String) new SimpleDateFormat("dd/MM/yy HH:mm:ss").format(new Date());
%>

<table width="100%" height="25" border="0" cellspacing="0" cellpadding="0" background="imagens/pixel_barra.gif">
  <tr>
    <td nowrap="nowrap" valign="middle" class="txtSystem">&nbsp; <h:outputText value="#{iimsg.sys_header_asset}"/> &nbsp;</td>
    <td nowrap="nowrap" valign="middle" class="txtSystem" align="right">&nbsp;<%=tipotran%>&nbsp;<h:outputText value="#{iimsg.lbl_usuario}"/> <%=func_login%>&nbsp;|&nbsp;<%=date%>&nbsp;</td>
  </tr>
</table>
