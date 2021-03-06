<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetVhrdvBean");%>
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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../bootstrap/fa/css/all.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../AssetVhrdvpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetvhrdvpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetVhrdvBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_asset_nu_ident');helpcd='AssetVhrdvSfm';;tran='assetvhrdvpsq'; vl='';cadbeanx='cadAssetVhrdvBean';<%session.setAttribute("tipo","assetvhrdvpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div class="row-offcanvas row-offcanvas-left">
  <div id="sidebar" class="sidebar-offcanvas">
      <div class="col-md-12">
        <h2 class="tituloFiltro">Filtros</h2>
		
		<%@include file="AssetVhrdvpsq_param2.jsp"%>

      </div>
  </div>
  <div id="main">
        <div class="col-md-12">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
	<div class="container expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText value="#{cadAssetVhrdvBean.trans_tt}"/></h2>
		<p class="subtitle"></p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch"  styleClass="btn btn-outline-dark" value="Voltar"  onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetVhrdvBean.doReturnMenu}"/>
		</div>
	</div>
	</div>


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

<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
	<div class="containermod expand-max bg-transparent">
	  <div class="row">
	  <div class="col-sm-6">
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetVhrdvBean.hasPrevPage}" action="#{cadAssetVhrdvBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetVhrdvBean.hasNextPage}" action="#{cadAssetVhrdvBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" value="Filtrar"  styleClass="btn btn-outline-dark"  title="#{iimsg.botao_filtrar}" action="#{cadAssetVhrdvBean.doSelecionar}"/>
<h:commandButton id="aLimpar" value="Limpar"  styleClass="btn btn-outline-dark" rendered="#{cadAssetVhrdvBean.canPesquisar}"  title="#{iimsg.botao_limpar}" action="#{cadAssetVhrdvBean.doLimparPesq}"/>
<h:commandButton id="aNew" value="Inserir"  styleClass="btn btn-outline-dark" rendered="#{cadAssetVhrdvBean.canInserir}"  onmousedown="fNovorwpp('assetvhrdvcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetVhrdvBean.doNovo}"/>
<h:commandButton id="XlsExport_xls_stb"  value="Exportar"  styleClass="btn btn-outline-dark"  rendered="#{cadAssetVhrdvBean.canPesquisar}" title="#{iimsg.AssetVhrdv_XlsExport_xls_stb_tt}"  action="#{cadAssetVhrdvBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" />
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" />
<h:commandButton id="aHelpAssetComRollsSfm" styleClass="d-none"  tabindex="-1" rendered="#{cadAssetVhrdvBean.hasHelpComSfm}" immediate="true" title="#{iimsg.botao_help_com}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetComRollsSfm');" />
<h:commandButton id="aHelpAssetRollsSfm" styleClass="d-none"  tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetRollsSfm');" />
<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" />
<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" />
<h:inputHidden id="xmesg_rc" value="#{cadAssetVhrdvBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetVhrdvBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
    </div>
	<div class="col-sm-6" align="right">
		<h:outputLabel  styleClass="h6 text-secondary"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetVhrdv_asset_in_ultvist_tt}"/>
		<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetVhrdvBean.asset_in_ultvist}"/>
		<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="13"  value="#{cadAssetVhrdvBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
	</div>

<div id="div_dtDados_hor_" class="table-responsive">


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
<h:outputText id="hd_asset_nu_ident_tt_xide" title="#{iimsg.AssetVhrdv_asset_nu_ident_tt}" value="#{iimsg.AssetVhrdv_asset_nu_ident_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_tt">
<h:outputText id="hd_asset_nu_tt_xide" title="#{iimsg.AssetVhrdv_asset_nu_tt}" value="#{iimsg.AssetVhrdv_asset_nu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_vhpax_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_vhpax_tt">
<h:outputText id="hd_asset_tp_vhpax_tt" title="#{iimsg.AssetVhrdv_asset_tp_vhpax_tt}" value="#{iimsg.AssetVhrdv_asset_tp_vhpax_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_renavam">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_renavam_tt">
<h:outputText id="hd_asset_nu_renavam_tt_xide" title="#{iimsg.AssetVhrdv_asset_nu_renavam_tt}" value="#{iimsg.AssetVhrdv_asset_nu_renavam_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_chassi">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_chassi_tt">
<h:outputText id="hd_asset_nu_chassi_tt_xide" title="#{iimsg.AssetVhrdv_asset_nu_chassi_tt}" value="#{iimsg.AssetVhrdv_asset_nu_chassi_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_propriedade_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_propriedade_tt">
<h:outputText id="hd_asset_tp_propriedade_tt" title="#{iimsg.AssetVhrdv_asset_tp_propriedade_tt}" value="#{iimsg.AssetVhrdv_asset_tp_propriedade_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_corredor_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_corredor_tt">
<h:outputText id="hd_asset_cd_corredor_tt" title="#{iimsg.AssetVhrdv_asset_cd_corredor_tt}" value="#{iimsg.AssetVhrdv_asset_cd_corredor_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_px_local_vistoria_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_px_local_vistoria_tt">
<h:outputText id="hd_asset_px_local_vistoria_tt" title="#{iimsg.AssetVhrdv_asset_px_local_vistoria_tt}" value="#{iimsg.AssetVhrdv_asset_px_local_vistoria_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<f:facet name="header">
<h:panelGroup id="pg_asset_dt_vistoria_tt">
<h:outputText id="hd_asset_dt_vistoria_tt_xide" title="#{iimsg.AssetVhrdv_asset_dt_vistoria_tt}" value="#{iimsg.AssetVhrdv_asset_dt_vistoria_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_imobilizado">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_imobilizado_tt">
<h:outputText id="hd_asset_nu_imobilizado_tt_xide" title="#{iimsg.AssetVhrdv_asset_nu_imobilizado_tt}" value="#{iimsg.AssetVhrdv_asset_nu_imobilizado_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_proprietaria_erp_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_proprietaria_erp_tt">
<h:outputText id="hd_asset_cd_proprietaria_erp_tt" title="#{iimsg.AssetVhrdv_asset_cd_proprietaria_erp_tt}" value="#{iimsg.AssetVhrdv_asset_cd_proprietaria_erp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_aquisicao">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_aquisicao_tt">
<h:outputText id="hd_asset_vl_aquisicao_tt_xide" title="#{iimsg.AssetVhrdv_asset_vl_aquisicao_tt}" value="#{iimsg.AssetVhrdv_asset_vl_aquisicao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_mensal">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_deprec_mensal_tt">
<h:outputText id="hd_asset_vl_deprec_mensal_tt_xide" title="#{iimsg.AssetVhrdv_asset_vl_deprec_mensal_tt}" value="#{iimsg.AssetVhrdv_asset_vl_deprec_mensal_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_deprec_acumulada">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_deprec_acumulada_tt">
<h:outputText id="hd_asset_vl_deprec_acumulada_tt_xide" title="#{iimsg.AssetVhrdv_asset_vl_deprec_acumulada_tt}" value="#{iimsg.AssetVhrdv_asset_vl_deprec_acumulada_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_vl_contabil">
<f:facet name="header">
<h:panelGroup id="pg_asset_vl_contabil_tt">
<h:outputText id="hd_asset_vl_contabil_tt_xide" title="#{iimsg.AssetVhrdv_asset_vl_contabil_tt}" value="#{iimsg.AssetVhrdv_asset_vl_contabil_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_images_ongrid_tt">
<h:outputText id="hd_asset_images_ongrid_tt_xide" title="#{iimsg.AssetVhrdv_asset_images_ongrid_tt}" value="#{iimsg.AssetVhrdv_asset_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_docs_ongrid_tt">
<h:outputText id="hd_asset_docs_ongrid_tt_xide" title="#{iimsg.AssetVhrdv_asset_docs_ongrid_tt}" value="#{iimsg.AssetVhrdv_asset_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_geo_ongrid_tt">
<h:outputText id="hd_asset_geo_ongrid_tt_xide" title="#{iimsg.AssetVhrdv_asset_geo_ongrid_tt}" value="#{iimsg.AssetVhrdv_asset_geo_ongrid_ta}"/>
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
<div id="div_dtDados" class="grid-result  table-responsive" style="height:461px;">
<!-- Dados -->
<h:dataTable
value="#{cadAssetVhrdvBean.pesqData}"
var="Asset"
binding="#{cadAssetVhrdvBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetVhrdvBean.pageLength}"
first="#{cadAssetVhrdvBean.currentLine}">
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
<h:outputLabel id="sel_asset_tp_vhpax" title="#{Asset.asset_tp_vhpax_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_vhpax}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_renavam">
<h:panelGroup id="pg_asset_nu_renavam_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_renavam"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu_renavam}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_chassi">
<h:panelGroup id="pg_asset_nu_chassi_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_chassi"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu_chassi}"/>
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
<!-- codfColumnGen -->
<h:column id="asset_cd_proprietaria_erp">
<h:panelGroup id="pg_asset_cd_proprietaria_erp_sg">
<h:outputLabel id="sel_asset_cd_proprietaria_erp" title="#{Asset.asset_cd_proprietaria_erp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_proprietaria_erp}"/>
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
<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="imagens/picture2.png"  onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tbak=assetvhrdvpsq&tipo='+wtran+'&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<h:panelGroup id="pg_asset_docs_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="imagens/folder.png" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetvhrdvpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<h:panelGroup id="pg_asset_geo_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=VR';">
<h:graphicImage value="imagens/worldwide.png" />
</h:outputLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_asset_id" value="#{Asset.asset_id}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/file.png"  action="#{cadAssetVhrdvBean.doObternullSearchBack}" onmousedown="wtran='assetvhrdvcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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

    <div class="col-sm-12 text-white" align="right" style="vertical-align: text-bottom;">
		  <h:inputText id="mesg_var" value="#{cadAssetVhrdvBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadAssetVhrdvBean.codfqt}"   styleClass="h6 text-secondary"/>
	</div>
<!-- Conteudo -->
<iframe id="AssetVhrdv" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadAssetVhrdvBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetVhrdvBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetvhrdv" action="#{cadAssetVhrdvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetvhrdv" action="#{cadAssetVhrdvBean.doObternull}" immediate="true"/>
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
