<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetSuperBean");%>
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
<link rel="stylesheet" href="../AssetSuperpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetsuperpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_asset_tp_cfasttp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_st_operacional_cfoperc_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_st_operacional_veic_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:asset_cd_ccusto_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_asset_tp_locom_cfengtp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_locom_model_cfengmd_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetSuperBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:asset_km_range_sqlparm');helpcd='AssetSuperSfm';;tran='assetsuperpsq'; vl='';cadbeanx='cadAssetSuperBean';<%session.setAttribute("tipo","assetsuperpsq");%>">
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
<h:outputText value="#{cadAssetSuperBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetSuperBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetSuperBean.hasPrevPage}" action="#{cadAssetSuperBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetSuperBean.hasNextPage}" action="#{cadAssetSuperBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadAssetSuperBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadAssetSuperBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadAssetSuperBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadAssetSuperBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('assetsupercad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetSuperBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetSuperSfm" tabindex="-1" rendered="#{cadAssetSuperBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetSuperSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadAssetSuperBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetSuperBean.xhelp_rc}" />
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
<%@include file="AssetSuperpsq_param.jsp"%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadAssetSuperBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadAssetSuperBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="asset_tp_cfasttp_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_cfasttp_tt">
<h:outputText id="hd_asset_tp_cfasttp_tt" title="#{iimsg.AssetSuper_asset_tp_cfasttp_tt}" value="#{iimsg.AssetSuper_asset_tp_cfasttp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_tt">
<h:outputText id="hd_asset_nu_tt_xide" title="#{iimsg.AssetSuper_asset_nu_tt}" value="#{iimsg.AssetSuper_asset_nu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_st_operacional_cfoperc_tt">
<h:outputText id="hd_asset_st_operacional_cfoperc_tt" title="#{iimsg.AssetSuper_asset_st_operacional_cfoperc_tt}" value="#{iimsg.AssetSuper_asset_st_operacional_cfoperc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_veic_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_st_operacional_veic_tt">
<h:outputText id="hd_asset_st_operacional_veic_tt" title="#{iimsg.AssetSuper_asset_st_operacional_veic_tt}" value="#{iimsg.AssetSuper_asset_st_operacional_veic_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_ccusto_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_ccusto_tt">
<h:outputText id="hd_asset_cd_ccusto_tt" title="#{iimsg.AssetSuper_asset_cd_ccusto_tt}" value="#{iimsg.AssetSuper_asset_cd_ccusto_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_cfsitbm_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_st_cfsitbm_tt">
<h:outputText id="hd_asset_st_cfsitbm_tt" title="#{iimsg.AssetSuper_asset_st_cfsitbm_tt}" value="#{iimsg.AssetSuper_asset_st_cfsitbm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_vagao_serie_cfwagse_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_vagao_serie_cfwagse_tt">
<h:outputText id="hd_asset_cd_vagao_serie_cfwagse_tt" title="#{iimsg.AssetSuper_asset_cd_vagao_serie_cfwagse_tt}" value="#{iimsg.AssetSuper_asset_cd_vagao_serie_cfwagse_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_vagao_placa">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_vagao_placa_tt">
<h:outputText id="hd_asset_nu_vagao_placa_tt_xide" title="#{iimsg.AssetSuper_asset_nu_vagao_placa_tt}" value="#{iimsg.AssetSuper_asset_nu_vagao_placa_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_locom_cfengtp_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_locom_cfengtp_tt">
<h:outputText id="hd_asset_tp_locom_cfengtp_tt" title="#{iimsg.AssetSuper_asset_tp_locom_cfengtp_tt}" value="#{iimsg.AssetSuper_asset_tp_locom_cfengtp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_locom_model_cfengmd_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_locom_model_cfengmd_tt">
<h:outputText id="hd_asset_cd_locom_model_cfengmd_tt" title="#{iimsg.AssetSuper_asset_cd_locom_model_cfengmd_tt}" value="#{iimsg.AssetSuper_asset_cd_locom_model_cfengmd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_locomotiva">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_locomotiva_tt">
<h:outputText id="hd_asset_nu_locomotiva_tt_xide" title="#{iimsg.AssetSuper_asset_nu_locomotiva_tt}" value="#{iimsg.AssetSuper_asset_nu_locomotiva_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_trecho_tt">
<h:outputText id="hd_asset_cd_trecho_tt" title="#{iimsg.AssetSuper_asset_cd_trecho_tt}" value="#{iimsg.AssetSuper_asset_cd_trecho_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_subtrecho_tt">
<h:outputText id="hd_asset_cd_subtrecho_tt" title="#{iimsg.AssetSuper_asset_cd_subtrecho_tt}" value="#{iimsg.AssetSuper_asset_cd_subtrecho_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfreslc_tt">
<h:outputText id="hd_asset_cd_cfreslc_tt" title="#{iimsg.AssetSuper_asset_cd_cfreslc_tt}" value="#{iimsg.AssetSuper_asset_cd_cfreslc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_prx_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_cfreslc_prx_tt">
<h:outputText id="hd_asset_cd_cfreslc_prx_tt" title="#{iimsg.AssetSuper_asset_cd_cfreslc_prx_tt}" value="#{iimsg.AssetSuper_asset_cd_cfreslc_prx_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<f:facet name="header">
<h:panelGroup id="pg_asset_km_ini_tt">
<h:outputText id="hd_asset_km_ini_tt_xide" title="#{iimsg.AssetSuper_asset_km_ini_tt}" value="#{iimsg.AssetSuper_asset_km_ini_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_fim">
<f:facet name="header">
<h:panelGroup id="pg_asset_km_fim_tt">
<h:outputText id="hd_asset_km_fim_tt_xide" title="#{iimsg.AssetSuper_asset_km_fim_tt}" value="#{iimsg.AssetSuper_asset_km_fim_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_tipologia_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_tipologia_tt">
<h:outputText id="hd_asset_tp_tipologia_tt" title="#{iimsg.AssetSuper_asset_tp_tipologia_tt}" value="#{iimsg.AssetSuper_asset_tp_tipologia_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_utilizacao_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_tp_utilizacao_tt">
<h:outputText id="hd_asset_tp_utilizacao_tt" title="#{iimsg.AssetSuper_asset_tp_utilizacao_tt}" value="#{iimsg.AssetSuper_asset_tp_utilizacao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_geral_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_st_geral_tt">
<h:outputText id="hd_asset_st_geral_tt" title="#{iimsg.AssetSuper_asset_st_geral_tt}" value="#{iimsg.AssetSuper_asset_st_geral_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<f:facet name="header">
<h:panelGroup id="pg_asset_dt_vistoria_tt">
<h:outputText id="hd_asset_dt_vistoria_tt_xide" title="#{iimsg.AssetSuper_asset_dt_vistoria_tt}" value="#{iimsg.AssetSuper_asset_dt_vistoria_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_images_ongrid_tt">
<h:outputText id="hd_asset_images_ongrid_tt_xide" title="#{iimsg.AssetSuper_asset_images_ongrid_tt}" value="#{iimsg.AssetSuper_asset_images_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_docs_ongrid_tt">
<h:outputText id="hd_asset_docs_ongrid_tt_xide" title="#{iimsg.AssetSuper_asset_docs_ongrid_tt}" value="#{iimsg.AssetSuper_asset_docs_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<f:facet name="header">
<h:panelGroup id="pg_asset_geo_ongrid_tt">
<h:outputText id="hd_asset_geo_ongrid_tt_xide" title="#{iimsg.AssetSuper_asset_geo_ongrid_tt}" value="#{iimsg.AssetSuper_asset_geo_ongrid_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.AssetSuper_tabs_vc_tt}" value="#{iimsg.AssetSuper_tabs_vc_ta}"/>
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
<h:column id="asset_tp_cfasttp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_tp_cfasttp">
<h:inputText id="fil_asset_tp_cfasttp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ASTTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_tp_cfasttp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_nu">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_st_operacional_cfoperc">
<h:inputText id="fil_asset_st_operacional_cfoperc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'OPERC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_st_operacional_cfoperc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_veic_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_st_operacional_veic">
<h:inputText id="fil_asset_st_operacional_veic_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STOVC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_st_operacional_veic}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_ccusto_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_cd_ccusto">
<!--   // 444-->
<h:inputText id="asset_cd_ccusto_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('Ixccustpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_cd_ccusto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_cfsitbm_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_st_cfsitbm">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_vagao_serie_cfwagse_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_vagao_serie_cfwagse">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_vagao_placa">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_nu_vagao_placa">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_locom_cfengtp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_tp_locom_cfengtp">
<h:inputText id="fil_asset_tp_locom_cfengtp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ENGTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_tp_locom_cfengtp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_locom_model_cfengmd_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_locom_model_cfengmd">
<h:inputText id="fil_asset_cd_locom_model_cfengmd_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'ENGMD', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_cd_locom_model_cfengmd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_locomotiva">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_nu_locomotiva">
<h:inputText id="asset_nu_locomotiva_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAssetSuperBean.fil_asset_nu_locomotiva}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_trecho">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_subtrecho">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_cfreslc">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_prx_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_cfreslc_prx">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_km_ini">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_fim">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_km_fim">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_tipologia_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_tp_tipologia">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_utilizacao_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_tp_utilizacao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_geral_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_st_geral">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_dt_vistoria">
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
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAssetSuperBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:461px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadAssetSuperBean.pesqData}"
var="Asset"
binding="#{cadAssetSuperBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetSuperBean.pageLength}"
first="#{cadAssetSuperBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="asset_tp_cfasttp">
<h:panelGroup id="pg_asset_tp_cfasttp_sg">
<h:inputHidden id="asset_tp_cfasttpx" value="#{Asset.asset_tp_cfasttp}"/>
<h:outputLabel id="sel_asset_tp_cfasttp" title="#{Asset.asset_tp_cfasttp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_cfasttp}"/>
<h:inputHidden id="sel_asset_cd_cfinvty" value="#{Asset.asset_cd_cfinvty}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<h:panelGroup id="pg_asset_nu_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_nu}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_cfoperc">
<h:panelGroup id="pg_asset_st_operacional_cfoperc_sg">
<h:outputLabel id="sel_asset_st_operacional_cfoperc" title="#{Asset.asset_st_operacional_cfoperc_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_st_operacional_cfoperc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_operacional_veic">
<h:panelGroup id="pg_asset_st_operacional_veic_sg">
<h:outputLabel id="sel_asset_st_operacional_veic" title="#{Asset.asset_st_operacional_veic_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_st_operacional_veic}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="asset_cd_ccusto_fk">
<h:panelGroup id="pg_asset_cd_ccusto_sg">
<!--   // 333-->
<h:outputLabel id="sel_asset_cd_ccusto" title="#{Asset.asset_cd_ccusto_desc}" onclick="slvl(this.id,this.value);" value="#{Asset.asset_cd_ccusto}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_cfsitbm">
<h:panelGroup id="pg_asset_st_cfsitbm_sg">
<h:outputLabel id="sel_asset_st_cfsitbm" title="#{Asset.asset_st_cfsitbm_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_st_cfsitbm}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_vagao_serie_cfwagse">
<h:panelGroup id="pg_asset_cd_vagao_serie_cfwagse_sg">
<h:outputLabel id="sel_asset_cd_vagao_serie_cfwagse" title="#{Asset.asset_cd_vagao_serie_cfwagse_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_vagao_serie_cfwagse}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_vagao_placa">
<h:panelGroup id="pg_asset_nu_vagao_placa_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_vagao_placa"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_nu_vagao_placa}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_locom_cfengtp">
<h:panelGroup id="pg_asset_tp_locom_cfengtp_sg">
<h:outputLabel id="sel_asset_tp_locom_cfengtp" title="#{Asset.asset_tp_locom_cfengtp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_locom_cfengtp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_locom_model_cfengmd">
<h:panelGroup id="pg_asset_cd_locom_model_cfengmd_sg">
<h:outputLabel id="sel_asset_cd_locom_model_cfengmd" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_locom_model_cfengmd}"/>
<h:outputText id="asset_cd_locom_model_cfengmd_desc" value="#{Asset.asset_cd_locom_model_cfengmd_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_locomotiva">
<h:panelGroup id="pg_asset_nu_locomotiva_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_locomotiva"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_nu_locomotiva}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_trecho">
<h:panelGroup id="pg_asset_cd_trecho_sg">
<h:outputLabel id="sel_asset_cd_trecho" title="#{Asset.asset_cd_trecho_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_trecho}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_subtrecho">
<h:panelGroup id="pg_asset_cd_subtrecho_sg">
<h:outputLabel id="sel_asset_cd_subtrecho" title="#{Asset.asset_cd_subtrecho_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_subtrecho}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc">
<h:panelGroup id="pg_asset_cd_cfreslc_sg">
<h:outputLabel id="sel_asset_cd_cfreslc" title="#{Asset.asset_cd_cfreslc_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_cfreslc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_cfreslc_prx">
<h:panelGroup id="pg_asset_cd_cfreslc_prx_sg">
<h:outputLabel id="sel_asset_cd_cfreslc_prx" title="#{Asset.asset_cd_cfreslc_prx_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_cfreslc_prx}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_ini">
<h:panelGroup id="pg_asset_km_ini_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_km_ini" onclick="slvl(this.id,this.value);" value="#{Asset.asset_km_ini_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_km_fim">
<h:panelGroup id="pg_asset_km_fim_sg">
<!-- propColumnGen BigDecimal -->
<h:outputLabel id="sel_asset_km_fim" onclick="slvl(this.id,this.value);" value="#{Asset.asset_km_fim_str}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_tipologia">
<h:panelGroup id="pg_asset_tp_tipologia_sg">
<h:outputLabel id="sel_asset_tp_tipologia" title="#{Asset.asset_tp_tipologia_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_tipologia}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_tp_utilizacao">
<h:panelGroup id="pg_asset_tp_utilizacao_sg">
<h:outputLabel id="sel_asset_tp_utilizacao" title="#{Asset.asset_tp_utilizacao_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_tp_utilizacao}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_st_geral">
<h:panelGroup id="pg_asset_st_geral_sg">
<h:outputLabel id="sel_asset_st_geral" title="#{Asset.asset_st_geral_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_st_geral}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_dt_vistoria">
<h:panelGroup id="pg_asset_dt_vistoria_sg">
<h:outputText id="sel_asset_dt_vistoria" value="#{Asset.asset_dt_vistoria_str}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_images_ongrid_bt">
<h:panelGroup id="pg_asset_images_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_images_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="#{Asset.imag_im}"  onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tbak=assetsuperpsq&tipo='+wtran+'&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="asset_docs_ongrid_bt">
<h:panelGroup id="pg_asset_docs_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="#{Asset.file_im}" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetsuperpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="asset_geo_ongrid_bt">
<h:panelGroup id="pg_asset_geo_ongrid_bt">
<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);valor2=el(aa+'asset_tp_cfasttpx').value;if(valor2 == 'AC'){alert('Bem com tipologia <A Classificar>. Classifique e Reimporte Coordenadas')}else{this.href='mapa.jsp?bp='+valor1+'&type='+valor2;}">
<ps:psGraphicImage  flagType="geo" flag="#{Asset.geo_vx}" title="#{iimsg.AssetSuper_asset_geo_ongrid_tt}" styleClass="btp" />
</h:outputLink>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgAssetSuper" onmousedown="wtran='assetsupercad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_id').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Asset.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_asset_id" value="#{Asset.asset_id}"/>
<!-- SUP-60-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" onmousedown="aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_asset_id');typevl=rpel(aa+'sel_asset_tp_cfasttp');tranx=AssetType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey; onclickx('xrec_'+tranx,'yes');"/>
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
<iframe id="AssetSuper" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Ixccust" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
<!-- Super Trans Subtypes c'ommandLinks -->
<h:commandLink id="xrec_assetvhwag" action="#{cadAssetVhwagBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetvheng" action="#{cadAssetVhengBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetvhaux" action="#{cadAssetVhauxBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetvhpax" action="#{cadAssetVhpaxBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetvhrdv" action="#{cadAssetVhrdvBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetinvas" action="#{cadAssetInvasBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_asseteqgpt" action="#{cadAssetEqgptBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetbldng" action="#{cadAssetBldngBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetyrdld" action="#{cadAssetYrdldBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetlbdld" action="#{cadAssetLbdldBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetmailn" action="#{cadAssetMailnBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetextln" action="#{cadAssetExtlnBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetyrdsd" action="#{cadAssetYrdsdBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetsidng" action="#{cadAssetSidngBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetlvlcr" action="#{cadAssetLvlcrBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetovrps" action="#{cadAssetOvrpsBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetundps" action="#{cadAssetUndpsBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetbrdge" action="#{cadAssetBrdgeBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetviadt" action="#{cadAssetViadtBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetculvt" action="#{cadAssetCulvtBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assettunnl" action="#{cadAssetTunnlBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetsuper" action="#{cadAssetSuperBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_assetsupersv" action="#{cadAssetSupersvBean.doObternull}" immediate="true">
<f:param name="tipoant" value="assetsuperxpsq"/>
</h:commandLink>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetSuperBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetSuperBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetsuper" action="#{cadAssetSuperBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetsuper" action="#{cadAssetSuperBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
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
