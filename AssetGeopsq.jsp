<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetGeoBean");%>
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
<link rel="stylesheet" href="../AssetGeopsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetgeopsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_asset_tp_cfasttp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:asset_cd_cfinvty_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_asset_st_operacional_cfoperc_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_cfresid_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_trecho_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_subtrecho_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_cfreslc_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetGeoBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_date_start');helpcd='AssetGeoSfm';;tran='assetgeopsq'; vl='';cadbeanx='cadAssetGeoBean';<%session.setAttribute("tipo","assetgeopsq");%>">
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
<h:outputText value="#{cadAssetGeoBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadAssetGeoBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetGeoBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetGeoBean.hasPrevPage}" action="#{cadAssetGeoBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetGeoBean.hasNextPage}" action="#{cadAssetGeoBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadAssetGeoBean.doSelecionar}">
<f:param name="campo23" value=""/>
<f:param name="tipo" value="assetgeopsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadAssetGeoBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadAssetGeoBean.doLimparPesq}"/>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadAssetGeoBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovo('assetgeocad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetGeoBean.doNovo}">
</ps:psCommandLink>
<ps:psCommandLink id="aReportXls8" enabled="#{cadAssetGeoBean.canPesquisar}" title="#{iimsg.AssetGeo_AssetSuperReduced_xls_jasper_stb_tt}" ativo="../imagens/btXls.gif" action="#{cadAssetGeoBean.runXlsAssetSuperReduced_xls_jasper}">
<f:param name="report" value="false"/>
</ps:psCommandLink>
<ps:psCommandLink id="aReportXls9" enabled="#{cadAssetGeoBean.canPesquisar}" title="#{iimsg.AssetGeo_AssetSuperComplete_xls_jasper_stb_tt}" ativo="../imagens/btXls.gif" action="#{cadAssetGeoBean.runXlsAssetSuperComplete_xls_jasper}">
<f:param name="report" value="false"/>
</ps:psCommandLink>
<h:commandButton id="AssetAnttExpLeased" rendered="#{cadAssetGeoBean.canPesquisar}" title="#{iimsg.AssetGeo_AssetAnttExpLeased_tt}" image="../imagens/excellRed.jpg" action="#{cadAssetGeoBean.doAssetAnttExpLeased}"/>
<h:commandButton id="AssetAnttExpOwn" rendered="#{cadAssetGeoBean.canPesquisar}" title="#{iimsg.AssetGeo_AssetAnttExpOwn_tt}" image="../imagens/excellRed.jpg" action="#{cadAssetGeoBean.doAssetAnttExpOwn}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetSfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadAssetGeoBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetGeoBean.xhelp_rc}" />
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
<%@include file="AssetGeopsq_param.jsp"%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadAssetGeoBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadAssetGeoBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.tabs_vc_tt}" value="#{iimsg.tabs_vc_ta}"/>
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
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_images_ongrid_tt">
<h:outputText id="hd_asset_images_ongrid_tt_xide" title="#{iimsg.AssetGeo_asset_images_ongrid_tt}" value="#{iimsg.AssetGeo_asset_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_docs_ongrid_tt">
<h:outputText id="hd_asset_docs_ongrid_tt_xide" title="#{iimsg.AssetGeo_asset_docs_ongrid_tt}" value="#{iimsg.AssetGeo_asset_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_geo_ongrid_tt">
<h:outputText id="hd_asset_geo_ongrid_tt_xide" title="#{iimsg.AssetGeo_asset_geo_ongrid_tt}" value="#{iimsg.AssetGeo_asset_geo_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_asset_id_tt">
<h:outputText id="hd_asset_id_tt" title="#{iimsg.AssetGeo_asset_id_tt}" value="#{iimsg.AssetGeo_asset_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_cfasttp_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_cfasttp_tt">
<h:outputText id="hd_asset_tp_cfasttp_tt" title="#{iimsg.AssetGeo_asset_tp_cfasttp_tt}" value="#{iimsg.AssetGeo_asset_tp_cfasttp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_hierarquico_tt">
<h:outputText id="hd_asset_cd_hierarquico_tt_xide" title="#{iimsg.AssetGeo_asset_cd_hierarquico_tt}" value="#{iimsg.AssetGeo_asset_cd_hierarquico_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_cfinvty_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfinvty_tt">
<h:outputText id="hd_asset_cd_cfinvty_tt" title="#{iimsg.AssetGeo_asset_cd_cfinvty_tt}" value="#{iimsg.AssetGeo_asset_cd_cfinvty_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_st_operacional_cfoperc_tt">
<h:outputText id="hd_asset_st_operacional_cfoperc_tt" title="#{iimsg.AssetGeo_asset_st_operacional_cfoperc_tt}" value="#{iimsg.AssetGeo_asset_st_operacional_cfoperc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfresid_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfresid_tt">
<h:outputText id="hd_asset_cd_cfresid_tt" title="#{iimsg.AssetGeo_asset_cd_cfresid_tt}" value="#{iimsg.AssetGeo_asset_cd_cfresid_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_trecho_tt">
<h:outputText id="hd_asset_cd_trecho_tt" title="#{iimsg.AssetGeo_asset_cd_trecho_tt}" value="#{iimsg.AssetGeo_asset_cd_trecho_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_subtrecho_tt">
<h:outputText id="hd_asset_cd_subtrecho_tt" title="#{iimsg.AssetGeo_asset_cd_subtrecho_tt}" value="#{iimsg.AssetGeo_asset_cd_subtrecho_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<f:facet name="header">
<h:panelGroup id="pg_asset_km_ini_tt">
<h:outputText id="hd_asset_km_ini_tt_xide" title="#{iimsg.AssetGeo_asset_km_ini_tt}" value="#{iimsg.AssetGeo_asset_km_ini_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfreslc_tt">
<h:outputText id="hd_asset_cd_cfreslc_tt" title="#{iimsg.AssetGeo_asset_cd_cfreslc_tt}" value="#{iimsg.AssetGeo_asset_cd_cfreslc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
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
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAssetGeoBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtasset_images_ongrid">
<h:outputText id="bButtasset_images_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtasset_docs_ongrid">
<h:outputText id="bButtasset_docs_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="footer">
<h:panelGroup id="pButtasset_geo_ongrid">
<h:outputText id="bButtasset_geo_ongrid" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_id">
<h:inputText id="asset_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" value="#{cadAssetGeoBean.fil_asset_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_cfasttp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_tp_cfasttp">
<h:inputText id="fil_asset_tp_cfasttp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ASTTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_cd_hierarquico">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_cfinvty_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_cd_cfinvty">
<!--   // 444-->
<h:inputText id="asset_cd_cfinvty_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Invtypsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" value="#{cadAssetGeoBean.fil_asset_cd_cfinvty}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_st_operacional_cfoperc">
<h:inputText id="fil_asset_st_operacional_cfoperc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'OPERC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_st_operacional_cfoperc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfresid_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_cfresid">
<h:inputText id="fil_asset_cd_cfresid_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'RESID', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_cd_cfresid}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_trecho">
<h:inputText id="fil_asset_cd_trecho_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TRCHO', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();el('cadForm:dtDados_ft:fil_asset_cd_subtrecho_xfil').value='';" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_cd_trecho}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_subtrecho">
<h:inputText id="fil_asset_cd_subtrecho_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'SBTCH', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();el('cadForm:dtDados_ft:fil_asset_cd_trecho_xfil').value='';" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_cd_subtrecho}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_km_ini">
<h:inputText id="asset_km_ini_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_km_ini}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_cfreslc">
<h:inputText id="fil_asset_cd_cfreslc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'RESLC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetGeoBean.fil_asset_cd_cfreslc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:461px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadAssetGeoBean.pesqData}"
var="Asset"
binding="#{cadAssetGeoBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetGeoBean.pageLength}"
first="#{cadAssetGeoBean.currentLine}">
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgAssetGeo" onmousedown="wtran='assetgeocad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Asset.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:commandLink id="flag_imgrecd_wd" action="#{cadAssetGeoBean.doObternull}" onmousedown="wtran='assetgeocad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<h:panelGroup id="pg_asset_images_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_images_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="#{Asset.imag_im}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetgeopsq&tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<h:panelGroup id="pg_asset_docs_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="#{Asset.file_im}" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetgeopsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<h:panelGroup id="pg_asset_geo_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href=this.href+valor1+'&type=GM';">
<ps:psGraphicImage  flagType="geo" flag="#{Asset.geo_vx}" title="#{iimsg.AssetGeo_asset_geo_ongrid_tt}" styleClass="btp" />
</h:outputLink>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_id_fk">
<h:panelGroup id="pg_asset_id_sg">
<!--   // 333-->
<h:outputText id="sel_asset_id" value="#{Asset.asset_id}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_cfasttp">
<h:panelGroup id="pg_asset_tp_cfasttp_sg">
<h:outputText id="sel_asset_tp_cfasttp" title="#{Asset.asset_tp_cfasttp_desc}" value="#{Asset.asset_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<h:panelGroup id="pg_asset_cd_hierarquico_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_asset_cd_hierarquico"  value="#{Asset.asset_cd_hierarquico}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_cfinvty_fk">
<h:panelGroup id="pg_asset_cd_cfinvty_sg">
<!--   // 333-->
<h:outputText id="sel_asset_cd_cfinvty" value="#{Asset.asset_cd_cfinvty}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc">
<h:panelGroup id="pg_asset_st_operacional_cfoperc_sg">
<h:outputText id="sel_asset_st_operacional_cfoperc" title="#{Asset.asset_st_operacional_cfoperc_desc}" value="#{Asset.asset_st_operacional_cfoperc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfresid">
<h:panelGroup id="pg_asset_cd_cfresid_sg">
<h:outputText id="sel_asset_cd_cfresid" value="#{Asset.asset_cd_cfresid}"/>
<h:outputText value=" - "/>
<h:outputText id="asset_cd_cfresid_desc" value="#{Asset.asset_cd_cfresid_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho">
<h:panelGroup id="pg_asset_cd_trecho_sg">
<h:outputText id="sel_asset_cd_trecho" title="#{Asset.asset_cd_trecho_desc}" value="#{Asset.asset_cd_trecho}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho">
<h:panelGroup id="pg_asset_cd_subtrecho_sg">
<h:outputText id="sel_asset_cd_subtrecho" title="#{Asset.asset_cd_subtrecho_desc}" value="#{Asset.asset_cd_subtrecho}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<h:panelGroup id="pg_asset_km_ini_sg">
<!-- propColumnGen BigDecimal -->
<h:outputText id="sel_asset_km_ini" value="#{Asset.asset_km_ini_str}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc">
<h:panelGroup id="pg_asset_cd_cfreslc_sg">
<h:outputText id="sel_asset_cd_cfreslc" title="#{Asset.asset_cd_cfreslc_desc}" value="#{Asset.asset_cd_cfreslc}"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
<!-- Dados -->
</div>
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
<iframe id="AssetGeo" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Invty" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetGeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetGeoBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetgeo" action="#{cadAssetGeoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetgeo" action="#{cadAssetGeoBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
