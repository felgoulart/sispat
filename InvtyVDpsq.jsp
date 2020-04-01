<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadInvtyVDBean");%>
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
<link rel="stylesheet" href="../projStandardInvt.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../InvtyVDpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("invtyvdpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_invty_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_vg_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_lc_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_lp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_lr_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_dp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_dc_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_pn_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_ps_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_pi_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_pt_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_tu_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_vd_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_bu_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_ed_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_invty_tp_tl_xfil', 'pfcfb9', 'pfcf9');
mesgStyleInvt(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadInvtyVDBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='InvtyVDSfm';;tran='invtyvdpsq'; vl='';cadbeanx='cadInvtyVDBean';<%session.setAttribute("tipo","invtyvdpsq");%>">
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
<h:outputText value="#{cadInvtyVDBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeInvt/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeInvt/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeInvt/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadInvtyVDBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadInvtyVDBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadInvtyVDBean.hasPrevPage}" action="#{cadInvtyVDBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadInvtyVDBean.hasNextPage}" action="#{cadInvtyVDBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadInvtyVDBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadInvtyVDBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadInvtyVDBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadInvtyVDBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('invtyvdcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadInvtyVDBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Invty');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudInvtySfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpInvtySfm" tabindex="-1" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','InvtySfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadInvtyVDBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadInvtyVDBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeInvt/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeInvt/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeInvt/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeInvt/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeInvt/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeInvt/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeInvt/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadInvtyVDBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadInvtyVDBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="invty_cd">
<f:facet name="header">
<h:panelGroup id="pg_invty_cd_tt">
<h:outputText id="hd_invty_cd_tt_xide" title="#{iimsg.InvtyVD_invty_cd_tt}" value="#{iimsg.InvtyVD_invty_cd_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_tt">
<h:outputText id="hd_invty_tp_tt" title="#{iimsg.InvtyVD_invty_tp_tt}" value="#{iimsg.InvtyVD_invty_tp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_nm">
<f:facet name="header">
<h:panelGroup id="pg_invty_nm_tt">
<h:outputText id="hd_invty_nm_tt_xide" title="#{iimsg.InvtyVD_invty_nm_tt}" value="#{iimsg.InvtyVD_invty_nm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_dt">
<f:facet name="header">
<h:panelGroup id="pg_invty_dt_tt">
<h:outputText id="hd_invty_dt_tt_xide" title="#{iimsg.InvtyVD_invty_dt_tt}" value="#{iimsg.InvtyVD_invty_dt_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vg_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_vg_tt">
<h:outputText id="hd_invty_tp_vg_tt" title="#{iimsg.InvtyVD_invty_tp_vg_tt}" value="#{iimsg.InvtyVD_invty_tp_vg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lc_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_lc_tt">
<h:outputText id="hd_invty_tp_lc_tt" title="#{iimsg.InvtyVD_invty_tp_lc_tt}" value="#{iimsg.InvtyVD_invty_tp_lc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lp_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_lp_tt">
<h:outputText id="hd_invty_tp_lp_tt" title="#{iimsg.InvtyVD_invty_tp_lp_tt}" value="#{iimsg.InvtyVD_invty_tp_lp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lr_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_lr_tt">
<h:outputText id="hd_invty_tp_lr_tt" title="#{iimsg.InvtyVD_invty_tp_lr_tt}" value="#{iimsg.InvtyVD_invty_tp_lr_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dp_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_dp_tt">
<h:outputText id="hd_invty_tp_dp_tt" title="#{iimsg.InvtyVD_invty_tp_dp_tt}" value="#{iimsg.InvtyVD_invty_tp_dp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dc_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_dc_tt">
<h:outputText id="hd_invty_tp_dc_tt" title="#{iimsg.InvtyVD_invty_tp_dc_tt}" value="#{iimsg.InvtyVD_invty_tp_dc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pn_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_pn_tt">
<h:outputText id="hd_invty_tp_pn_tt" title="#{iimsg.InvtyVD_invty_tp_pn_tt}" value="#{iimsg.InvtyVD_invty_tp_pn_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ps_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_ps_tt">
<h:outputText id="hd_invty_tp_ps_tt" title="#{iimsg.InvtyVD_invty_tp_ps_tt}" value="#{iimsg.InvtyVD_invty_tp_ps_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pi_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_pi_tt">
<h:outputText id="hd_invty_tp_pi_tt" title="#{iimsg.InvtyVD_invty_tp_pi_tt}" value="#{iimsg.InvtyVD_invty_tp_pi_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pt_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_pt_tt">
<h:outputText id="hd_invty_tp_pt_tt" title="#{iimsg.InvtyVD_invty_tp_pt_tt}" value="#{iimsg.InvtyVD_invty_tp_pt_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tu_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_tu_tt">
<h:outputText id="hd_invty_tp_tu_tt" title="#{iimsg.InvtyVD_invty_tp_tu_tt}" value="#{iimsg.InvtyVD_invty_tp_tu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vd_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_vd_tt">
<h:outputText id="hd_invty_tp_vd_tt" title="#{iimsg.InvtyVD_invty_tp_vd_tt}" value="#{iimsg.InvtyVD_invty_tp_vd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_bu_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_bu_tt">
<h:outputText id="hd_invty_tp_bu_tt" title="#{iimsg.InvtyVD_invty_tp_bu_tt}" value="#{iimsg.InvtyVD_invty_tp_bu_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ed_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_ed_tt">
<h:outputText id="hd_invty_tp_ed_tt" title="#{iimsg.InvtyVD_invty_tp_ed_tt}" value="#{iimsg.InvtyVD_invty_tp_ed_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_tp_tt">
<h:outputText id="hd_invty_tp_tp_tt" title="#{iimsg.InvtyVD_invty_tp_tp_tt}" value="#{iimsg.InvtyVD_invty_tp_tp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tl_tt">
<f:facet name="header">
<h:panelGroup id="pg_invty_tp_tl_tt">
<h:outputText id="hd_invty_tp_tl_tt" title="#{iimsg.InvtyVD_invty_tp_tl_tt}" value="#{iimsg.InvtyVD_invty_tp_tl_ta}"/>
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
<h:column rendered="#{cadInvtyVDBean.assist}">
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
<!-- propColumnGen -->
<h:column id="invty_cd">
<f:facet name="footer">
<h:panelGroup id="fpg_invty_cd">
<h:inputText id="invty_cd_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp">
<h:inputText id="fil_invty_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'INVTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_invty_nm">
<h:inputText id="invty_nm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_dt">
<f:facet name="footer">
<h:panelGroup id="fpg_invty_dt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_vg">
<h:inputText id="fil_invty_tp_vg_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_vg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_lc">
<h:inputText id="fil_invty_tp_lc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_lc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_lp">
<h:inputText id="fil_invty_tp_lp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_lp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lr_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_lr">
<h:inputText id="fil_invty_tp_lr_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_lr}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_dp">
<h:inputText id="fil_invty_tp_dp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_dp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dc_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_dc">
<h:inputText id="fil_invty_tp_dc_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_dc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pn_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_pn">
<h:inputText id="fil_invty_tp_pn_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_pn}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ps_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_ps">
<h:inputText id="fil_invty_tp_ps_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_ps}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pi_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_pi">
<h:inputText id="fil_invty_tp_pi_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_pi}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pt_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_pt">
<h:inputText id="fil_invty_tp_pt_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_pt}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tu_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_tu">
<h:inputText id="fil_invty_tp_tu_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_tu}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vd_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_vd">
<h:inputText id="fil_invty_tp_vd_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_vd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_bu_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_bu">
<h:inputText id="fil_invty_tp_bu_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_bu}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ed_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_ed">
<h:inputText id="fil_invty_tp_ed_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_ed}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_tp">
<h:inputText id="fil_invty_tp_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tl_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_invty_tp_tl">
<h:inputText id="fil_invty_tp_tl_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNSIT', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadInvtyVDBean.fil_invty_tp_tl}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadInvtyVDBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadInvtyVDBean.pesqData}"
var="Invty"
binding="#{cadInvtyVDBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadInvtyVDBean.pageLength}"
first="#{cadInvtyVDBean.currentLine}">
<!-- propColumnGen -->
<h:column id="invty_cd">
<h:panelGroup id="pg_invty_cd_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_invty_cd"  onclick="slvl(this.id,this.value);" value="#{Invty.invty_cd}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp">
<h:panelGroup id="pg_invty_tp_sg">
<h:outputLabel id="sel_invty_tp" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_nm">
<h:panelGroup id="pg_invty_nm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_invty_nm"  onclick="slvl(this.id,this.value);" value="#{Invty.invty_nm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="invty_dt">
<h:panelGroup id="pg_invty_dt_sg">
<h:outputText id="sel_invty_dt" value="#{Invty.invty_dt_str}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vg">
<h:panelGroup id="pg_invty_tp_vg_sg">
<h:outputLabel id="sel_invty_tp_vg" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_vg}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lc">
<h:panelGroup id="pg_invty_tp_lc_sg">
<h:outputLabel id="sel_invty_tp_lc" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_lc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lp">
<h:panelGroup id="pg_invty_tp_lp_sg">
<h:outputLabel id="sel_invty_tp_lp" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_lp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_lr">
<h:panelGroup id="pg_invty_tp_lr_sg">
<h:outputLabel id="sel_invty_tp_lr" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_lr}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dp">
<h:panelGroup id="pg_invty_tp_dp_sg">
<h:outputLabel id="sel_invty_tp_dp" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_dp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_dc">
<h:panelGroup id="pg_invty_tp_dc_sg">
<h:outputLabel id="sel_invty_tp_dc" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_dc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pn">
<h:panelGroup id="pg_invty_tp_pn_sg">
<h:outputLabel id="sel_invty_tp_pn" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_pn}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ps">
<h:panelGroup id="pg_invty_tp_ps_sg">
<h:outputLabel id="sel_invty_tp_ps" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_ps}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pi">
<h:panelGroup id="pg_invty_tp_pi_sg">
<h:outputLabel id="sel_invty_tp_pi" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_pi}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_pt">
<h:panelGroup id="pg_invty_tp_pt_sg">
<h:outputLabel id="sel_invty_tp_pt" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_pt}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tu">
<h:panelGroup id="pg_invty_tp_tu_sg">
<h:outputLabel id="sel_invty_tp_tu" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_tu}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_vd">
<h:panelGroup id="pg_invty_tp_vd_sg">
<h:outputLabel id="sel_invty_tp_vd" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_vd}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_bu">
<h:panelGroup id="pg_invty_tp_bu_sg">
<h:outputLabel id="sel_invty_tp_bu" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_bu}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_ed">
<h:panelGroup id="pg_invty_tp_ed_sg">
<h:outputLabel id="sel_invty_tp_ed" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_ed}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tp">
<h:panelGroup id="pg_invty_tp_tp_sg">
<h:outputLabel id="sel_invty_tp_tp" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_tp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="invty_tp_tl">
<h:panelGroup id="pg_invty_tp_tl_sg">
<h:outputLabel id="sel_invty_tp_tl" onclick="slvlcd(this.id,this.value);" value="#{Invty.invty_tp_tl}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadInvtyVDBean.doObternullSearchBack}" onmousedown="wtran='invtyvdcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_invty_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadInvtyVDBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_invty_cd');desc=null;update(valor,desc);" image="../imagens/btSel.gif"/>
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
<td width="15" background="../imagens/thmeInvt/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeInvt/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeInvt/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeInvt/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="InvtyVD" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadInvtyVDBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadInvtyVDBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_invtyvd" action="#{cadInvtyVDBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtyvd" action="#{cadInvtyVDBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
