<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadIxccustBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Ixccustpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("ixccustpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadIxccustBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='IxccustSfm';;tran='ixccustpsq'; vl='';cadbeanx='cadIxccustBean';<%session.setAttribute("tipo","ixccustpsq");%>">
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
<h:outputText value="#{cadIxccustBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadIxccustBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadIxccustBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadIxccustBean.hasPrevPage}" action="#{cadIxccustBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadIxccustBean.hasNextPage}" action="#{cadIxccustBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadIxccustBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadIxccustBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadIxccustBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadIxccustBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('ixccustcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadIxccustBean.doNovo}"/>
<%-- prop buttonLink 4577--%>
<h:commandButton id="XlsImport_xls_stb" rendered="#{cadIxccustBean.canPesquisar}" title="#{iimsg.Ixccust_XlsImport_xls_stb_tt}" image="../imagens/excellRed.jpg" onmousedown="fExecx('obxlsccustcad', tran, this.id, 'no', '', 'false');" action="#{cadObxlsCCustBean.doObternull}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadIxccustBean.canPesquisar}" title="#{iimsg.Ixccust_XlsExport_xls_stb_tt}" image="../imagens/btXls.gif" action="#{cadIxccustBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Ixccust');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpIxccustSfm" tabindex="-1" rendered="#{cadIxccustBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','IxccustSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadIxccustBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadIxccustBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadIxccustBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadIxccustBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="ccust_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_ccust_cd_tt">
<h:outputText id="hd_ccust_cd_tt" title="#{iimsg.Ixccust_ccust_cd_tt}" value="#{iimsg.Ixccust_ccust_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds">
<f:facet name="header">
<h:panelGroup id="pg_ccust_ds_tt">
<h:outputText id="hd_ccust_ds_tt_xide" title="#{iimsg.Ixccust_ccust_ds_tt}" value="#{iimsg.Ixccust_ccust_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_nv">
<f:facet name="header">
<h:panelGroup id="pg_ccust_nv_tt">
<h:outputText id="hd_ccust_nv_tt_xide" title="#{iimsg.Ixccust_ccust_nv_tt}" value="#{iimsg.Ixccust_ccust_nv_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="ccust_cd_pai_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_ccust_cd_pai_tt">
<h:outputText id="hd_ccust_cd_pai_tt" title="#{iimsg.Ixccust_ccust_cd_pai_tt}" value="#{iimsg.Ixccust_ccust_cd_pai_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds_pai">
<f:facet name="header">
<h:panelGroup id="pg_ccust_ds_pai_tt">
<h:outputText id="hd_ccust_ds_pai_tt_xide" title="#{iimsg.Ixccust_ccust_ds_pai_tt}" value="#{iimsg.Ixccust_ccust_ds_pai_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_cd_bloqueio">
<f:facet name="header">
<h:panelGroup id="pg_ccust_cd_bloqueio_tt">
<h:outputText id="hd_ccust_cd_bloqueio_tt_xide" title="#{iimsg.Ixccust_ccust_cd_bloqueio_tt}" value="#{iimsg.Ixccust_ccust_cd_bloqueio_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="batch_id">
<f:facet name="header">
<h:panelGroup id="pg_batch_id_tt">
<h:outputText id="hd_batch_id_tt_xide" title="#{iimsg.Ixccust_batch_id_tt}" value="#{iimsg.Ixccust_batch_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Ixccust_tabs_vc_tt}" value="#{iimsg.Ixccust_tabs_vc_ta}"/>
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
<h:column rendered="#{cadIxccustBean.assist}">
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
<h:column id="ccust_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_cd">
<h:inputText id="ccust_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIxccustBean.fil_ccust_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_ds">
<h:inputText id="ccust_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_ccust_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_nv">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_nv">
<h:inputText id="ccust_nv_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_ccust_nv}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="ccust_cd_pai_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_cd_pai">
<!--   // 444-->
<h:inputText id="ccust_cd_pai_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Ixccustpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadIxccustBean.fil_ccust_cd_pai}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds_pai">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_ds_pai">
<h:inputText id="ccust_ds_pai_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_ccust_ds_pai}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_cd_bloqueio">
<f:facet name="footer">
<h:panelGroup id="fpg_ccust_cd_bloqueio">
<h:inputText id="ccust_cd_bloqueio_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_ccust_cd_bloqueio}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="batch_id">
<f:facet name="footer">
<h:panelGroup id="fpg_batch_id">
<h:inputText id="batch_id_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_batch_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadIxccustBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadIxccustBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadIxccustBean.pesqData}"
var="Ixccust"
binding="#{cadIxccustBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadIxccustBean.pageLength}"
first="#{cadIxccustBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="ccust_cd_fk">
<h:panelGroup id="pg_ccust_cd_sg">
<!--   // 333-->
<h:outputLabel id="sel_ccust_cd" onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds">
<h:panelGroup id="pg_ccust_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_ccust_ds"  onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_nv">
<h:panelGroup id="pg_ccust_nv_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_ccust_nv"  onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_nv}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="ccust_cd_pai_fk">
<h:panelGroup id="pg_ccust_cd_pai_sg">
<!--   // 333-->
<h:outputLabel id="sel_ccust_cd_pai" onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_cd_pai}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_ds_pai">
<h:panelGroup id="pg_ccust_ds_pai_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_ccust_ds_pai"  onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_ds_pai}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="ccust_cd_bloqueio">
<h:panelGroup id="pg_ccust_cd_bloqueio_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_ccust_cd_bloqueio"  onclick="slvl(this.id,this.value);" value="#{Ixccust.ccust_cd_bloqueio}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="batch_id">
<h:panelGroup id="pg_batch_id_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_batch_id"  onclick="slvl(this.id,this.value);" value="#{Ixccust.batch_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgIxccust" onmousedown="wtran='ixccustcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_ccust_cd').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Ixccust.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadIxccustBean.doObternullSearchBack}" onmousedown="wtran='ixccustcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_ccust_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadIxccustBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_ccust_cd');desc=rel(aa+'sel_ccust_ds');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="ObxlsCCust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadIxccustBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xrec_obxlsccust" action="#{cadObxlsCCustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obxlsccust" action="#{cadObxlsCCustBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>