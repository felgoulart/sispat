<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.*, appl.bean.FacesBean, appl.libs.*, wins.libs.*, wins.libs.data.DataObject, java.sql.*, java.util.*"%>
<%@page import="appl.bean.CadastroBean"%>
<%
    String tipo = request.getParameter("tipo")+"valor";
    String src = "";
	String pk = "asset_id";
    String ds = "asset_cd_geourl_exp";
    String vl= (String) session.getAttribute(tipo);
    Connection con = DatabaseUtils.getConnection();

    String invty_cd11_rs = ""; // Hanlde invty dor Bps without it
    int ix = vl.lastIndexOf("-"); 
    if (ix < 0) { // if bp does mot have invty_cd catch the highest
	   String asset_tp_cfasttp = "ED";
       if (tipo.indexOf("Vhwag") >= 0) {asset_tp_cfasttp = "VG";}
       else if (tipo.indexOf("Vheng") >= 0) {asset_tp_cfasttp = "LC";}

       else if (tipo.indexOf("Bldng") >= 0) {asset_tp_cfasttp = "ED";}
       else if (tipo.indexOf("Yrdld") >= 0) {asset_tp_cfasttp = "TP";}
       else if (tipo.indexOf("Lbdld") >= 0) {asset_tp_cfasttp = "TL";}
       else if (tipo.indexOf("Mailn") >= 0) {asset_tp_cfasttp = "LP";}
       else if (tipo.indexOf("Extln") >= 0) {asset_tp_cfasttp = "LR";}
       else if (tipo.indexOf("Sidng") >= 0) {asset_tp_cfasttp = "DC";}
       else if (tipo.indexOf("Yrdsd") >= 0) {asset_tp_cfasttp = "DP";}

       else if (tipo.indexOf("Lvlcr") >= 0) {asset_tp_cfasttp = "PN";}
       else if (tipo.indexOf("Ovrps") >= 0) {asset_tp_cfasttp = "PS";}
       else if (tipo.indexOf("Undps") >= 0) {asset_tp_cfasttp = "PI";}
       else if (tipo.indexOf("Tunnl") >= 0) {asset_tp_cfasttp = "TU";}
       else if (tipo.indexOf("Brdge") >= 0) {asset_tp_cfasttp = "PT";}
       else if (tipo.indexOf("Viadt") >= 0) {asset_tp_cfasttp = "VD";}
       else if (tipo.indexOf("Culvt") >= 0) {asset_tp_cfasttp = "BU";}

       PreparedStatement ps_max11 = con.prepareStatement("select MAX(invty_cd) AS invty_cd  from wbrl_invty where invty_tp_"+asset_tp_cfasttp+" = 'X' and invty_tp='VA'");
       ResultSet rs_max11 = ps_max11.executeQuery();
       if (rs_max11.next()) {
           invty_cd11_rs = rs_max11.getString("invty_cd");
       }
       ps_max11.close(); rs_max11.close();
       vl = vl + "-" + invty_cd11_rs ;
    }

    System.out.println("tipo: "+tipo);
    //String vl= (String) session.getAttribute("assetgeocadvalor");
    //System.out.println("valor: "+vl);
    String dsvl = "";
    try {
        if (vl != null) {
            DataObject daox = (DataObject) Class.forName("appl.data.Asset").newInstance();
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
 
    //System.out.println("dsvl: "+dsvl);
    //src = dsvl.substring(dsvl.indexOf("src="+dq+"http")+5,dsvl.indexOf("output=embed")+12);
    if (dsvl.indexOf("sys_notfound") >= 0) {
    	src = "";
   	} else { 
   	    src=dsvl;
   	} 
    //System.out.println("src: "+src);     
    //src = "https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=Rio+de+Janeiro,+Rep%C3%BAblica+Federativa+do+Brasil+seplag&amp;aq=&amp;sll=-22.8689,-43.208542&amp;sspn=0.174934,0.263329&amp;ie=UTF8&amp;hq=seplag&amp;hnear=Rio+de+Janeiro,+Rep%C3%BAblica+Federativa+do+Brasil&amp;ll=-22.894441,-43.325661&amp;spn=0.037884,0.330877&amp;t=m&amp;output=embed";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google Maps</title>
</head>
<body>
	<div>
		<iframe width="2000" height="2000" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<%=src%>"></iframe>
	</div>
</body>
</html>    