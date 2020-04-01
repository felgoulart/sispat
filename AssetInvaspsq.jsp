<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetInvasBean");%>
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
<link rel="stylesheet" href="../AssetInvaspsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetinvaspsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetInvasBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_asset_nu');helpcd='AssetInvasSfm';;tran='assetinvaspsq'; vl='';cadbeanx='cadAssetInvasBean';<%session.setAttribute("tipo","assetinvaspsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div class="row-offcanvas row-offcanvas-left">
  <div id="sidebar" class="sidebar-offcanvas">
      <div class="col-md-12">
        <h2 class="tituloFiltro">Filtros</h2>
		
		<%@include file="AssetInvaspsq_param2.jsp"%>

      </div>
  </div>
  <div id="main">
        <div class="col-md-12">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<!-- Principal -->
	<div class="containermod expand-max bg-transparent mt-3">
	  <div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
		<h2 class="title" style="font-size: 35px;"><h:outputText value="PESQUISA DE INVASÕES DE FAIXA DE DOMÍNIO"/></h2>
		<p class="subtitle"></p>
		</div>
		<div class="col-sm-1">
		<h:commandButton id="aBackToSearch"  styleClass="btn btn-outline-dark" value="Voltar"  onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetInvasBean.doReturnMenu}"/>
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

  </div>
</div>
	<div class="containermod expand-max bg-transparent">
	  <div class="row">
	  <div class="col-sm-6">
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetInvasBean.hasPrevPage}" action="#{cadAssetInvasBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetInvasBean.hasNextPage}" action="#{cadAssetInvasBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" value="Filtrar"  styleClass="btn btn-outline-dark"  title="#{iimsg.botao_filtrar}" action="#{cadAssetInvasBean.doSelecionar}"/>
<h:commandButton id="aLimpar" value="Limpar"  styleClass="btn btn-outline-dark" rendered="#{cadAssetInvasBean.canPesquisar}"  title="#{iimsg.botao_limpar}" action="#{cadAssetInvasBean.doLimparPesq}"/>
<h:commandButton id="aNew" value="Inserir"  styleClass="btn btn-outline-dark" rendered="#{cadAssetInvasBean.canInserir}"  onmousedown="fNovorwpp('assetinvascad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetInvasBean.doNovo}"/>
<h:commandButton id="XlsExport_xls_stb"  value="Exportar" styleClass="btn btn-outline-dark"  rendered="#{cadAssetInvasBean.canPesquisar}" title="#{iimsg.AssetInvas_XlsExport_xls_stb_tt}"  action="#{cadAssetInvasBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" />
<h:commandButton id="aHelpAssetTerrnSfm" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetTerrnSfm');" />
<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" />
<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" />
<h:inputHidden id="xmesg_rc" value="#{cadAssetInvasBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetInvasBean.xhelp_rc}" />
<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
    </div>
	<div class="col-sm-6" align="right">
		<h:outputLabel  styleClass="h6 text-secondary"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetInvas_asset_in_ultvist_tt}"/>
		<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetInvasBean.asset_in_ultvist}"/>
		<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="13"  value="#{cadAssetInvasBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
	</div>
  </div>
</div>
<div class="containermod expand-max bg-transparent" >
<table id="pesquisa_tt" style="" align="center" class="containermod expand-max">
<tr>
<td colspan="" align="" valign="middle">
<div id="div_dtDados_hor_" class="table-responsive containermod expand-max">
<!-- Pesquisa Header Table -->
<!-- Dados -->
<h:dataTable
rowClasses="tre9, tro9"
styleClass="grid-header"
id="dtDados_tt">
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_tt">
<h:outputText id="hd_asset_nu_tt_xide" title="#{iimsg.AssetInvas_asset_nu_tt}" value="#{iimsg.AssetInvas_asset_nu_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_invasao_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_invasao_tt">
<h:outputText id="hd_asset_tp_invasao_tt" title="#{iimsg.AssetInvas_asset_tp_invasao_tt}" value="#{iimsg.AssetInvas_asset_tp_invasao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cl_dist_boleto">
<f:facet name="header">
<h:panelGroup id="pg_asset_cl_dist_boleto_tt">
<h:outputText id="hd_asset_cl_dist_boleto_tt_xide" title="#{iimsg.AssetInvas_asset_cl_dist_boleto_tt}" value="#{iimsg.AssetInvas_asset_cl_dist_boleto_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_aa_construcao">
<f:facet name="header">
<h:panelGroup id="pg_asset_aa_construcao_tt">
<h:outputText id="hd_asset_aa_construcao_tt_xide" title="#{iimsg.AssetInvas_asset_aa_construcao_tt}" value="#{iimsg.AssetInvas_asset_aa_construcao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<f:facet name="header">
<h:panelGroup id="pg_asset_dt_vistoria_tt">
<h:outputText id="hd_asset_dt_vistoria_tt_xide" title="#{iimsg.AssetInvas_asset_dt_vistoria_tt}" value="#{iimsg.AssetInvas_asset_dt_vistoria_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_pross_reinpss">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_pross_reinpss_tt">
<h:outputText id="hd_asset_nu_pross_reinpss_tt_xide" title="#{iimsg.AssetInvas_asset_nu_pross_reinpss_tt}" value="#{iimsg.AssetInvas_asset_nu_pross_reinpss_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfreslc_tt">
<h:outputText id="hd_asset_cd_cfreslc_tt" title="#{iimsg.AssetInvas_asset_cd_cfreslc_tt}" value="#{iimsg.AssetInvas_asset_cd_cfreslc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_prx_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfreslc_prx_tt">
<h:outputText id="hd_asset_cd_cfreslc_prx_tt" title="#{iimsg.AssetInvas_asset_cd_cfreslc_prx_tt}" value="#{iimsg.AssetInvas_asset_cd_cfreslc_prx_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<f:facet name="header">
<h:panelGroup id="pg_asset_km_ini_tt">
<h:outputText id="hd_asset_km_ini_tt_xide" title="#{iimsg.AssetInvas_asset_km_ini_tt}" value="#{iimsg.AssetInvas_asset_km_ini_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_fim">
<f:facet name="header">
<h:panelGroup id="pg_asset_km_fim_tt">
<h:outputText id="hd_asset_km_fim_tt_xide" title="#{iimsg.AssetInvas_asset_km_fim_tt}" value="#{iimsg.AssetInvas_asset_km_fim_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nm_logradouro">
<f:facet name="header">
<h:panelGroup id="pg_asset_nm_logradouro_tt">
<h:outputText id="hd_asset_nm_logradouro_tt_xide" title="#{iimsg.AssetInvas_asset_nm_logradouro_tt}" value="#{iimsg.AssetInvas_asset_nm_logradouro_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nm_bairro">
<f:facet name="header">
<h:panelGroup id="pg_asset_nm_bairro_tt">
<h:outputText id="hd_asset_nm_bairro_tt_xide" title="#{iimsg.AssetInvas_asset_nm_bairro_tt}" value="#{iimsg.AssetInvas_asset_nm_bairro_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfresid_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfresid_tt">
<h:outputText id="hd_asset_cd_cfresid_tt" title="#{iimsg.AssetInvas_asset_cd_cfresid_tt}" value="#{iimsg.AssetInvas_asset_cd_cfresid_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_uf_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_uf_tt">
<h:outputText id="hd_asset_cd_uf_tt" title="#{iimsg.AssetInvas_asset_cd_uf_tt}" value="#{iimsg.AssetInvas_asset_cd_uf_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_corredor_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_corredor_tt">
<h:outputText id="hd_asset_cd_corredor_tt" title="#{iimsg.AssetInvas_asset_cd_corredor_tt}" value="#{iimsg.AssetInvas_asset_cd_corredor_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_images_ongrid_tt">
<h:outputText id="hd_asset_images_ongrid_tt_xide" title="#{iimsg.AssetInvas_asset_images_ongrid_tt}" value="#{iimsg.AssetInvas_asset_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_docs_ongrid_tt">
<h:outputText id="hd_asset_docs_ongrid_tt_xide" title="#{iimsg.AssetInvas_asset_docs_ongrid_tt}" value="#{iimsg.AssetInvas_asset_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_geo_ongrid_tt">
<h:outputText id="hd_asset_geo_ongrid_tt_xide" title="#{iimsg.AssetInvas_asset_geo_ongrid_tt}" value="#{iimsg.AssetInvas_asset_geo_ongrid_ta}"/>
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
value="#{cadAssetInvasBean.pesqData}"
var="Asset"
binding="#{cadAssetInvasBean.pesqTable}"
rowClasses="tre9mod, tro9mod"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetInvasBean.pageLength}"
first="#{cadAssetInvasBean.currentLine}">
<!-- propColumnGen -->
<h:column id="asset_nu">
<h:panelGroup id="pg_asset_nu_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu}"/>
<h:inputHidden id="sel_asset_tp_cfasttp" value="#{Asset.asset_tp_cfasttp}"/>
<h:inputHidden id="sel_asset_cd_cfinvty" value="#{Asset.asset_cd_cfinvty}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_invasao">
<h:panelGroup id="pg_asset_tp_invasao_sg">
<h:outputLabel id="sel_asset_tp_invasao" title="#{Asset.asset_tp_invasao_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_invasao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cl_dist_boleto">
<h:panelGroup id="pg_asset_cl_dist_boleto_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_cl_dist_boleto" onclick="slvl(this.id,this.value);" value="#{Asset.asset_cl_dist_boleto_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_aa_construcao">
<h:panelGroup id="pg_asset_aa_construcao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_aa_construcao"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_aa_construcao}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<h:panelGroup id="pg_asset_dt_vistoria_sg">
<h:outputText id="sel_asset_dt_vistoria" value="#{Asset.asset_dt_vistoria_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_pross_reinpss">
<h:panelGroup id="pg_asset_nu_pross_reinpss_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_pross_reinpss"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu_pross_reinpss}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc">
<h:panelGroup id="pg_asset_cd_cfreslc_sg">
<h:outputLabel id="sel_asset_cd_cfreslc" title="#{Asset.asset_cd_cfreslc_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_cfreslc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_prx">
<h:panelGroup id="pg_asset_cd_cfreslc_prx_sg">
<h:outputLabel id="sel_asset_cd_cfreslc_prx" title="#{Asset.asset_cd_cfreslc_prx_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_cfreslc_prx}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<h:panelGroup id="pg_asset_km_ini_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_km_ini" onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_km_ini_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_fim">
<h:panelGroup id="pg_asset_km_fim_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_km_fim" onclick="slvl(this.id,this.value);" value="#{Asset.asset_km_fim_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nm_logradouro">
<h:panelGroup id="pg_asset_nm_logradouro_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nm_logradouro"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nm_logradouro}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nm_bairro">
<h:panelGroup id="pg_asset_nm_bairro_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nm_bairro"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nm_bairro}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfresid">
<h:panelGroup id="pg_asset_cd_cfresid_sg">
<h:outputLabel id="sel_asset_cd_cfresid" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_cfresid}"/>
<h:outputText id="asset_cd_cfresid_desc" value="#{Asset.asset_cd_cfresid_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_uf">
<h:panelGroup id="pg_asset_cd_uf_sg">
<h:outputLabel id="sel_asset_cd_uf" title="#{Asset.asset_cd_uf_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_uf}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_corredor">
<h:panelGroup id="pg_asset_cd_corredor_sg">
<h:outputLabel id="sel_asset_cd_corredor" title="#{Asset.asset_cd_corredor_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_corredor}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<h:panelGroup id="pg_asset_images_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_images_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="imagens/picture2.png"  onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tbak=assetinvaspsq&tipo='+wtran+'&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<h:panelGroup id="pg_asset_docs_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="imagens/folder.png" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetinvaspsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<h:panelGroup id="pg_asset_geo_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=IV';">
<h:graphicImage value="imagens/worldwide.png" />
</h:outputLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_asset_id" value="#{Asset.asset_id}"/>
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/file.png"  action="#{cadAssetInvasBean.doObternullSearchBack}" onmousedown="wtran='assetinvascad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
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
		  <h:inputText id="mesg_var" value="#{cadAssetInvasBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
		  <h:outputLabel  styleClass="h6 text-secondary"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadAssetInvasBean.codfqt}"   styleClass="h6 text-secondary"/>
	</div>
<!-- Conteudo -->
<iframe id="AssetInvas" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="InvtyED" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyED" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyPN" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadAssetInvasBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetInvasBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetinvas" action="#{cadAssetInvasBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetinvas" action="#{cadAssetInvasBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invtyed" action="#{cadInvtyEDBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtyed" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invtyed" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_invtypn" action="#{cadInvtyPNBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtypn" action="#{cadInvtyPNBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invtypn" action="#{cadInvtyPNBean.doObternull}" immediate="true"/>
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
