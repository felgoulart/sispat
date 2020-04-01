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

<% if(request.getParameter("popup")!=null){ %>
	<input type="hidden" name="popup" value="#{param['popup']}"/>
<% } %>

<nav class="navbar navbar-light" style="background-color: #5170b3;" >
<table width="100%" height="25" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td width="72" height="40" valign="center"><a href="http://localhost:8095/sispat_bs/faces/ZMenuAssetcad0.jsp"><img src="imagens/logovliBranca.png" height="40" class="logovli"></a></td>
  <!--  <td  valign="middle" class="h3 h3branca" >&nbsp;<%=menu%>&nbsp;</td>-->
    <td nowrap="nowrap" valign="middle" class="h6" align="right">
	

<div class="btn-group dropleft" role="group">
  <button type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-user"></i> <%=func_login%><%=date%>
  </button>
      <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
		<h:commandLink styleClass="dropdown-item" id="aExeuserpw" onmousedown="fExecx('userpwcad', tran, this.id, 'no', '', 'xrec_userpw');" value="Trocar a Senha" action="#{cadUserpwBean.doObter}"/>
		<div class="dropdown-divider"></div>
		<h:commandLink styleClass="dropdown-item"  id="aLogout" rendered="#{!loginBean.adAuthenticated}"   onmousedown="msgwr()" value="Sair do Sistema" action="#{loginBean.doLogout}"/>
	  </div>
</div>		  

	</td>
  </tr>
</table>
</nav>

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
