<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObdocprxBean");%>
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
<link rel="stylesheet" href="../Obdocprxpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obdocprpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:obdocpr_id_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_obdocpr_st_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObdocprxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObdocprxSfm';;tran='obdocprxpsq'; vl='';cadbeanx='cadObdocprxBean';<%session.setAttribute("tipo","obdocprxpsq");%>">
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
<h:outputText value="#{cadObdocprxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocprxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObdocprxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObdocprxBean.hasPrevPage}" action="#{cadObdocprxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObdocprxBean.hasNextPage}" action="#{cadObdocprxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObdocprxBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObdocprxBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObdocprxBean.doLimparPesq}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obdocpr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldxSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObdocprxSfm" tabindex="-1" rendered="#{cadObdocprxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObdocprxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObdocprxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObdocprxBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadObdocprxBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObdocprxBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="obdocpr_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_id_tt">
<h:outputText id="hd_obdocpr_id_tt" title="#{iimsg.Obdocpr_obdocpr_id_tt}" value="#{iimsg.Obdocpr_obdocpr_id_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cl_type">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_cl_type_tt">
<h:outputText id="hd_obdocpr_cl_type_tt_xide" title="#{iimsg.Obdocpr_obdocpr_cl_type_tt}" value="#{iimsg.Obdocpr_obdocpr_cl_type_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_solct">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_cd_solct_tt">
<h:outputText id="hd_obdocpr_cd_solct_tt_xide" title="#{iimsg.Obdocpr_obdocpr_cd_solct_tt}" value="#{iimsg.Obdocpr_obdocpr_cd_solct_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_destino">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_cd_destino_tt">
<h:outputText id="hd_obdocpr_cd_destino_tt_xide" title="#{iimsg.Obdocpr_obdocpr_cd_destino_tt}" value="#{iimsg.Obdocpr_obdocpr_cd_destino_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpr_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_st_tt">
<h:outputText id="hd_obdocpr_st_tt" title="#{iimsg.Obdocpr_obdocpr_st_tt}" value="#{iimsg.Obdocpr_obdocpr_st_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_envio">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_dt_envio_tt">
<h:outputText id="hd_obdocpr_dt_envio_tt_xide" title="#{iimsg.Obdocpr_obdocpr_dt_envio_tt}" value="#{iimsg.Obdocpr_obdocpr_dt_envio_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_recepcao">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_dt_recepcao_tt">
<h:outputText id="hd_obdocpr_dt_recepcao_tt_xide" title="#{iimsg.Obdocpr_obdocpr_dt_recepcao_tt}" value="#{iimsg.Obdocpr_obdocpr_dt_recepcao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_nm_file">
<f:facet name="header">
<h:panelGroup id="pg_obdocpr_nm_file_tt">
<h:outputText id="hd_obdocpr_nm_file_tt_xide" title="#{iimsg.Obdocpr_obdocpr_nm_file_tt}" value="#{iimsg.Obdocpr_obdocpr_nm_file_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="chk_varchk">
<f:facet name="header">
<h:panelGroup id="pg_selected_tt">
<h:selectBooleanCheckbox id="chk_var_sel_tt" onclick="ckbSelAll(this.id);" title="#{iimsg.Obdocpr_chk_var_tt}" />
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_ttpk">
<h:outputText id="hd_recd_wd_tt_xidepk" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
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
<h:column id="obdocpr_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_id">
<!--   // 444-->
<h:inputText id="obdocpr_id_xfil" title="#{iimsg.hint_dblclick}" ondblclick="this.value=''" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocprxBean.fil_obdocpr_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cl_type">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_cl_type">
<h:inputText id="obdocpr_cl_type_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocprxBean.fil_obdocpr_cl_type}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_solct">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_cd_solct">
<h:inputText id="obdocpr_cd_solct_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocprxBean.fil_obdocpr_cd_solct}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_destino">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_cd_destino">
<h:inputText id="obdocpr_cd_destino_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocprxBean.fil_obdocpr_cd_destino}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpr_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocpr_st">
<h:inputText id="fil_obdocpr_st_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STDCP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocprxBean.fil_obdocpr_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_envio">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_dt_envio">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_recepcao">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_dt_recepcao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_nm_file">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpr_nm_file">
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="chk_varchk">
<f:facet name="footer">
<h:panelGroup id="pg_chk_var_sg">
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ftpk">
<h:outputText id="recd_wd_ftpk" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
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
value="#{cadObdocprxBean.pesqData}"
var="Obdocpr"
binding="#{cadObdocprxBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObdocprxBean.pageLength}"
first="#{cadObdocprxBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="obdocpr_id_fk">
<h:panelGroup id="pg_obdocpr_id_sg">
<!--   // 333-->
<h:outputText id="sel_obdocpr_id" value="#{Obdocpr.obdocpr_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cl_type">
<h:panelGroup id="pg_obdocpr_cl_type_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpr_cl_type"  onclick="slvl(this.id,this.value);" value="#{Obdocpr.obdocpr_cl_type}"/>
<h:inputHidden id="sel_obdocpr_cl" value="#{Obdocpr.obdocpr_cl}"/>
<h:inputHidden id="sel_obdocpr_cl_typex" value="#{Obdocpr.obdocpr_cl_typex}"/>
<h:inputHidden id="sel_obdocpr_cd_file" value="#{Obdocpr.obdocpr_cd_file}"/>
<h:inputHidden id="sel_obdocpr_tp_cfpjtp" value="#{Obdocpr.obdocpr_tp_cfpjtp}"/>
<h:inputHidden id="sel_obdocpr_ct" value="#{Obdocpr.obdocpr_ct}"/>
<h:inputHidden id="sel_obdocpr_in_ultimo" value="#{Obdocpr.obdocpr_in_ultimo}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_solct">
<h:panelGroup id="pg_obdocpr_cd_solct_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpr_cd_solct"  onclick="slvl(this.id,this.value);" value="#{Obdocpr.obdocpr_cd_solct}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_cd_destino">
<h:panelGroup id="pg_obdocpr_cd_destino_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpr_cd_destino"  onclick="slvl(this.id,this.value);" value="#{Obdocpr.obdocpr_cd_destino}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpr_st">
<h:panelGroup id="pg_obdocpr_st_sg">
<h:outputLabel id="sel_obdocpr_st" title="#{Obdocpr.obdocpr_st_desc}" onclick="slvlcd(this.id,this.value);" value="#{Obdocpr.obdocpr_st}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_envio">
<h:panelGroup id="pg_obdocpr_dt_envio_sg">
<h:outputText id="sel_obdocpr_dt_envio" value="#{Obdocpr.obdocpr_dt_envio_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_dt_recepcao">
<h:panelGroup id="pg_obdocpr_dt_recepcao_sg">
<h:outputText id="sel_obdocpr_dt_recepcao" value="#{Obdocpr.obdocpr_dt_recepcao_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpr_nm_file">
<h:panelGroup id="pg_obdocpr_nm_file_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpr_nm_file"  onclick="slvl(this.id,this.value);" value="#{Obdocpr.obdocpr_nm_file}"/>
</h:panelGroup>
</h:column>
<h:column id="chk_varchk">
<h:panelGroup id="pg_chk_var_sg">
<h:selectBooleanCheckbox id="chk_var" value="#{Obdocpr.selected}" onclick="" />
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obdocpr_sq" value="#{Obdocpr.obdocpr_sq}"/>
<!-- CRX-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObdocprxBean.doObternullSearchBack}" onmousedown="wtran='obdocprxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obdocpr_id');valor2=rpel(aa+'sel_obdocpr_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<h:panelGroup id="pg_recd_wd_sgpk">
<h:inputHidden id="sel_obdocpr_sqpk" value="#{Obdocpr.obdocpr_sq}"/>
<!-- PRX-20-->  <h:commandButton id="flag_imgrecd_wdpk" image="../imagens/btRecdpk.gif" onmousedown="aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_obdocpr_id');typevl=rpel(aa+'sel_obdocpr_tp_cfpjtp');tranx=ProssType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey; onclickx('xrec_'+tranx,'yes');"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
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
<iframe id="Obdocpr" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Super Trans Subtypes c'ommandLinks -->
<h:commandLink id="xrec_prossimcpa" action="#{cadProssImcpaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossafata" action="#{cadProssAfataBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssMrbxaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssMrbxpBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivges" action="#{cadProssIvgesBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivgen" action="#{cadProssIvgenBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prosscomod" action="#{cadProssComodBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obdocprxpsq"/>
</h:commandLink>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObdocprxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObdocprxBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obdocpr" action="#{cadObdocprBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdocpr" action="#{cadObdocprBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
