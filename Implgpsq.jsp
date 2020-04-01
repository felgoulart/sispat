<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadImplgBean");%>
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
<link rel="stylesheet" href="../Implgpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("implgpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadImplgBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ImplgSfm';;tran='implgpsq'; vl='';cadbeanx='cadImplgBean';<%session.setAttribute("tipo","implgpsq");%>">
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
<h:outputText value="#{cadImplgBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadImplgBean.hasPrevPage}" action="#{cadImplgBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadImplgBean.hasNextPage}" action="#{cadImplgBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadImplgBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadImplgBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadImplgBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadImplgBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('implgcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadImplgBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Implg');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpImplgSfm" tabindex="-1" rendered="#{cadImplgBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ImplgSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadImplgBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadImplgBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadImplgBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadImplgBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="implg_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_implg_id_tt">
<h:outputText id="hd_implg_id_tt" title="#{iimsg.Implg_implg_id_tt}" value="#{iimsg.Implg_implg_id_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_ob">
<f:facet name="header">
<h:panelGroup id="pg_implg_ob_tt">
<h:outputText id="hd_implg_ob_tt_xide" title="#{iimsg.Implg_implg_ob_tt}" value="#{iimsg.Implg_implg_ob_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="impld_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_impld_ongrid_tt">
<h:outputText id="hd_impld_ongrid_tt_xide" title="#{iimsg.Implg_impld_ongrid_tt}" value="#{iimsg.Implg_impld_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_st">
<f:facet name="header">
<h:panelGroup id="pg_implg_st_tt">
<h:outputText id="hd_implg_st_tt_xide" title="#{iimsg.Implg_implg_st_tt}" value="#{iimsg.Implg_implg_st_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_ini">
<f:facet name="header">
<h:panelGroup id="pg_implg_dh_ini_tt">
<h:outputText id="hd_implg_dh_ini_tt_xide" title="#{iimsg.Implg_implg_dh_ini_tt}" value="#{iimsg.Implg_implg_dh_ini_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_fim">
<f:facet name="header">
<h:panelGroup id="pg_implg_dh_fim_tt">
<h:outputText id="hd_implg_dh_fim_tt_xide" title="#{iimsg.Implg_implg_dh_fim_tt}" value="#{iimsg.Implg_implg_dh_fim_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_ok">
<f:facet name="header">
<h:panelGroup id="pg_implg_qt_ok_tt">
<h:outputText id="hd_implg_qt_ok_tt_xide" title="#{iimsg.Implg_implg_qt_ok_tt}" value="#{iimsg.Implg_implg_qt_ok_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_er">
<f:facet name="header">
<h:panelGroup id="pg_implg_qt_er_tt">
<h:outputText id="hd_implg_qt_er_tt_xide" title="#{iimsg.Implg_implg_qt_er_tt}" value="#{iimsg.Implg_implg_qt_er_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Implg_tabs_vc_tt}" value="#{iimsg.Implg_tabs_vc_ta}"/>
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
<!-- fkeyColumnGen -->
<h:column id="implg_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_id">
<h:inputText id="implg_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadImplgBean.fil_implg_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_ob">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_ob">
<h:inputText id="implg_ob_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadImplgBean.fil_implg_ob}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="impld_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtimpld_ongrid">
<h:outputText id="bButtimpld_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_st">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_st">
<h:inputText id="implg_st_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadImplgBean.fil_implg_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_ini">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_dh_ini">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_fim">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_dh_fim">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_ok">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_qt_ok">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_er">
<f:facet name="footer">
<h:panelGroup id="fpg_implg_qt_er">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadImplgBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadImplgBean.pesqData}"
var="Implg"
binding="#{cadImplgBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadImplgBean.pageLength}"
first="#{cadImplgBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="implg_id_fk">
<h:panelGroup id="pg_implg_id_sg">
<!--   // 333-->
<h:outputLabel id="sel_implg_id" onclick="slvl(this.id,this.value);" value="#{Implg.implg_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_ob">
<h:panelGroup id="pg_implg_ob_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_implg_ob"  onclick="slvl(this.id,this.value);" value="#{Implg.implg_ob}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="impld_ongrid_bt">
<h:panelGroup id="pg_impld_ongrid_bt">
<h:inputHidden id="sel_implg_idimpld_ongrid_bt" value="#{Implg.implg_id}"/>
<h:commandButton id="flag_imgrecd_wd_impld_ongrid" action="#{cadImpldBean.doSelecionar}" image="#{Implg.impld_im}" onmousedown="wtran='impldpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_implg_idimpld_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=implgpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_st">
<h:panelGroup id="pg_implg_st_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_implg_st"  onclick="slvl(this.id,this.value);" value="#{Implg.implg_st}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_ini">
<h:panelGroup id="pg_implg_dh_ini_sg">
<h:outputText id="sel_implg_dh_ini" value="#{Implg.implg_dh_ini_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_dh_fim">
<h:panelGroup id="pg_implg_dh_fim_sg">
<h:outputText id="sel_implg_dh_fim" value="#{Implg.implg_dh_fim_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_ok">
<h:panelGroup id="pg_implg_qt_ok_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_implg_qt_ok"  onclick="slvl(this.id,this.value);" value="#{Implg.implg_qt_ok}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="implg_qt_er">
<h:panelGroup id="pg_implg_qt_er_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_implg_qt_er"  onclick="slvl(this.id,this.value);" value="#{Implg.implg_qt_er}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgImplg" onmousedown="wtran='implgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_implg_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Implg.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadImplgBean.doObternullSearchBack}" onmousedown="wtran='implgcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_implg_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="Implg" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="impld" width="0" height="0" frameborder="0"> </iframe>
<iframe id="impld" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadImplgBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadImplgBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_implg" action="#{cadImplgBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_implg" action="#{cadImplgBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_implg" action="#{cadImplgBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_implg" action="#{cadImplgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_implg" action="#{cadImplgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_impld" action="#{cadImpldBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_impld" action="#{cadImpldBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_impld" action="#{cadImpldBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
