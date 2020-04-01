<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAreaotBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Areaotpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("areaotpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_solic_in_ot_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solic_in_op_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solic_tp_area_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solic_tp_sol_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_solic_tp_solicitante_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAreaotBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='AreaotSfm';;tran='areaotpsq'; vl='';cadbeanx='cadAreaotBean';<%session.setAttribute("tipo","areaotpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
<table id="principal" class="tbp">
<tr>
<td valign="top" align="center">
<!-- Conteudo -->
<table id="conteudo" class="tbc" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<!-- Barra -->
<table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="tti" width="100%">
<!-- Titulo -->
<h:outputText value="#{cadAreaotBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadAreaotBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAreaotBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAreaotBean.hasPrevPage}" action="#{cadAreaotBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAreaotBean.hasNextPage}" action="#{cadAreaotBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadAreaotBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadAreaotBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadAreaotBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadAreaotBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('areaotcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAreaotBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Solin');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpSolinSfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','SolinSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadAreaotBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAreaotBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeAsst/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeAsst/md_fio_dir1.gif" nowrap>&nbsp;</td>
</tr>
</table>
<!-- Botoes -->
</td>
</tr>
</table>
<!-- Barra -->
</td>
</tr>
<tr>
<td>
<!-- Moldura -->
<table id="moldura" class="tbm" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td background="../imagens/thmeAsst/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeAsst/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeAsst/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeAsst/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeAsst/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadAreaotBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadAreaotBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<div id="div_dtDados_hor_" style=" border-color: slategray; border-style: solid; border-width: 1px;">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- fkeyColumnGen -->
<h:column id="solic_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_solic_cd_tt">
<h:outputText id="hd_solic_cd_tt" title="#{iimsg.Areaot_solic_cd_tt}" value="#{iimsg.Areaot_solic_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<f:facet name="header">
<h:panelGroup id="pg_solic_nm_razaosocial_tt">
<h:outputText id="hd_solic_nm_razaosocial_tt_xide" title="#{iimsg.Areaot_solic_nm_razaosocial_tt}" value="#{iimsg.Areaot_solic_nm_razaosocial_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_ot_tt">
<f:facet name="header">
<h:panelGroup id="pg_solic_in_ot_tt">
<h:outputText id="hd_solic_in_ot_tt" title="#{iimsg.Areaot_solic_in_ot_tt}" value="#{iimsg.Areaot_solic_in_ot_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_op_tt">
<f:facet name="header">
<h:panelGroup id="pg_solic_in_op_tt">
<h:outputText id="hd_solic_in_op_tt" title="#{iimsg.Areaot_solic_in_op_tt}" value="#{iimsg.Areaot_solic_in_op_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_area_tt">
<f:facet name="header">
<h:panelGroup id="pg_solic_tp_area_tt">
<h:outputText id="hd_solic_tp_area_tt" title="#{iimsg.Areaot_solic_tp_area_tt}" value="#{iimsg.Areaot_solic_tp_area_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_sol_tt">
<f:facet name="header">
<h:panelGroup id="pg_solic_tp_sol_tt">
<h:outputText id="hd_solic_tp_sol_tt" title="#{iimsg.Areaot_solic_tp_sol_tt}" value="#{iimsg.Areaot_solic_tp_sol_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_solicitante_tt">
<f:facet name="header">
<h:panelGroup id="pg_solic_tp_solicitante_tt">
<h:outputText id="hd_solic_tp_solicitante_tt" title="#{iimsg.Areaot_solic_tp_solicitante_tt}" value="#{iimsg.Areaot_solic_tp_solicitante_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Areaot_tabs_vc_tt}" value="#{iimsg.Areaot_tabs_vc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_tt">
<h:outputText id="hd_recd_wd_tt_xide" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadAreaotBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="sel__a_scrollbar_right">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_right_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
<!-- Pesquisa Filter Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-filter"
id="dtDados_ft">
<!-- fkeyColumnGen -->
<h:column id="solic_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_solic_cd">
<h:inputText id="solic_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<f:facet name="footer">
<h:panelGroup id="fpg_solic_nm_razaosocial">
<h:inputText id="solic_nm_razaosocial_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAreaotBean.fil_solic_nm_razaosocial}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_ot_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solic_in_ot">
<h:inputText id="fil_solic_in_ot_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_in_ot}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_op_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solic_in_op">
<h:inputText id="fil_solic_in_op_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_in_op}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_area_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solic_tp_area">
<h:inputText id="fil_solic_tp_area_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPARE', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_tp_area}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_sol_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solic_tp_sol">
<h:inputText id="fil_solic_tp_sol_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPSOL', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_tp_sol}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_solicitante_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_solic_tp_solicitante">
<h:inputText id="fil_solic_tp_solicitante_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TSPRJ', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAreaotBean.fil_solic_tp_solicitante}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAreaotBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ft">
<h:outputText id="recd_wd_ft" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadAreaotBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="sel__a_scrollbar_right">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar_right__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadAreaotBean.pesqData}"
var="Solic"
binding="#{cadAreaotBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAreaotBean.pageLength}"
first="#{cadAreaotBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="solic_cd_fk">
<h:panelGroup id="pg_solic_cd_sg">
<!--   // 333-->
<h:outputLabel id="sel_solic_cd" onclick="slvl(this.id,this.value);" value="#{Solic.solic_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="solic_nm_razaosocial">
<h:panelGroup id="pg_solic_nm_razaosocial_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_solic_nm_razaosocial"  onclick="slvl(this.id,this.value);" value="#{Solic.solic_nm_razaosocial}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_ot">
<h:panelGroup id="pg_solic_in_ot_sg">
<h:outputLabel id="sel_solic_in_ot" onclick="slvlcd(this.id,this.value);" value="#{Solic.solic_in_ot}"/>
<h:outputText id="solic_in_ot_desc" value="#{Solic.solic_in_ot_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_in_op">
<h:panelGroup id="pg_solic_in_op_sg">
<h:outputLabel id="sel_solic_in_op" onclick="slvlcd(this.id,this.value);" value="#{Solic.solic_in_op}"/>
<h:outputText id="solic_in_op_desc" value="#{Solic.solic_in_op_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_area">
<h:panelGroup id="pg_solic_tp_area_sg">
<h:outputLabel id="sel_solic_tp_area" onclick="slvlcd(this.id,this.value);" value="#{Solic.solic_tp_area}"/>
<h:outputText id="solic_tp_area_desc" value="#{Solic.solic_tp_area_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_sol">
<h:panelGroup id="pg_solic_tp_sol_sg">
<h:outputLabel id="sel_solic_tp_sol" onclick="slvlcd(this.id,this.value);" value="#{Solic.solic_tp_sol}"/>
<h:outputText id="solic_tp_sol_desc" value="#{Solic.solic_tp_sol_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="solic_tp_solicitante">
<h:panelGroup id="pg_solic_tp_solicitante_sg">
<h:outputLabel id="sel_solic_tp_solicitante" onclick="slvlcd(this.id,this.value);" value="#{Solic.solic_tp_solicitante}"/>
<h:outputText id="solic_tp_solicitante_desc" value="#{Solic.solic_tp_solicitante_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgAreaot" onmousedown="wtran='areaotcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_solic_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Solic.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadAreaotBean.doObternullSearchBack}" onmousedown="wtran='areaotcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_solic_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadAreaotBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_solic_cd');desc=rel(aa+'sel_solic_nm');update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
</h:dataTable>
<!-- Dados -->
</div>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
</div>
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeAsst/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeAsst/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeAsst/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeAsst/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Areaot" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypex" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveTypeHelp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveAssist" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdakht" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAreaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAreaotBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_areaot" action="#{cadAreaotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_areaot" action="#{cadAreaotBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
