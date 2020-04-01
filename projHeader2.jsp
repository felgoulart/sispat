<%@page import="appl.data.Userx, java.util.Date, java.text.SimpleDateFormat"%>
<%
        String menu = (String) session.getAttribute("menu");
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
<% String aa=(String) session.getAttribute("cadbeanx");session.setAttribute("cadBean", (CadastroBean) session.getAttribute(aa)); %>
<table width="100%" height="25" border="0" cellspacing="0" cellpadding="0" background="imagens/pixel_barra.gif">
  <tr>
    <td nowrap="nowrap" width="33%" valign="middle" class="txtSystem" align="left">&nbsp;<%=menu%>&nbsp;</td>
    <td nowrap="nowrap" width="33%" valign="middle" class="txtSystem" align="center">&nbsp;<h:outputText value="#{cadBean.trans_tt}"/>&nbsp;</td>
    <td nowrap="nowrap" width="33%" valign="middle" class="txtSystem" align="right">&nbsp;<%=tipotran%>&nbsp;<h:outputText value="#{iimsg.lbl_usuario}"/> <%=func_login%>&nbsp;|&nbsp;<%=date%>&nbsp;</td>
  </tr>
</table>

<style type="text/css">
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: hidden; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 1.5% auto; /* 15% from the top and centered */
    padding: 2px;
    border: 1px solid #888;
    overflow: auto;
}
</style>
<!-- The Modal -->
<div id="codfModal" class="modal">

  <!-- Modal content -->
  <div id="codfModalContent" class="modal-content">
    <iframe id="codfPopup" scrolling="auto" frameborder="0" align="middle"></iframe>
  </div>

</div>


