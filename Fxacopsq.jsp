<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadFxacoBean");%>
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
<link rel="stylesheet" href="../Fxacopsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("fxacopsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fxaco_cd_solic_de_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fxaco_cd_solic_para_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadFxacoBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='FxacoSfm';;tran='fxacopsq'; vl='';cadbeanx='cadFxacoBean';<%session.setAttribute("tipo","fxacopsq");%>">
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
<h:outputText value="#{cadFxacoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadFxacoBean.hasPrevPage}" action="#{cadFxacoBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadFxacoBean.hasNextPage}" action="#{cadFxacoBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadFxacoBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadFxacoBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadFxacoBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadFxacoBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('fxacocad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadFxacoBean.doObterParentForCancel}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadFxacoBean.canPesquisar}" title="#{iimsg.Fxaco_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadFxacoBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Fxaco');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpFxacoSfm" tabindex="-1" rendered="#{cadFxacoBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','FxacoSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadFxacoBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadFxacoBean.xhelp_rc}" />
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
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_fxaco_cd_fxprs" for="fxaco_cd_fxprs"  title="#{iimsg.Fxaco_fxaco_cd_fxprs_tt}"  value="#{iimsg.Fxaco_fxaco_cd_fxprs_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="fxaco_cd_fxprs" tabindex="-1" readonly="true" value="#{cadFxacoBean.fxaco_cd_fxprs}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="fxaco_cd_fxprs_desc" value="#{cadFxacoBean.fxaco_cd_fxprs_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadFxacoBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadFxacoBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<!-- propColumnGen -->
<h:column id="fxaco_sx">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_sx_tt">
<h:outputText id="hd_fxaco_sx_tt_xide" title="#{iimsg.Fxaco_fxaco_sx_tt}" value="#{iimsg.Fxaco_fxaco_sx_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_cd">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_cd_tt">
<h:outputText id="hd_fxaco_cd_tt_xide" title="#{iimsg.Fxaco_fxaco_cd_tt}" value="#{iimsg.Fxaco_fxaco_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_ds_tt">
<h:outputText id="hd_fxaco_ds_tt_xide" title="#{iimsg.Fxaco_fxaco_ds_tt}" value="#{iimsg.Fxaco_fxaco_ds_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_de_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_cd_solic_de_tt">
<h:outputText id="hd_fxaco_cd_solic_de_tt" title="#{iimsg.Fxaco_fxaco_cd_solic_de_tt}" value="#{iimsg.Fxaco_fxaco_cd_solic_de_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_para_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_cd_solic_para_tt">
<h:outputText id="hd_fxaco_cd_solic_para_tt" title="#{iimsg.Fxaco_fxaco_cd_solic_para_tt}" value="#{iimsg.Fxaco_fxaco_cd_solic_para_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds_fluxo">
<f:facet name="header">
<h:panelGroup id="pg_fxaco_ds_fluxo_tt">
<h:outputText id="hd_fxaco_ds_fluxo_tt_xide" title="#{iimsg.Fxaco_fxaco_ds_fluxo_tt}" value="#{iimsg.Fxaco_fxaco_ds_fluxo_ta}"/>
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
<!-- propColumnGen -->
<h:column id="fxaco_sx">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_sx">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_cd">
<h:inputText id="fxaco_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadFxacoBean.fil_fxaco_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_ds">
<h:inputText id="fxaco_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadFxacoBean.fil_fxaco_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_de_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_cd_solic_de">
<!--   // 444-->
<h:inputText id="fxaco_cd_solic_de_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solicpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadFxacoBean.fil_fxaco_cd_solic_de}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_para_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_cd_solic_para">
<!--   // 444-->
<h:inputText id="fxaco_cd_solic_para_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solicpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadFxacoBean.fil_fxaco_cd_solic_para}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds_fluxo">
<f:facet name="footer">
<h:panelGroup id="fpg_fxaco_ds_fluxo">
<h:inputText id="fxaco_ds_fluxo_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadFxacoBean.fil_fxaco_ds_fluxo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadFxacoBean.pesqData}"
var="Fxaco"
binding="#{cadFxacoBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadFxacoBean.pageLength}"
first="#{cadFxacoBean.currentLine}">
<!-- propColumnGen -->
<h:column id="fxaco_sx">
<h:panelGroup id="pg_fxaco_sx_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_fxaco_sx"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_sx}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_cd">
<h:panelGroup id="pg_fxaco_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_fxaco_cd"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds">
<h:panelGroup id="pg_fxaco_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_fxaco_ds"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_ds}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_de_fk">
<h:panelGroup id="pg_fxaco_cd_solic_de_sg">
<!--   // 000-->
<!--   // 111-->
<h:outputLabel id="sel_fxaco_cd_solic_de"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_cd_solic_de}"/>
<!--   // fk desc -->
<h:outputText id="sel_fxaco_cd_solic_de_desc" value="#{Fxaco.fxaco_cd_solic_de_desc}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="fxaco_cd_solic_para_fk">
<h:panelGroup id="pg_fxaco_cd_solic_para_sg">
<!--   // 000-->
<!--   // 111-->
<h:outputLabel id="sel_fxaco_cd_solic_para"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_cd_solic_para}"/>
<!--   // fk desc -->
<h:outputText id="sel_fxaco_cd_solic_para_desc" value="#{Fxaco.fxaco_cd_solic_para_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="fxaco_ds_fluxo">
<h:panelGroup id="pg_fxaco_ds_fluxo_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_fxaco_ds_fluxo"  onclick="slvl(this.id,this.value);" value="#{Fxaco.fxaco_ds_fluxo}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_fxaco_cd_fxprs" value="#{Fxaco.fxaco_cd_fxprs}"/>
<h:inputHidden id="sel_fxaco_sq" value="#{Fxaco.fxaco_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadFxacoBean.doObternullSearchBack}" onmousedown="wtran='fxacocad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_fxaco_cd_fxprs');valor2=rpel(aa+'sel_fxaco_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
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
<iframe id="Fxaco" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsFxaco" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadFxacoBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_fxaco" action="#{cadFxacoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_fxaco" action="#{cadFxacoBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obxlsfxaco" action="#{cadObxlsFxacoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obxlsfxaco" action="#{cadObxlsFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsfxaco" action="#{cadObxlsFxacoBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_fxprs" action="#{cadFxprsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_fxprs" action="#{cadFxprsBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
