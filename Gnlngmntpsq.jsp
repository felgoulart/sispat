<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadGnlngmntBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardCodf.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Gnlngmntpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("gnlngmntpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleCodf(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadGnlngmntBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='GnlngmntSfm';;tran='gnlngmntpsq'; vl='';cadbeanx='cadGnlngmntBean';<%session.setAttribute("tipo","gnlngmntpsq");%>">
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
<h:outputText value="#{cadGnlngmntBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeCodf/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeCodf/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeCodf/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadGnlngmntBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadGnlngmntBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadGnlngmntBean.hasPrevPage}" action="#{cadGnlngmntBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadGnlngmntBean.hasNextPage}" action="#{cadGnlngmntBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadGnlngmntBean.doSelecionar}">
<f:param name="campo8" value=""/>
<f:param name="tipo" value="gnlngmntpsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadGnlngmntBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadGnlngmntBean.doLimparPesq}"/>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadGnlngmntBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('gnlngmntcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadGnlngmntBean.doNovo}">
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Gnlngmnt');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpGnlngmntSfm" tabindex="-1" rendered="#{cadGnlngmntBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','GnlngmntSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadGnlngmntBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadGnlngmntBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeCodf/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeCodf/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeCodf/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeCodf/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeCodf/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeCodf/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeCodf/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadGnlngmntBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadGnlngmntBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="codf_tp">
<f:facet name="header">
<h:panelGroup id="pg_codf_tp_tt">
<h:outputText id="hd_codf_tp_tt_xide" title="#{iimsg.Gnlngmnt_codf_tp_tt}" value="#{iimsg.Gnlngmnt_codf_tp_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_codf_tp" action="#{cadGnlngmntBean.doOrd_codf_tp}">
<ps:psGraphicImage id="hord_codf_tp_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadGnlngmntBean.ord_codf_tp_desc}"/>
<ps:psGraphicImage id="hord_codf_tp" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadGnlngmntBean.ord_codf_tp}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="gnlngmntpsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_lg">
<f:facet name="header">
<h:panelGroup id="pg_codf_lg_tt">
<h:outputText id="hd_codf_lg_tt_xide" title="#{iimsg.Gnlngmnt_codf_lg_tt}" value="#{iimsg.Gnlngmnt_codf_lg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_id">
<f:facet name="header">
<h:panelGroup id="pg_codf_id_tt">
<h:outputText id="hd_codf_id_tt_xide" title="#{iimsg.Gnlngmnt_codf_id_tt}" value="#{iimsg.Gnlngmnt_codf_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<f:facet name="header">
<h:panelGroup id="pg_codf_ds_tt">
<h:outputText id="hd_codf_ds_tt_xide" title="#{iimsg.Gnlngmnt_codf_ds_tt}" value="#{iimsg.Gnlngmnt_codf_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Gnlngmnt_tabs_vc_tt}" value="#{iimsg.Gnlngmnt_tabs_vc_ta}"/>
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
<h:column rendered="#{cadGnlngmntBean.assist}">
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
<h:column id="codf_tp">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_tp">
<h:inputText id="codf_tp_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadGnlngmntBean.fil_codf_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_lg">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_lg">
<h:inputText id="codf_lg_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadGnlngmntBean.fil_codf_lg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_id">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_id">
<h:inputText id="codf_id_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadGnlngmntBean.fil_codf_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_codf_ds">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadGnlngmntBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadGnlngmntBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:301px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadGnlngmntBean.pesqData}"
var="Gnlngmnt"
binding="#{cadGnlngmntBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadGnlngmntBean.pageLength}"
first="#{cadGnlngmntBean.currentLine}">
<!-- propColumnGen -->
<h:column id="codf_tp">
<h:panelGroup id="pg_codf_tp_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_codf_tp"  value="#{Gnlngmnt.codf_tp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_lg">
<h:panelGroup id="pg_codf_lg_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_codf_lg"  value="#{Gnlngmnt.codf_lg}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_id">
<h:panelGroup id="pg_codf_id_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_codf_id"  value="#{Gnlngmnt.codf_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="codf_ds">
<h:panelGroup id="pg_codf_ds_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_codf_ds"  value="#{Gnlngmnt.codf_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgGnlngmnt" onmousedown="wtran='gnlngmntcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_codf_tp').innerHTML;valor2=el(aa+'sel_codf_lg').innerHTML;valor3=el(aa+'sel_codf_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Gnlngmnt.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- 333-->  <h:commandLink id="flag_imgrecd_wd" action="#{cadGnlngmntBean.doObternullSearchBack}" onmousedown="wtran='gnlngmntcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_codf_tp');valor2=rpel(aa+'sel_codf_lg');valor3=rpel(aa+'sel_codf_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadGnlngmntBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_codf_id');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
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
<td width="15" background="../imagens/thmeCodf/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeCodf/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeCodf/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeCodf/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Gnlngmnt" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadGnlngmntBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadGnlngmntBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_gnlngmnt" action="#{cadGnlngmntBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_gnlngmnt" action="#{cadGnlngmntBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
