<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardGray.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Assetpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../Assetfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_asset_cd_termo_devolucao_ckb_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_termo_entrega_ckb_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_doc_compra_ckb_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_asset_cd_tombamento_ckb_xfil', 'pfcfb9', 'pfcf9');
mesgStyleGray(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_date_start');helpcd='AssetSfm';;tran='assetpsq'; vl='';cadbeanx='cadAssetBean';<%session.setAttribute("tipo","assetpsq");%>">
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
<h:outputText value="#{cadAssetBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeGray/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeGray/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeGray/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadAssetBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetBean.hasPrevPage}" action="#{cadAssetBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetBean.hasNextPage}" action="#{cadAssetBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadAssetBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadAssetBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadAssetBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadAssetBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovo('assetcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudImgdcSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpAssetSfm" tabindex="-1" rendered="#{cadAssetBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadAssetBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadAssetBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeGray/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeGray/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeGray/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeGray/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeGray/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeGray/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeGray/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadAssetBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadAssetBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="asset_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_asset_id_tt">
<h:outputText id="hd_asset_id_tt" title="#{iimsg.Asset_asset_id_tt}" value="#{iimsg.Asset_asset_id_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_tt">
<h:outputText id="hd_asset_nu_tt_xide" title="#{iimsg.Asset_asset_nu_tt}" value="#{iimsg.Asset_asset_nu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_hierarquico_tt">
<h:outputText id="hd_asset_cd_hierarquico_tt_xide" title="#{iimsg.Asset_asset_cd_hierarquico_tt}" value="#{iimsg.Asset_asset_cd_hierarquico_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_doc_inspecao">
<f:facet name="header">
<h:panelGroup id="pg_asset_nu_doc_inspecao_tt">
<h:outputText id="hd_asset_nu_doc_inspecao_tt_xide" title="#{iimsg.Asset_asset_nu_doc_inspecao_tt}" value="#{iimsg.Asset_asset_nu_doc_inspecao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_devolucao_ckb_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_termo_devolucao_ckb_tt">
<h:outputText id="hd_asset_cd_termo_devolucao_ckb_tt" title="#{iimsg.Asset_asset_cd_termo_devolucao_ckb_has_tt}" value="#{iimsg.Asset_asset_cd_termo_devolucao_ckb_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_entrega_ckb_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_termo_entrega_ckb_tt">
<h:outputText id="hd_asset_cd_termo_entrega_ckb_tt" title="#{iimsg.Asset_asset_cd_termo_entrega_ckb_has_tt}" value="#{iimsg.Asset_asset_cd_termo_entrega_ckb_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_doc_compra_ckb_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_doc_compra_ckb_tt">
<h:outputText id="hd_asset_cd_doc_compra_ckb_tt" title="#{iimsg.Asset_asset_cd_doc_compra_ckb_has_tt}" value="#{iimsg.Asset_asset_cd_doc_compra_ckb_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_tombamento_ckb_tt">
<f:facet name="header">
<h:panelGroup id="pg_asset_cd_tombamento_ckb_tt">
<h:outputText id="hd_asset_cd_tombamento_ckb_tt" title="#{iimsg.Asset_asset_cd_tombamento_ckb_has_tt}" value="#{iimsg.Asset_asset_cd_tombamento_ckb_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Asset_tabs_vc_tt}" value="#{iimsg.Asset_tabs_vc_ta}"/>
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
<h:column rendered="#{cadAssetBean.assist}">
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
<h:column id="asset_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_id">
<h:inputText id="asset_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" value="#{cadAssetBean.fil_asset_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_cd_hierarquico">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_doc_inspecao">
<f:facet name="footer">
<h:panelGroup id="fpg_asset_nu_doc_inspecao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_devolucao_ckb_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_termo_devolucao_ckb">
<h:inputText id="fil_asset_cd_termo_devolucao_ckb_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetBean.fil_asset_cd_termo_devolucao_ckb}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_entrega_ckb_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_termo_entrega_ckb">
<h:inputText id="fil_asset_cd_termo_entrega_ckb_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetBean.fil_asset_cd_termo_entrega_ckb}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_doc_compra_ckb_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_doc_compra_ckb">
<h:inputText id="fil_asset_cd_doc_compra_ckb_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetBean.fil_asset_cd_doc_compra_ckb}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_tombamento_ckb_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_asset_cd_tombamento_ckb">
<h:inputText id="fil_asset_cd_tombamento_ckb_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadAssetBean.fil_asset_cd_tombamento_ckb}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadAssetBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadAssetBean.assist}">
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
value="#{cadAssetBean.pesqData}"
var="Asset"
binding="#{cadAssetBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadAssetBean.pageLength}"
first="#{cadAssetBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="asset_id_fk">
<h:panelGroup id="pg_asset_id_sg">
<!--   // 333-->
<h:outputLabel id="sel_asset_id" onclick="slvl(this.id,this.value);" value="#{Asset.asset_id}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu">
<h:panelGroup id="pg_asset_nu_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_nu}"/>
<h:inputHidden id="sel_asset_tp_cfasttp" value="#{Asset.asset_tp_cfasttp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_cd_hierarquico">
<h:panelGroup id="pg_asset_cd_hierarquico_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_cd_hierarquico"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_cd_hierarquico}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="asset_nu_doc_inspecao">
<h:panelGroup id="pg_asset_nu_doc_inspecao_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_asset_nu_doc_inspecao"  onclick="slvl(this.id,this.value);" value="#{Asset.asset_nu_doc_inspecao}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_devolucao_ckb">
<h:panelGroup id="pg_asset_cd_termo_devolucao_ckb_sg">
<h:outputLabel id="sel_asset_cd_termo_devolucao_ckb" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_termo_devolucao_ckb}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_termo_entrega_ckb">
<h:panelGroup id="pg_asset_cd_termo_entrega_ckb_sg">
<h:outputLabel id="sel_asset_cd_termo_entrega_ckb" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_termo_entrega_ckb}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_doc_compra_ckb">
<h:panelGroup id="pg_asset_cd_doc_compra_ckb_sg">
<h:outputLabel id="sel_asset_cd_doc_compra_ckb" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_doc_compra_ckb}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="asset_cd_tombamento_ckb">
<h:panelGroup id="pg_asset_cd_tombamento_ckb_sg">
<h:outputLabel id="sel_asset_cd_tombamento_ckb" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_tombamento_ckb}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgAsset" onmousedown="wtran='assetcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Asset.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadAssetBean.doObternull}" onmousedown="wtran='assetcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadAssetBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_asset_id');desc=rel(aa+'sel_asset_nu');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<td width="15" background="../imagens/thmeGray/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeGray/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeGray/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeGray/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Asset" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocp" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obocr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obmac" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obmac" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<!-- superType commandLinks -->
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invty" action="#{cadInvtyBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invty" action="#{cadInvtyBean.doObternull}" immediate="true"/>
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
<h:commandLink id="xrec_obocp" action="#{cadObocpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obocp" action="#{cadObocpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obocr" action="#{cadObocrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obocr" action="#{cadObocrBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obmac" action="#{cadObmacBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obmac" action="#{cadObmacBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obmac" action="#{cadObmacBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_ixccust" action="#{cadIxccustBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_ixccust" action="#{cadIxccustBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
