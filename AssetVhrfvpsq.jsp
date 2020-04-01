<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetVhrfvBean");%>
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
<link rel="stylesheet" href="../AssetVhrfvpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetvhrfvpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetVhrfvBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_asset_nu_ident');helpcd='AssetVhrfvSfm';;tran='assetvhrfvpsq'; vl='';cadbeanx='cadAssetVhrfvBean';<%session.setAttribute("tipo","assetvhrfvpsq");%>">
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
<h:outputText value="#{cadAssetVhrfvBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetVhrfvBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetVhrfvBean.hasPrevPage}" action="#{cadAssetVhrfvBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetVhrfvBean.hasNextPage}" action="#{cadAssetVhrfvBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadAssetVhrfvBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadAssetVhrfvBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadAssetVhrfvBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadAssetVhrfvBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('assetvhrfvcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetVhrfvBean.doNovo}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadAssetVhrfvBean.canPesquisar}" title="#{iimsg.AssetVhrfv_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadAssetVhrfvBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetComRollsSfm" tabindex="-1" rendered="#{cadAssetVhrfvBean.hasHelpComSfm}" immediate="true" title="#{iimsg.botao_help_com}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetComRollsSfm');" image="../imagens/btHelpCom.gif"/>
<h:commandButton id="aHelpAssetRollsSfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetRollsSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadAssetVhrfvBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetVhrfvBean.xhelp_rc}" />
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
<%@include file="AssetVhrfvpsq_param.jsp"%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadAssetVhrfvBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadAssetVhrfvBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="asset_nu_ident">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_ident_tt">
<h:outputText id="hd_asset_nu_ident_tt_xide" title="#{iimsg.AssetVhrfv_asset_nu_ident_tt}" value="#{iimsg.AssetVhrfv_asset_nu_ident_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_tt">
<h:outputText id="hd_asset_nu_tt_xide" title="#{iimsg.AssetVhrfv_asset_nu_tt}" value="#{iimsg.AssetVhrfv_asset_nu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_vhpax_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_vhpax_tt">
<h:outputText id="hd_asset_tp_vhpax_tt" title="#{iimsg.AssetVhrfv_asset_tp_vhpax_tt}" value="#{iimsg.AssetVhrfv_asset_tp_vhpax_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_serie">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_serie_tt">
<h:outputText id="hd_asset_cd_serie_tt_xide" title="#{iimsg.AssetVhrfv_asset_cd_serie_tt}" value="#{iimsg.AssetVhrfv_asset_cd_serie_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_propriedade_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_propriedade_tt">
<h:outputText id="hd_asset_tp_propriedade_tt" title="#{iimsg.AssetVhrfv_asset_tp_propriedade_tt}" value="#{iimsg.AssetVhrfv_asset_tp_propriedade_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_corredor_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_corredor_tt">
<h:outputText id="hd_asset_cd_corredor_tt" title="#{iimsg.AssetVhrfv_asset_cd_corredor_tt}" value="#{iimsg.AssetVhrfv_asset_cd_corredor_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_px_local_vistoria_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_px_local_vistoria_tt">
<h:outputText id="hd_asset_px_local_vistoria_tt" title="#{iimsg.AssetVhrfv_asset_px_local_vistoria_tt}" value="#{iimsg.AssetVhrfv_asset_px_local_vistoria_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<f:facet name="header">
<h:panelGroup id="pg_asset_dt_vistoria_tt">
<h:outputText id="hd_asset_dt_vistoria_tt_xide" title="#{iimsg.AssetVhrfv_asset_dt_vistoria_tt}" value="#{iimsg.AssetVhrfv_asset_dt_vistoria_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_imobilizado">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_imobilizado_tt">
<h:outputText id="hd_asset_nu_imobilizado_tt_xide" title="#{iimsg.AssetVhrfv_asset_nu_imobilizado_tt}" value="#{iimsg.AssetVhrfv_asset_nu_imobilizado_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_plaqueta_erp">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_plaqueta_erp_tt">
<h:outputText id="hd_asset_cd_plaqueta_erp_tt_xide" title="#{iimsg.AssetVhrfv_asset_cd_plaqueta_erp_tt}" value="#{iimsg.AssetVhrfv_asset_cd_plaqueta_erp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_proprietaria_erp">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_proprietaria_erp_tt">
<h:outputText id="hd_asset_cd_proprietaria_erp_tt_xide" title="#{iimsg.AssetVhrfv_asset_cd_proprietaria_erp_tt}" value="#{iimsg.AssetVhrfv_asset_cd_proprietaria_erp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_aquisicao">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_aquisicao_tt">
<h:outputText id="hd_asset_vl_aquisicao_tt_xide" title="#{iimsg.AssetVhrfv_asset_vl_aquisicao_tt}" value="#{iimsg.AssetVhrfv_asset_vl_aquisicao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_mensal">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_deprec_mensal_tt">
<h:outputText id="hd_asset_vl_deprec_mensal_tt_xide" title="#{iimsg.AssetVhrfv_asset_vl_deprec_mensal_tt}" value="#{iimsg.AssetVhrfv_asset_vl_deprec_mensal_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_acumulada">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_deprec_acumulada_tt">
<h:outputText id="hd_asset_vl_deprec_acumulada_tt_xide" title="#{iimsg.AssetVhrfv_asset_vl_deprec_acumulada_tt}" value="#{iimsg.AssetVhrfv_asset_vl_deprec_acumulada_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_contabil">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_contabil_tt">
<h:outputText id="hd_asset_vl_contabil_tt_xide" title="#{iimsg.AssetVhrfv_asset_vl_contabil_tt}" value="#{iimsg.AssetVhrfv_asset_vl_contabil_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_images_ongrid_tt">
<h:outputText id="hd_asset_images_ongrid_tt_xide" title="#{iimsg.AssetVhrfv_asset_images_ongrid_tt}" value="#{iimsg.AssetVhrfv_asset_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_docs_ongrid_tt">
<h:outputText id="hd_asset_docs_ongrid_tt_xide" title="#{iimsg.AssetVhrfv_asset_docs_ongrid_tt}" value="#{iimsg.AssetVhrfv_asset_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_geo_ongrid_tt">
<h:outputText id="hd_asset_geo_ongrid_tt_xide" title="#{iimsg.AssetVhrfv_asset_geo_ongrid_tt}" value="#{iimsg.AssetVhrfv_asset_geo_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.AssetVhrfv_tabs_vc_tt}" value="#{iimsg.AssetVhrfv_tabs_vc_ta}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:461px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadAssetVhrfvBean.pesqData}"
var="Asset"
binding="#{cadAssetVhrfvBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetVhrfvBean.pageLength}"
first="#{cadAssetVhrfvBean.currentLine}">
<!-- propColumnGen -->
<h:column id="asset_nu_ident">
<h:panelGroup id="pg_asset_nu_ident_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_ident"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu_ident}"/>
<h:inputHidden id="sel_asset_tp_cfasttp" value="#{Asset.asset_tp_cfasttp}"/>
<h:inputHidden id="sel_asset_cd_cfinvty" value="#{Asset.asset_cd_cfinvty}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<h:panelGroup id="pg_asset_nu_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_vhpax">
<h:panelGroup id="pg_asset_tp_vhpax_sg">
<h:outputLabel id="sel_asset_tp_vhpax" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_vhpax}"/>
<h:outputText id="asset_tp_vhpax_desc" value="#{Asset.asset_tp_vhpax_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_serie">
<h:panelGroup id="pg_asset_cd_serie_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_cd_serie"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_cd_serie}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_propriedade">
<h:panelGroup id="pg_asset_tp_propriedade_sg">
<h:outputLabel id="sel_asset_tp_propriedade" title="#{Asset.asset_tp_propriedade_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_tp_propriedade}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_corredor">
<h:panelGroup id="pg_asset_cd_corredor_sg">
<h:outputLabel id="sel_asset_cd_corredor" title="#{Asset.asset_cd_corredor_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_corredor}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_px_local_vistoria">
<h:panelGroup id="pg_asset_px_local_vistoria_sg">
<h:outputLabel id="sel_asset_px_local_vistoria" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_px_local_vistoria}"/>
<h:outputText id="asset_px_local_vistoria_desc" value="#{Asset.asset_px_local_vistoria_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<h:panelGroup id="pg_asset_dt_vistoria_sg">
<h:outputText id="sel_asset_dt_vistoria" value="#{Asset.asset_dt_vistoria_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_imobilizado">
<h:panelGroup id="pg_asset_nu_imobilizado_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_imobilizado"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu_imobilizado}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_plaqueta_erp">
<h:panelGroup id="pg_asset_cd_plaqueta_erp_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_cd_plaqueta_erp"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_cd_plaqueta_erp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_proprietaria_erp">
<h:panelGroup id="pg_asset_cd_proprietaria_erp_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_cd_proprietaria_erp"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_cd_proprietaria_erp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_aquisicao">
<h:panelGroup id="pg_asset_vl_aquisicao_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_vl_aquisicao" onclick="slvl(this.id,this.value);" value="#{Asset.asset_vl_aquisicao_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_mensal">
<h:panelGroup id="pg_asset_vl_deprec_mensal_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_vl_deprec_mensal" onclick="slvl(this.id,this.value);" value="#{Asset.asset_vl_deprec_mensal_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_acumulada">
<h:panelGroup id="pg_asset_vl_deprec_acumulada_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_vl_deprec_acumulada" onclick="slvl(this.id,this.value);" value="#{Asset.asset_vl_deprec_acumulada_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_contabil">
<h:panelGroup id="pg_asset_vl_contabil_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_vl_contabil" onclick="slvl(this.id,this.value);" value="#{Asset.asset_vl_contabil_str}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<h:panelGroup id="pg_asset_images_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_images_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="#{Asset.imag_im}"  onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tbak=assetvhrfvpsq&tipo='+wtran+'&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<h:panelGroup id="pg_asset_docs_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="#{Asset.file_im}" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhrfvpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<h:panelGroup id="pg_asset_geo_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=VR';">
<ps:psGraphicImage  flagType="geo" flag="#{Asset.geo_vx}" title="#{iimsg.AssetVhrfv_asset_geo_ongrid_tt}" styleClass="btp" />
</h:outputLink>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgAssetVhrfv" onmousedown="wtran='assetvhrfvcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_id').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Asset.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_asset_id" value="#{Asset.asset_id}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadAssetVhrfvBean.doObternullSearchBack}" onmousedown="wtran='assetvhrfvcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
<iframe id="AssetVhrfv" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="InvtyVR" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyVR" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyVR" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetVhrfvBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetVhrfvBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetvhrfv" action="#{cadAssetVhrfvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetvhrfv" action="#{cadAssetVhrfvBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invtyvr" action="#{cadInvtyVRBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtyvr" action="#{cadInvtyVRBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invtyvr" action="#{cadInvtyVRBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
