<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObdocrbBean");%>
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
<link rel="stylesheet" href="../Obdocrbpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obdocrbpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_obdocrb_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obdocrb_cd_app_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obdocrb_cd_assunto_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObdocrbBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObdocrbSfm';;tran='obdocrbpsq'; vl='';cadbeanx='cadObdocrbBean';<%session.setAttribute("tipo","obdocrbpsq");%>">
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
<h:outputText value="#{cadObdocrbBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadObdocrbBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObdocrbBean.hasPrevPage}" action="#{cadObdocrbBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObdocrbBean.hasNextPage}" action="#{cadObdocrbBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObdocrbBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObdocrbBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObdocrbBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadObdocrbBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('obdocrbcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadObdocrbBean.doNovoUpload}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obdocrb');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObdocrbSfm" tabindex="-1" rendered="#{cadObdocrbBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObdocrbSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObdocrbBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObdocrbBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadObdocrbBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObdocrbBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="obdocrb_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocrb_tp_tt">
<h:outputText id="hd_obdocrb_tp_tt" title="#{iimsg.Obdocrb_obdocrb_tp_tt}" value="#{iimsg.Obdocrb_obdocrb_tp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_app_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocrb_cd_app_tt">
<h:outputText id="hd_obdocrb_cd_app_tt" title="#{iimsg.Obdocrb_obdocrb_cd_app_tt}" value="#{iimsg.Obdocrb_obdocrb_cd_app_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_assunto_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocrb_cd_assunto_tt">
<h:outputText id="hd_obdocrb_cd_assunto_tt" title="#{iimsg.Obdocrb_obdocrb_cd_assunto_tt}" value="#{iimsg.Obdocrb_obdocrb_cd_assunto_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_nm_file">
<f:facet name="header">
<h:panelGroup id="pg_obdocrb_nm_file_tt">
<h:outputText id="hd_obdocrb_nm_file_tt_xide" title="#{iimsg.Obdocrb_obdocrb_nm_file_tt}" value="#{iimsg.Obdocrb_obdocrb_nm_file_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_cd">
<f:facet name="header">
<h:panelGroup id="pg_obdocrb_cd_tt">
<h:outputText id="hd_obdocrb_cd_tt_xide" title="#{iimsg.Obdocrb_obdocrb_cd_tt}" value="#{iimsg.Obdocrb_obdocrb_cd_tt}"/>
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
<h:column id="obdocrb_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocrb_tp">
<h:inputText id="fil_obdocrb_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'DOCTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocrbBean.fil_obdocrb_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_app_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocrb_cd_app">
<h:inputText id="fil_obdocrb_cd_app_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPAPP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocrbBean.fil_obdocrb_cd_app}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_assunto_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocrb_cd_assunto">
<h:inputText id="fil_obdocrb_cd_assunto_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPAST', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocrbBean.fil_obdocrb_cd_assunto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_nm_file">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocrb_nm_file">
<h:inputText id="obdocrb_nm_file_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocrbBean.fil_obdocrb_nm_file}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocrb_cd">
<h:inputText id="obdocrb_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocrbBean.fil_obdocrb_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadObdocrbBean.pesqData}"
var="Obdocrb"
binding="#{cadObdocrbBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObdocrbBean.pageLength}"
first="#{cadObdocrbBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="obdocrb_tp">
<h:panelGroup id="pg_obdocrb_tp_sg">
<h:outputLabel id="sel_obdocrb_tp" onclick="slvlcd(this.id,this.value);" value="#{Obdocrb.obdocrb_tp}"/>
<h:outputText id="obdocrb_tp_desc" value="#{Obdocrb.obdocrb_tp_desc}"/>
<h:inputHidden id="sel_obdocrb_cd_area" value="#{Obdocrb.obdocrb_cd_area}"/>
<h:inputHidden id="sel_obdocrb_tp_cfasttp" value="#{Obdocrb.obdocrb_tp_cfasttp}"/>
<h:inputHidden id="sel_obdocrb_ct" value="#{Obdocrb.obdocrb_ct}"/>
<h:inputHidden id="sel_obdocrb_tp_arquivo" value="#{Obdocrb.obdocrb_tp_arquivo}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_app">
<h:panelGroup id="pg_obdocrb_cd_app_sg">
<h:outputLabel id="sel_obdocrb_cd_app" onclick="slvlcd(this.id,this.value);" value="#{Obdocrb.obdocrb_cd_app}"/>
<h:outputText id="obdocrb_cd_app_desc" value="#{Obdocrb.obdocrb_cd_app_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocrb_cd_assunto">
<h:panelGroup id="pg_obdocrb_cd_assunto_sg">
<h:outputLabel id="sel_obdocrb_cd_assunto" onclick="slvlcd(this.id,this.value);" value="#{Obdocrb.obdocrb_cd_assunto}"/>
<h:outputText id="obdocrb_cd_assunto_desc" value="#{Obdocrb.obdocrb_cd_assunto_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_nm_file">
<h:panelGroup id="pg_obdocrb_nm_file_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocrb_nm_file"  onclick="slvl(this.id,this.value);" value="#{Obdocrb.obdocrb_nm_file}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocrb_cd">
<h:panelGroup id="pg_obdocrb_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocrb_cd"  onclick="slvl(this.id,this.value);" value="#{Obdocrb.obdocrb_cd}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obdocrb_id" value="#{Obdocrb.obdocrb_id}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObdocrbBean.doObternullSearchBack}" onmousedown="wtran='obdocrbcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obdocrb_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="Obdocrb" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadObdocrbBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObdocrbBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obdocrb" action="#{cadObdocrbBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdocrb" action="#{cadObdocrbBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
