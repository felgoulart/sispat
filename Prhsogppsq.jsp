<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPrhsogpBean");%>
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
<link rel="stylesheet" href="../Prhsogppsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../Prhsogpfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("prhsogppsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_prhso_tp_cfpjtp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_prhso_st_acao_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadPrhsogpBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='PrhsogpSfm';;tran='prhsogppsq'; vl='';cadbeanx='cadPrhsogpBean';<%session.setAttribute("tipo","prhsogppsq");%>">
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
<h:outputText value="#{cadPrhsogpBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadPrhsogpBean.hasPrevPage}" action="#{cadPrhsogpBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadPrhsogpBean.hasNextPage}" action="#{cadPrhsogpBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadPrhsogpBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadPrhsogpBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadPrhsogpBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadPrhsogpBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('prhsogpcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadPrhsogpBean.doNovoUpload}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadPrhsogpBean.canPesquisar}" title="#{iimsg.Prhsogp_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadPrhsogpBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Prhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPrhsogpSfm" tabindex="-1" rendered="#{cadPrhsogpBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','PrhsogpSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadPrhsogpBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadPrhsogpBean.xhelp_rc}" />
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
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey 3 --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_prhso_id_pross" for="prhso_id_pross"  title="#{iimsg.Prhsogp_prhso_id_pross_tt}"  value="#{iimsg.Prhsogp_prhso_id_pross_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="prhso_id_pross" tabindex="-1" readonly="true" value="#{cadPrhsogpBean.prhso_id_pross}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="prhso_id_pross_desc" value="#{cadPrhsogpBean.prhso_id_pross_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadPrhsogpBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadPrhsogpBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp_tt">
<f:facet name="header">
<h:panelGroup id="pg_prhso_tp_cfpjtp_tt">
<h:outputText id="hd_prhso_tp_cfpjtp_tt" title="#{iimsg.Prhsogp_prhso_tp_cfpjtp_tt}" value="#{iimsg.Prhsogp_prhso_tp_cfpjtp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<f:facet name="header">
<h:panelGroup id="pg_prhso_sq_dthm_tt">
<h:outputText id="hd_prhso_sq_dthm_tt_xide" title="#{iimsg.Prhsogp_prhso_sq_dthm_tt}" value="#{iimsg.Prhsogp_prhso_sq_dthm_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<f:facet name="header">
<h:panelGroup id="pg_prhso_tp_acao_tt">
<h:outputText id="hd_prhso_tp_acao_tt_xide" title="#{iimsg.Prhsogp_prhso_tp_acao_tt}" value="#{iimsg.Prhsogp_prhso_tp_acao_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<f:facet name="header">
<h:panelGroup id="pg_prhso_ds_assunto_tt">
<h:outputText id="hd_prhso_ds_assunto_tt_xide" title="#{iimsg.Prhsogp_prhso_ds_assunto_tt}" value="#{iimsg.Prhsogp_prhso_ds_assunto_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao_tt">
<f:facet name="header">
<h:panelGroup id="pg_prhso_st_acao_tt">
<h:outputText id="hd_prhso_st_acao_tt" title="#{iimsg.Prhsogp_prhso_st_acao_tt}" value="#{iimsg.Prhsogp_prhso_st_acao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<f:facet name="header">
<h:panelGroup id="pg_prhso_cd_de_tt">
<h:outputText id="hd_prhso_cd_de_tt_xide" title="#{iimsg.Prhsogp_prhso_cd_de_tt}" value="#{iimsg.Prhsogp_prhso_cd_de_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<f:facet name="header">
<h:panelGroup id="pg_prhso_cd_para_tt">
<h:outputText id="hd_prhso_cd_para_tt_xide" title="#{iimsg.Prhsogp_prhso_cd_para_tt}" value="#{iimsg.Prhsogp_prhso_cd_para_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pross_fxaco_ongrid_tt">
<h:outputText id="hd_pross_fxaco_ongrid_tt_xide" title="#{iimsg.Prhsogp_pross_fxaco_ongrid_tt}" value="#{iimsg.Prhsogp_pross_fxaco_ongrid_ta}"/>
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
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_prhso_tp_cfpjtp">
<h:inputText id="fil_prhso_tp_cfpjtp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPPRO', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPrhsogpBean.fil_prhso_tp_cfpjtp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_sq_dthm">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_tp_acao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_ds_assunto">
<h:inputText id="prhso_ds_assunto_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpBean.fil_prhso_ds_assunto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_prhso_st_acao">
<h:inputText id="fil_prhso_st_acao_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STAPS', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPrhsogpBean.fil_prhso_st_acao}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_cd_de">
<h:inputText id="prhso_cd_de_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpBean.fil_prhso_cd_de}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<f:facet name="footer">
<h:panelGroup id="fpg_prhso_cd_para">
<h:inputText id="prhso_cd_para_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPrhsogpBean.fil_prhso_cd_para}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpross_fxaco_ongrid">
<h:outputText id="bButtpross_fxaco_ongrid" styleClass="pf" value=""/>
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
<h:column id="sel__a_scrollbar_right">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar_right__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadPrhsogpBean.pesqData}"
var="Prhso"
binding="#{cadPrhsogpBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadPrhsogpBean.pageLength}"
first="#{cadPrhsogpBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="prhso_tp_cfpjtp">
<h:panelGroup id="pg_prhso_tp_cfpjtp_sg">
<h:outputLabel id="sel_prhso_tp_cfpjtp" title="#{Prhso.prhso_tp_cfpjtp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:inputHidden id="sel_prhso_st_sum" value="#{Prhso.prhso_st_sum}"/>
<h:inputHidden id="sel_prhso_st" value="#{Prhso.prhso_st}"/>
<h:inputHidden id="sel_prhso_ds_depara" value="#{Prhso.prhso_ds_depara}"/>
<h:inputHidden id="sel_prhso_ds_deparax" value="#{Prhso.prhso_ds_deparax}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_sq_dthm">
<h:panelGroup id="pg_prhso_sq_dthm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_sq_dthm"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_sq_dthm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_tp_acao">
<h:panelGroup id="pg_prhso_tp_acao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_tp_acao"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_tp_acao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_ds_assunto">
<h:panelGroup id="pg_prhso_ds_assunto_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_ds_assunto"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_ds_assunto}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="prhso_st_acao">
<h:panelGroup id="pg_prhso_st_acao_sg">
<h:outputLabel id="sel_prhso_st_acao" title="#{Prhso.prhso_st_acao_desc}" onclick="slvlcd(this.id,this.value);" value="#{Prhso.prhso_st_acao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_de">
<h:panelGroup id="pg_prhso_cd_de_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_cd_de"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_cd_de}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="prhso_cd_para">
<h:panelGroup id="pg_prhso_cd_para_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_prhso_cd_para"  onclick="slvl(this.id,this.value);" value="#{Prhso.prhso_cd_para}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pross_fxaco_ongrid_bt">
<h:panelGroup id="pg_pross_fxaco_ongrid_bt">
<h:inputHidden id="sel_prhso_id_prosspross_fxaco_ongrid_bt" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:inputHidden id="sel_prhso_sqpross_fxaco_ongrid_bt" value="#{Prhso.prhso_tp_cfpjtp}"/>
<h:commandButton id="flag_imgrecd_wd_pross_fxaco_ongrid" action="#{cadFxacoBean.doSelecionar}" image="../imagens/process.png" onmousedown="wtran='fxacopsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_prhso_id_prosspross_fxaco_ongrid_bt').value;valor2=el(aa+'sel_prhso_sqpross_fxaco_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=prhsogppsq&tipo='+wtran+'&valor='+valor1+','+valor2;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_prhso_id_pross" value="#{Prhso.prhso_id_pross}"/>
<h:inputHidden id="sel_prhso_sq" value="#{Prhso.prhso_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadPrhsogpBean.doObternullSearchBack}" onmousedown="wtran='prhsogpcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_prhso_id_pross');valor2=rpel(aa+'sel_prhso_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
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
<iframe id="Prhsogp" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obdocpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fxaco" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadPrhsogpBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_prhsogp" action="#{cadPrhsogpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prhsogp" action="#{cadPrhsogpBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossimcpa" action="#{cadProssimcpaBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossimcpa" action="#{cadProssimcpaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossafata" action="#{cadProssafataBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossafata" action="#{cadProssafataBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxa" action="#{cadProssmrbxaBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxa" action="#{cadProssmrbxaBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossmrbxp" action="#{cadProssmrbxpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossmrbxp" action="#{cadProssmrbxpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivges" action="#{cadProssivgesBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivges" action="#{cadProssivgesBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prossivgen" action="#{cadProssivgenBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prossivgen" action="#{cadProssivgenBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_prosscomod" action="#{cadProsscomodBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_prosscomod" action="#{cadProsscomodBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpr" action="#{cadObdocprBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpr" action="#{cadObdocprBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpr" action="#{cadObdocprBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpreml" action="#{cadObdocpremlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpreml" action="#{cadObdocpremlBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_fxaco" action="#{cadFxacoBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
