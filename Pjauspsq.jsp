<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjausBean");%>
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
<link rel="stylesheet" href="../Pjauspsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../Pjausfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("pjauspsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_pjaus_st_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:pjaus_id_solicitante_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_pjaus_in_ocup_area_terc_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_tp_investimento1_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_tp_investimento_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_tp_contrapartida_fin_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_in_parc_fixa_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjaus_tp_fonte_recursos_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadPjausBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='PjausSfm';;tran='pjauspsq'; vl='';cadbeanx='cadPjausBean';<%session.setAttribute("tipo","pjauspsq");%>">
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
<h:outputText value="#{cadPjausBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadPjausBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjausBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadPjausBean.hasPrevPage}" action="#{cadPjausBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadPjausBean.hasNextPage}" action="#{cadPjausBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadPjausBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadPjausBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadPjausBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadPjausBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovo('pjauscad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadPjausBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjaus');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudImgdcSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjausSfm" tabindex="-1" rendered="#{cadPjausBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','PjausSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadPjausBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjausBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadPjausBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadPjausBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_images_ongrid_tt">
<h:outputText id="hd_pjaus_images_ongrid_tt_xide" title="#{iimsg.Pjaus_pjaus_images_ongrid_tt}" value="#{iimsg.Pjaus_pjaus_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_docs_ongrid_tt">
<h:outputText id="hd_pjaus_docs_ongrid_tt_xide" title="#{iimsg.Pjaus_pjaus_docs_ongrid_tt}" value="#{iimsg.Pjaus_pjaus_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_id_tt">
<h:outputText id="hd_pjaus_id_tt" title="#{iimsg.Pjaus_pjaus_id_tt}" value="#{iimsg.Pjaus_pjaus_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_pasta">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_nu_pasta_tt">
<h:outputText id="hd_pjaus_nu_pasta_tt_xide" title="#{iimsg.Pjaus_pjaus_nu_pasta_tt}" value="#{iimsg.Pjaus_pjaus_nu_pasta_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_base_dados">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_nu_base_dados_tt">
<h:outputText id="hd_pjaus_nu_base_dados_tt_xide" title="#{iimsg.Pjaus_pjaus_nu_base_dados_tt}" value="#{iimsg.Pjaus_pjaus_nu_base_dados_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_cd_proprio_pj">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_cd_proprio_pj_tt">
<h:outputText id="hd_pjaus_cd_proprio_pj_tt_xide" title="#{iimsg.Pjaus_pjaus_cd_proprio_pj_tt}" value="#{iimsg.Pjaus_pjaus_cd_proprio_pj_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_st_tt">
<h:outputText id="hd_pjaus_st_tt" title="#{iimsg.Pjaus_pjaus_st_tt}" value="#{iimsg.Pjaus_pjaus_st_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_id_solicitante_tt">
<h:outputText id="hd_pjaus_id_solicitante_tt" title="#{iimsg.Pjaus_pjaus_id_solicitante_tt}" value="#{iimsg.Pjaus_pjaus_id_solicitante_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_ocup_area_terc_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_in_ocup_area_terc_tt">
<h:outputText id="hd_pjaus_in_ocup_area_terc_tt" title="#{iimsg.Pjaus_pjaus_in_ocup_area_terc_tt}" value="#{iimsg.Pjaus_pjaus_in_ocup_area_terc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento1_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_tp_investimento1_tt">
<h:outputText id="hd_pjaus_tp_investimento1_tt" title="#{iimsg.Pjaus_pjaus_tp_investimento1_tt}" value="#{iimsg.Pjaus_pjaus_tp_investimento1_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_tp_investimento_tt">
<h:outputText id="hd_pjaus_tp_investimento_tt" title="#{iimsg.Pjaus_pjaus_tp_investimento_tt}" value="#{iimsg.Pjaus_pjaus_tp_investimento_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_contrapartida_fin_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_tp_contrapartida_fin_tt">
<h:outputText id="hd_pjaus_tp_contrapartida_fin_tt" title="#{iimsg.Pjaus_pjaus_tp_contrapartida_fin_tt}" value="#{iimsg.Pjaus_pjaus_tp_contrapartida_fin_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_vl_contrato">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_vl_contrato_tt">
<h:outputText id="hd_pjaus_vl_contrato_tt_xide" title="#{iimsg.Pjaus_pjaus_vl_contrato_tt}" value="#{iimsg.Pjaus_pjaus_vl_contrato_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_parc_fixa_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_in_parc_fixa_tt">
<h:outputText id="hd_pjaus_in_parc_fixa_tt" title="#{iimsg.Pjaus_pjaus_in_parc_fixa_tt}" value="#{iimsg.Pjaus_pjaus_in_parc_fixa_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_fonte_recursos_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjaus_tp_fonte_recursos_tt">
<h:outputText id="hd_pjaus_tp_fonte_recursos_tt" title="#{iimsg.Pjaus_pjaus_tp_fonte_recursos_tt}" value="#{iimsg.Pjaus_pjaus_tp_fonte_recursos_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Pjaus_tabs_vc_tt}" value="#{iimsg.Pjaus_tabs_vc_ta}"/>
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
<h:column rendered="#{cadPjausBean.assist}">
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
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_images_ongrid">
<h:outputText id="bButtpjaus_images_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docs_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtpjaus_docs_ongrid">
<h:outputText id="bButtpjaus_docs_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_id">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_pasta">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_nu_pasta">
<h:inputText id="pjaus_nu_pasta_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausBean.fil_pjaus_nu_pasta}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_base_dados">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_nu_base_dados">
<h:inputText id="pjaus_nu_base_dados_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausBean.fil_pjaus_nu_base_dados}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_cd_proprio_pj">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_cd_proprio_pj">
<h:inputText id="pjaus_cd_proprio_pj_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausBean.fil_pjaus_cd_proprio_pj}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_st">
<h:inputText id="fil_pjaus_st_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STPRJ', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_id_solicitante">
<!--   // 444-->
<h:inputText id="pjaus_id_solicitante_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('solicpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_id_solicitante}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_ocup_area_terc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_in_ocup_area_terc">
<h:inputText id="fil_pjaus_in_ocup_area_terc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GENYN', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_in_ocup_area_terc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento1_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_tp_investimento1">
<h:inputText id="fil_pjaus_tp_investimento1_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPINV', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_tp_investimento1}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_tp_investimento">
<h:inputText id="fil_pjaus_tp_investimento_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPIVT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_tp_investimento}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_contrapartida_fin_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_tp_contrapartida_fin">
<h:inputText id="fil_pjaus_tp_contrapartida_fin_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPCPF', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_tp_contrapartida_fin}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_vl_contrato">
<f:facet name="footer">
<h:panelGroup id="fpg_pjaus_vl_contrato">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_parc_fixa_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_in_parc_fixa">
<h:inputText id="fil_pjaus_in_parc_fixa_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'SNNAP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_in_parc_fixa}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_fonte_recursos_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjaus_tp_fonte_recursos">
<h:inputText id="fil_pjaus_tp_fonte_recursos_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPFRS', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjausBean.fil_pjaus_tp_fonte_recursos}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjausBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadPjausBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:301px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadPjausBean.pesqData}"
var="Pjaus"
binding="#{cadPjausBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadPjausBean.pageLength}"
first="#{cadPjausBean.currentLine}">
<!-- buttonOpenTransGen -->
<h:column id="pjaus_images_ongrid_bt">
<h:panelGroup id="pg_pjaus_images_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_images_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_images_ongrid" action="#{cadObimgpjBean.doObternull}"  image="#{Pjaus.imag_im}"  onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_images_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspsq&tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="pjaus_docs_ongrid_bt">
<h:panelGroup id="pg_pjaus_docs_ongrid_bt">
<h:inputHidden id="sel_pjaus_idpjaus_docs_ongrid_bt" value="#{Pjaus.pjaus_id}"/>
<h:commandButton id="flag_imgrecd_wd_pjaus_docs_ongrid" action="#{cadObdocpjBean.doSelecionar}" image="#{Pjaus.obdocpj_im}"  onmousedown="wtran='obdocpjpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_idpjaus_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_fk">
<h:panelGroup id="pg_pjaus_id_sg">
<!--   // 333-->
<h:outputLabel id="sel_pjaus_id" onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_pasta">
<h:panelGroup id="pg_pjaus_nu_pasta_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjaus_nu_pasta"  onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_nu_pasta}"/>
<h:inputHidden id="sel_pjaus_tp" value="#{Pjaus.pjaus_tp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_nu_base_dados">
<h:panelGroup id="pg_pjaus_nu_base_dados_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjaus_nu_base_dados"  onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_nu_base_dados}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_cd_proprio_pj">
<h:panelGroup id="pg_pjaus_cd_proprio_pj_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjaus_cd_proprio_pj"  onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_cd_proprio_pj}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_st">
<h:panelGroup id="pg_pjaus_st_sg">
<h:outputLabel id="sel_pjaus_st" title="#{Pjaus.pjaus_st_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_st}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="pjaus_id_solicitante_fk">
<h:panelGroup id="pg_pjaus_id_solicitante_sg">
<!--   // 333-->
<h:outputLabel id="sel_pjaus_id_solicitante" onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_id_solicitante}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_ocup_area_terc">
<h:panelGroup id="pg_pjaus_in_ocup_area_terc_sg">
<h:outputLabel id="sel_pjaus_in_ocup_area_terc" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_in_ocup_area_terc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento1">
<h:panelGroup id="pg_pjaus_tp_investimento1_sg">
<h:outputLabel id="sel_pjaus_tp_investimento1" title="#{Pjaus.pjaus_tp_investimento1_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_tp_investimento1}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_investimento">
<h:panelGroup id="pg_pjaus_tp_investimento_sg">
<h:outputLabel id="sel_pjaus_tp_investimento" title="#{Pjaus.pjaus_tp_investimento_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_tp_investimento}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_contrapartida_fin">
<h:panelGroup id="pg_pjaus_tp_contrapartida_fin_sg">
<h:outputLabel id="sel_pjaus_tp_contrapartida_fin" title="#{Pjaus.pjaus_tp_contrapartida_fin_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_tp_contrapartida_fin}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjaus_vl_contrato">
<h:panelGroup id="pg_pjaus_vl_contrato_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_pjaus_vl_contrato" onclick="slvl(this.id,this.value);" value="#{Pjaus.pjaus_vl_contrato_str}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_in_parc_fixa">
<h:panelGroup id="pg_pjaus_in_parc_fixa_sg">
<h:outputLabel id="sel_pjaus_in_parc_fixa" title="#{Pjaus.pjaus_in_parc_fixa_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_in_parc_fixa}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjaus_tp_fonte_recursos">
<h:panelGroup id="pg_pjaus_tp_fonte_recursos_sg">
<h:outputLabel id="sel_pjaus_tp_fonte_recursos" title="#{Pjaus.pjaus_tp_fonte_recursos_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjaus.pjaus_tp_fonte_recursos}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgPjaus" onmousedown="wtran='pjauscad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjaus_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Pjaus.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadPjausBean.doObternull}" onmousedown="wtran='pjauscad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_pjaus_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadPjausBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_pjaus_id');desc=rel(aa+'sel_pjaus_nu_pasta');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Pjaus" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimgpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpj" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsoengha" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsoinfra" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsomambt" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsofbrot" width="0" height="0" frameborder="0"> </iframe>
<iframe id="pjhsooutrs" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadPjausBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- superType commandLinks -->
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_obimgpj" action="#{cadObimgpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpj" action="#{cadObdocpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solic" action="#{cadSolicBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solic" action="#{cadSolicBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsp" action="#{cadPjhspBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsp" action="#{cadPjhspBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsoengha" action="#{cadPjhsoenghaBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsoengha" action="#{cadPjhsoenghaBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsoinfra" action="#{cadPjhsoinfraBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsoinfra" action="#{cadPjhsoinfraBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsomambt" action="#{cadPjhsomambtBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsomambt" action="#{cadPjhsomambtBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsofbrot" action="#{cadPjhsofbrotBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsofbrot" action="#{cadPjhsofbrotBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_pjhsooutrs" action="#{cadPjhsooutrsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsooutrs" action="#{cadPjhsooutrsBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
