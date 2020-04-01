<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadHelpSearchTransBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardHelp.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("helpsearchtranspsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:help_id_trans_xfil', 'pfdb9', 'pfd9');
mesgStyleHelp(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadHelpSearchTransBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='';tran='helpsearchtranspsq'; vl='';cadbeanx='cadHelpSearchTransBean';<%session.setAttribute("tipo","helpsearchtranspsq");%>">
<h:form id="cadForm">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<%@include file="projHeader1.jsp"%>
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
<h:outputText value="#{cadHelpSearchTransBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeHelp/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeHelp/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aPrev" styleClass="btp"  ativo="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadHelpSearchTransBean.hasPrevPage}" action="#{cadHelpSearchTransBean.doPaginaAnterior}">
</ps:psCommandLink>
<ps:psCommandLink id="aNext" styleClass="btp"  ativo="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadHelpSearchTransBean.hasNextPage}" action="#{cadHelpSearchTransBean.doProximaPagina}">
</ps:psCommandLink>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadHelpSearchTransBean.doSelecionar}">
<f:param name="campo10" value=""/>
<f:param name="tipo" value="helpsearchtranspsq"/>
</ps:psCommandLink>
<ps:psCommandLink id="aLimpar" styleClass="btp" enabled="#{cadHelpSearchTransBean.canPesquisar}" ativo="../imagens/btCancel.gif"  disabled="" title="#{iimsg.botao_limpar}" action="#{cadHelpSearchTransBean.doLimpar}">
</ps:psCommandLink>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadHelpSearchTransBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovo('helpsearchtranscad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadHelpSearchTransBean.doNovo}">
</ps:psCommandLink>
<ps:psCommandLink id="aHelp" styleClass="btp"  ativo="../imagens/btHelp.gif" title="#{iimsg.botao_help}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='HelpSearchTrans';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpgen" styleClass="btp"  ativo="../imagens/btHelpGen.gif" title="#{iimsg.botao_help_gen}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='@CrudHelpSearchSfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aPrint" styleClass="btp" ativo="../imagens/btPrinter.gif" title="#{iimsg.button_printScreen_tt}"  onmousedown="window.print()">
</ps:psCommandLink>
<h:inputHidden id="xmesg_rc" value="#{cadHelpSearchTransBean.xmesg_rc}" />
<ps:psCommandLink id="aClose" styleClass="btp" ativo="../imagens/btClose.gif" title="#{iimsg.botao_close}"  onmousedown="window.close()">
</ps:psCommandLink>
</td>
<td width="15" height="13" background="../imagens/thmeHelp/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeHelp/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeHelp/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeHelp/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeHelp/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeHelp/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeHelp/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadHelpSearchTransBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadHelpSearchTransBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<!-- Pesquisa Header Table -->
<table width="100%" cellpadding="0" cellspacing="0" style="border-left: solid 1px slategray; border-top: solid 1px slategray; border-right: solid 1px slategray;" bgcolor="" > <tr> <td>
<!-- Dados -->
<h:dataTable
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados_tt"
border="0"
rules="all">
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt" styleClass="txl pl2" style="width:14px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="help_id_trans_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_help_id_trans_tt" styleClass=" txl pl2" style="width:100px;">
<h:outputText id="hd_help_id_trans_tt" title="#{iimsg.HelpSearchTrans_help_id_trans_tt}" value="#{iimsg.HelpSearchTrans_help_id_trans_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_cd">
<f:facet name="header">
<h:panelGroup id="pg_help_cd_tt" styleClass=" txl pl2" style="width:100px;">
<h:outputText id="hd_help_cd_tt_xide" title="#{iimsg.HelpSearchTrans_help_cd_tt}" value="#{iimsg.HelpSearchTrans_help_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg_tt">
<f:facet name="header">
<h:panelGroup id="pg_help_lg_tt" styleClass=" txl pl2" style="width:47px;">
<h:outputText id="hd_help_lg_tt" title="#{iimsg.HelpSearchTrans_help_lg_tt}" value="#{iimsg.HelpSearchTrans_help_lg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="header">
<h:panelGroup id="pg_help_nm_tt" styleClass=" txl pl2" style="width:450px;">
<h:outputText id="hd_help_nm_tt_xide" title="#{iimsg.HelpSearchTrans_help_nm_tt}" value="#{iimsg.HelpSearchTrans_help_nm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="header">
<h:panelGroup id="pg_buttonHelp_tt" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="hd_buttonHelp_tt_xide" title="#{iimsg.HelpSearchTrans_buttonHelp_tt}" value="#{iimsg.HelpSearchTrans_buttonHelp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
</td> </tr> </table>
<!-- Pesquisa Filter Table -->
<table width="100%" cellpadding="0" cellspacing="0" style="border-left: solid 1px slategray; border-bottom: solid 1px slategray; border-right: solid 1px slategray;" bgcolor="" > <tr> <td>
<!-- Dados -->
<h:dataTable
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados_ft"
border="0"
rules="all">
<h:column id="sel__a_scrollbar">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar__a_tt" styleClass="txl pl2" style="width:14px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="help_id_trans_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_help_id_trans" styleClass=" txl" style="width:100px;">
<!--   // 444-->
<h:inputText id="help_id_trans_xfil" title="#{iimsg.hint_dblclick}" styleClass="pfdb9" ondblclick="el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&filt;showpopup(tran,'xsel_loglocalidade',this.id,wtran,'yes');" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpSearchTransBean.fil_help_id_trans}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_help_cd" styleClass=" txl" style="width:100px;">
<h:inputText id="help_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpSearchTransBean.fil_help_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_help_lg" styleClass=" txl" style="width:47px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_help_nm" styleClass=" txl" style="width:450px;">
<h:inputText id="help_nm_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpSearchTransBean.fil_help_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="footer">
<h:panelGroup id="pButtbuttonHelp" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="bButtbuttonHelp" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
</td> </tr> </table>
<table width="100%" cellpadding="0" cellspacing="0" style="border: solid 1px slategray;" bgcolor="" > <tr> <td>
<div style="direction:rtl;overflow-y:scroll; height:401px;">
<div id="div_dtDados" style="direction:ltr;">
<!-- Dados -->
<h:dataTable
value="#{cadHelpSearchTransBean.pesqData}"
var="Help"
binding="#{cadHelpSearchTransBean.pesqTable}"
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados"
border="0"
rules="all"
rows="#{cadHelpSearchTransBean.pageLength}"
first="#{cadHelpSearchTransBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="help_id_trans_fk">
<h:panelGroup id="pg_help_id_trans_sg" styleClass=" txl pl2" style="width:100px;">
<!--   // 333-->
<h:outputText id="sel_help_id_trans" title="#{Help.help_id_trans_desc}" value="#{Help.help_id_trans}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="help_cd">
<h:panelGroup id="pg_help_cd_sg" styleClass=" txl pl2" style="width:100px;">
<!-- propColumnGen String -->
<h:outputText id="sel_help_cd"  value="#{Help.help_cd}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg">
<h:panelGroup id="pg_help_lg_sg" styleClass=" txl pl2" style="width:47px;">
<h:outputText id="sel_help_lg" title="#{Help.help_lg_desc}" value="#{Help.help_lg}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<h:panelGroup id="pg_help_nm_sg" styleClass=" txl pl2" style="width:450px;">
<!-- propColumnGen String -->
<h:outputText id="sel_help_nm"  value="#{Help.help_nm}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<h:panelGroup id="pg_buttonHelp_bt" styleClass=" txc pr2 pl2" style="width:30px;">
<h:inputHidden id="sel_help_cdbuttonHelp_bt" value="#{Help.help_cd}"/>
<h:inputHidden id="sel_help_lgbuttonHelp_bt" value="#{Help.help_lg}"/>
<h:commandLink id="flag_imgrecd_wd_buttonHelp" onmousedown="wtran='helpcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_help_cdbuttonHelp_bt').value;valor2=el(aa+'sel_help_lgbuttonHelp_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
<ps:psGraphicImage  url="../imagens/btHelp.gif" title="#{iimsg.HelpSearchTrans_buttonHelp_tt}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
<!-- Dados -->
</div>
</div>
</td> </tr> </table>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeHelp/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeHelp/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeHelp/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeHelp/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelpSearchTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadHelpSearchTransBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- superType commandLinks -->
<h:commandLink id="xrec_helpsearchtrans" action="#{cadHelpSearchTransBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_help" action="#{cadHelpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
