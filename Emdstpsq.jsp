<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadEmdstBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardEmail.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("emdstpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadEmdstBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='EmdstSfm';tran='emdstpsq'; vl='';cadbeanx='cadEmdstBean';<%session.setAttribute("tipo","emdstpsq");%>">
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
<h:outputText value="#{cadEmdstBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeEmail/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aPrev" styleClass="btp"  ativo="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadEmdstBean.hasPrevPage}" action="#{cadEmdstBean.doPaginaAnterior}">
</ps:psCommandLink>
<ps:psCommandLink id="aNext" styleClass="btp"  ativo="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadEmdstBean.hasNextPage}" action="#{cadEmdstBean.doProximaPagina}">
</ps:psCommandLink>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadEmdstBean.doSelecionar}">
<f:param name="tipo" value="emdstpsq"/>
</ps:psCommandLink>
<ps:psCommandLink id="aLimpar" styleClass="btp" enabled="#{cadEmdstBean.canPesquisar}" ativo="../imagens/btCancel.gif"  disabled="" title="#{iimsg.botao_limpar}" action="#{cadEmdstBean.doLimpar}">
</ps:psCommandLink>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadEmdstBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('emdstcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadEmdstBean.doNovo}">
</ps:psCommandLink>
<ps:psCommandLink id="aHelp" styleClass="btp"  ativo="../imagens/btHelp.gif" title="#{iimsg.botao_help}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='Emdst';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpgen" styleClass="btp"  ativo="../imagens/btHelpGen.gif" title="#{iimsg.botao_help_gen}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='@CrudSfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpEmdstSfm" styleClass="btp" enabled="#{cadEmdstBean.hasHelpSpcSfm}"  ativo="../imagens/btHelpSpc.gif" title="#{iimsg.botao_help_spc}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='EmdstSfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" title="#{iimsg.button_help_repository}" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<!-- aClose 2 -->
<h:inputHidden id="xmesg_rc" value="#{cadEmdstBean.xmesg_rc}" />
<ps:psCommandLink id="aClose" styleClass="btp" ativo="../imagens/btClose.gif" title="#{iimsg.botao_close}"  onmousedown="window.close()">
</ps:psCommandLink>
</td>
<td width="15" height="13" background="../imagens/thmeEmail/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeEmail/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeEmail/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadEmdstBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadEmdstBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="emdst_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_emdst_cd_tt" styleClass=" txl pl2" style="width:182px;">
<h:outputText id="hd_emdst_cd_tt" title="#{iimsg.Emdst_emdst_cd_tt}" value="#{iimsg.Emdst_emdst_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="emdst_ds">
<f:facet name="header">
<h:panelGroup id="pg_emdst_ds_tt" styleClass=" txl pl2" style="width:500px;">
<h:outputText id="hd_emdst_ds_tt_xide" title="#{iimsg.Emdst_emdst_ds_tt}" value="#{iimsg.Emdst_emdst_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt" styleClass=" txc pr2 pl2" style="width:25px;">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Emdst_tabs_vc_tt}" value="#{iimsg.Emdst_tabs_vc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_tt" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="hd_recd_wd_tt_xide" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmdstBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt" styleClass=" txc pr2 pl2" style="width:30px;">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
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
<h:column id="emdst_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_emdst_cd" styleClass=" txl" style="width:182px;">
<h:inputText id="emdst_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmdstBean.fil_emdst_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="emdst_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_emdst_ds" styleClass=" txl" style="width:500px;">
<h:inputText id="emdst_ds_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmdstBean.fil_emdst_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc" styleClass=" txc pr2 pl2" style="width:25px;">
<h:inputText id="tabs_vc_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmdstBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ft" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="recd_wd_ft" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmdstBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</td> </tr> </table>
<table width="100%" cellpadding="0" cellspacing="0" style="border: solid 1px slategray;" bgcolor="" > <tr> <td>
<div style="direction:rtl;overflow-y:scroll; height:321px;">
<div id="div_dtDados" style="direction:ltr;">
<!-- Dados -->
<h:dataTable
value="#{cadEmdstBean.pesqData}"
var="Emdst"
binding="#{cadEmdstBean.pesqTable}"
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados"
border="0"
rules="all"
rows="#{cadEmdstBean.pageLength}"
first="#{cadEmdstBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="emdst_cd_fk">
<h:panelGroup id="pg_emdst_cd_sg" styleClass=" txl pl2" style="width:182px;">
<!--   // 333-->
<h:outputText id="sel_emdst_cd" value="#{Emdst.emdst_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="emdst_ds">
<h:panelGroup id="pg_emdst_ds_sg" styleClass=" txl pl2" style="width:500px;">
<!-- propColumnGen String -->
<h:outputText id="sel_emdst_ds"  value="#{Emdst.emdst_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg" styleClass=" txc pr2 pl2" style="width:25px;">
<h:commandLink id="flag_imgEmdst" onmousedown="wtran='emdstcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_emdst_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Emdst.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg" styleClass=" txc pr2 pl2" style="width:30px;">
<h:commandLink id="flag_imgrecd_wd" action="#{cadEmdstBean.doObternullSearchBack}" onmousedown="wtran='emdstcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_emdst_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmdstBean.assist}">
<h:panelGroup id="pg_pReg_sg" styleClass=" txc pr2 pl2" style="width:30px;">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_emdst_cd');desc=rel(aa+'sel_emdst_ds');update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
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
<td width="15" background="../imagens/thmeEmail/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeEmail/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_curva_botdir.gif" width="15" height="13"> </td>
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
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadEmdstBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
