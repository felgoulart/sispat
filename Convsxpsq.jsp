<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadConvsxBean");%>
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
<link rel="stylesheet" href="../Convspsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("convspsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_convs_tp_sispat_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_convs_tp_orgdes_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_convs_tp_regra_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadConvsxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ConvsxSfm';;tran='convsxpsq'; vl='';cadbeanx='cadConvsxBean';<%session.setAttribute("tipo","convsxpsq");%>">
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
<h:outputText value="#{cadConvsxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'convsxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadConvsxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadConvsxBean.hasPrevPage}" action="#{cadConvsxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadConvsxBean.hasNextPage}" action="#{cadConvsxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadConvsxBean.doSelecionar}">
<f:param name="campo8" value=""/>
<f:param name="tipo" value="convsxpsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadConvsxBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadConvsxBean.doLimparPesq}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Convs');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldxSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpConvsxSfm" tabindex="-1" rendered="#{cadConvsxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ConvsxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadConvsxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadConvsxBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadConvsxBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadConvsxBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
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
<h:column id="convs_sq">
<f:facet name="header">
<h:panelGroup id="pg_convs_sq_tt">
<h:outputText id="hd_convs_sq_tt_xide" title="#{iimsg.Convs_convs_sq_tt}" value="#{iimsg.Convs_convs_sq_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_convs_sq" action="#{cadConvsxBean.doOrd_convs_sq}">
<ps:psGraphicImage id="hord_convs_sq_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadConvsxBean.ord_convs_sq_desc}"/>
<ps:psGraphicImage id="hord_convs_sq" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadConvsxBean.ord_convs_sq}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="convspsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd">
<f:facet name="header">
<h:panelGroup id="pg_convs_cd_tt">
<h:outputText id="hd_convs_cd_tt_xide" title="#{iimsg.Convs_convs_cd_tt}" value="#{iimsg.Convs_convs_cd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_tt_orgdes">
<f:facet name="header">
<h:panelGroup id="pg_convs_tt_orgdes_tt">
<h:outputText id="hd_convs_tt_orgdes_tt_xide" title="#{iimsg.Convs_convs_tt_orgdes_tt}" value="#{iimsg.Convs_convs_tt_orgdes_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_sispat_tt">
<f:facet name="header">
<h:panelGroup id="pg_convs_tp_sispat_tt">
<h:outputText id="hd_convs_tp_sispat_tt" title="#{iimsg.Convs_convs_tp_sispat_tt}" value="#{iimsg.Convs_convs_tp_sispat_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_orgdes_tt">
<f:facet name="header">
<h:panelGroup id="pg_convs_tp_orgdes_tt">
<h:outputText id="hd_convs_tp_orgdes_tt" title="#{iimsg.Convs_convs_tp_orgdes_tt}" value="#{iimsg.Convs_convs_tp_orgdes_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_regra_tt">
<f:facet name="header">
<h:panelGroup id="pg_convs_tp_regra_tt">
<h:outputText id="hd_convs_tp_regra_tt" title="#{iimsg.Convs_convs_tp_regra_tt}" value="#{iimsg.Convs_convs_tp_regra_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd_codffk">
<f:facet name="header">
<h:panelGroup id="pg_convs_cd_codffk_tt">
<h:outputText id="hd_convs_cd_codffk_tt_xide" title="#{iimsg.Convs_convs_cd_codffk_tt}" value="#{iimsg.Convs_convs_cd_codffk_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_lg">
<f:facet name="header">
<h:panelGroup id="pg_convs_lg_tt">
<h:outputText id="hd_convs_lg_tt_xide" title="#{iimsg.Convs_convs_lg_tt}" value="#{iimsg.Convs_convs_lg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_in_ativo_tt">
<f:facet name="header">
<h:panelGroup id="pg_convs_in_ativo_tt">
<h:outputText id="hd_convs_in_ativo_tt" title="#{iimsg.Convs_convs_in_ativo_tt}" value="#{iimsg.Convs_convs_in_ativo_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Convs_tabs_vc_tt}" value="#{iimsg.Convs_tabs_vc_ta}"/>
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_ttpk">
<h:outputText id="hd_recd_wd_tt_xidepk" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
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
<h:column id="convs_sq">
<f:facet name="footer">
<h:panelGroup id="fpg_convs_sq">
<h:inputText id="convs_sq_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_sq}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_convs_cd">
<h:inputText id="convs_cd_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_tt_orgdes">
<f:facet name="footer">
<h:panelGroup id="fpg_convs_tt_orgdes">
<h:inputText id="convs_tt_orgdes_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_tt_orgdes}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_sispat_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_convs_tp_sispat">
<h:inputText id="fil_convs_tp_sispat_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPVAL', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_tp_sispat}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_orgdes_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_convs_tp_orgdes">
<h:inputText id="fil_convs_tp_orgdes_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPVAL', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_tp_orgdes}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_regra_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_convs_tp_regra">
<h:inputText id="fil_convs_tp_regra_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPCNV', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_tp_regra}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd_codffk">
<f:facet name="footer">
<h:panelGroup id="fpg_convs_cd_codffk">
<h:inputText id="convs_cd_codffk_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_cd_codffk}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_lg">
<f:facet name="footer">
<h:panelGroup id="fpg_convs_lg">
<h:inputText id="convs_lg_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_convs_lg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_in_ativo_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_convs_in_ativo">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadConvsxBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ftpk">
<h:outputText id="recd_wd_ftpk" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadConvsxBean.pesqData}"
var="Convs"
binding="#{cadConvsxBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadConvsxBean.pageLength}"
first="#{cadConvsxBean.currentLine}">
<!-- propColumnGen -->
<h:column id="convs_sq">
<h:panelGroup id="pg_convs_sq_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_convs_sq"  value="#{Convs.convs_sq}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd">
<h:panelGroup id="pg_convs_cd_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_convs_cd"  value="#{Convs.convs_cd}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_tt_orgdes">
<h:panelGroup id="pg_convs_tt_orgdes_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_convs_tt_orgdes"  value="#{Convs.convs_tt_orgdes}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_sispat">
<h:panelGroup id="pg_convs_tp_sispat_sg">
<h:outputText id="sel_convs_tp_sispat" title="#{Convs.convs_tp_sispat_desc}" value="#{Convs.convs_tp_sispat}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_orgdes">
<h:panelGroup id="pg_convs_tp_orgdes_sg">
<h:outputText id="sel_convs_tp_orgdes" title="#{Convs.convs_tp_orgdes_desc}" value="#{Convs.convs_tp_orgdes}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_tp_regra">
<h:panelGroup id="pg_convs_tp_regra_sg">
<h:outputText id="sel_convs_tp_regra" title="#{Convs.convs_tp_regra_desc}" value="#{Convs.convs_tp_regra}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_cd_codffk">
<h:panelGroup id="pg_convs_cd_codffk_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_convs_cd_codffk"  value="#{Convs.convs_cd_codffk}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="convs_lg">
<h:panelGroup id="pg_convs_lg_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_convs_lg"  value="#{Convs.convs_lg}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="convs_in_ativo">
<h:panelGroup id="pg_convs_in_ativo_sg">
<h:outputText id="sel_convs_in_ativo" value="#{Convs.convs_in_ativo}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgConvs" onmousedown="wtran='convscad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_convs_id_impex').value;valor2=el(aa+'sel_convs_sq').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Convs.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_convs_id_impex" value="#{Convs.convs_id_impex}"/>
<h:commandLink id="flag_imgrecd_wd" action="#{cadConvsxBean.doObternullSearchBack}" onmousedown="wtran='convsxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_convs_id_impex');valor2=rpel(aa+'sel_convs_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<h:panelGroup id="pg_recd_wd_sgpk">
<h:inputHidden id="sel_convs_id_impexpk" value="#{Convs.convs_id_impex}"/>
<h:commandLink id="flag_imgrecd_wdpk" action="#{cadImpexxBean.doObternull}" onmousedown="openningForm();el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_convs_id_impex');typevl=rpel(aa+'sel_');tranx=ImpexType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey;showpopup(tran,'xrec_'+tranx,this.id,wtran,'yes');">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_buttonpk}" styleClass="btp" />
</h:commandLink>
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
<iframe id="Convs" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadConvsxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadConvsxBean.doObterParent}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_convs" action="#{cadConvsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_convs" action="#{cadConvsBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_impex" action="#{cadImpexBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_impex" action="#{cadImpexBean.doObternull}" immediate="true"/>
<!-- Super Trans Subtypes commandLinks -->
</h:form>
</body>
</html>
</f:view>
