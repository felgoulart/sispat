<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadHelpdtrBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardSyst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Helpdtrpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("helpdtrpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleSyst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadHelpdtrBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='';;tran='helpdtrpsq'; vl='';cadbeanx='cadHelpdtrBean';<%session.setAttribute("tipo","helpdtrpsq");%>">
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
<h:outputText value="#{cadHelpdtrBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeSyst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadHelpdtrBean.hasPrevPage}" action="#{cadHelpdtrBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadHelpdtrBean.hasNextPage}" action="#{cadHelpdtrBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadHelpdtrBean.doSelecionar}">
<f:param name="campo5" value=""/>
<f:param name="campo6" value=""/>
<f:param name="tipo" value="helpdtrpsq"/>
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Helpdtr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', 'Sfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpHelpdtrSfm" tabindex="-1" rendered="#{cadHelpdtrBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','HelpdtrSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadHelpdtrBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadHelpdtrBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeSyst/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeSyst/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeSyst/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadHelpdtrBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadHelpdtrBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_cd">
<f:facet name="header">
<h:panelGroup id="pg_help_cd_tt">
<h:outputText id="hd_help_cd_tt_xide" title="#{iimsg.Helpdtr_help_cd_tt}" value="#{iimsg.Helpdtr_help_cd_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_help_cd" action="#{cadHelpdtrBean.doOrd_help_cd}">
<ps:psGraphicImage id="hord_help_cd_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadHelpdtrBean.ord_help_cd_desc}"/>
<ps:psGraphicImage id="hord_help_cd" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadHelpdtrBean.ord_help_cd}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="helpdtrpsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="header">
<h:panelGroup id="pg_help_nm_tt">
<h:outputText id="hd_help_nm_tt_xide" title="#{iimsg.Helpdtr_help_nm_tt}" value="#{iimsg.Helpdtr_help_nm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="header">
<h:panelGroup id="pg_buttonHelp_tt">
<h:outputText id="hd_buttonHelp_tt_xide" title="#{iimsg.Helpdtr_buttonHelp_tt}" value="#{iimsg.Helpdtr_buttonHelp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadHelpdtrBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
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
<h:column id="sel__a_scrollbar">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_help_cd">
<h:inputText id="help_cd_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpdtrBean.fil_help_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_help_nm">
<h:inputText id="help_nm_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpdtrBean.fil_help_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="footer">
<h:panelGroup id="pButtbuttonHelp">
<h:outputText id="bButtbuttonHelp" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadHelpdtrBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadHelpdtrBean.pesqData}"
var="Help"
binding="#{cadHelpdtrBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadHelpdtrBean.pageLength}"
first="#{cadHelpdtrBean.currentLine}">
<!-- propColumnGen -->
<h:column id="help_cd">
<h:panelGroup id="pg_help_cd_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_help_cd"  value="#{Help.help_cd}"/>
<h:inputHidden id="sel_help_tp" value="#{Help.help_tp}"/>
<h:inputHidden id="sel_help_st" value="#{Help.help_st}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<h:panelGroup id="pg_help_nm_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_help_nm"  value="#{Help.help_nm}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<h:panelGroup id="pg_buttonHelp_bt">
<h:inputHidden id="sel_help_cdbuttonHelp_bt" value="#{Help.help_cd}"/>
<h:inputHidden id="sel_help_lgbuttonHelp_bt" value="#{Help.help_lg}"/>
<h:commandLink id="flag_imgrecd_wd_buttonHelp" onmousedown="wtran='helpcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_help_cdbuttonHelp_bt').value;valor2=el(aa+'sel_help_lgbuttonHelp_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_help',this.id,wtran,'yes');"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadHelpdtrBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<h:inputHidden id="sel_help_lg" value="#{Help.help_lg}"/>
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_help_cd');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
</h:dataTable>
<!-- Dados -->
</div>
</div>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeSyst/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeSyst/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Helpdtr" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="Help" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadHelpdtrBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- superType commandLinks -->
<h:commandLink id="xrec_helpdtr" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_helpdtr" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helpdtr" action="#{cadHelpdtrBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpdtr" action="#{cadHelpdtrBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_help" action="#{cadHelpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
