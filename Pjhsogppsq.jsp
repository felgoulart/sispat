<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadPjhsogpBean");%>
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
<link rel="stylesheet" href="../Pjhsogppsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<script src="../Pjhsogpfunctions.js" type="text/javascript" language="javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("pjhsogppsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_pjhso_tp_acao_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_pjhso_st_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadPjhsogpBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='PjhsogpSfm';;tran='pjhsogppsq'; vl='';cadbeanx='cadPjhsogpBean';<%session.setAttribute("tipo","pjhsogppsq");%>">
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
<h:outputText value="#{cadPjhsogpBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btVoltar.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjauscad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjausBean.doObterBack}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadPjhsogpBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadPjhsogpBean.hasPrevPage}" action="#{cadPjhsogpBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadPjhsogpBean.hasNextPage}" action="#{cadPjhsogpBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadPjhsogpBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadPjhsogpBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadPjhsogpBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadPjhsogpBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('pjhsogpcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadPjhsogpBean.doNovoUpload}"/>
<h:commandButton id="XlsExport_xls_stb" rendered="#{cadPjhsogpBean.canPesquisar}" title="#{iimsg.Pjhsogp_XlsExport_xls_stb_tt}" image="../imagens/excellRed.jpg" action="#{cadPjhsogpBean.doXlsExport_xls_stb}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Pjhso');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpPjhsogpSfm" tabindex="-1" rendered="#{cadPjhsogpBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','PjhsogpSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadPjhsogpBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadPjhsogpBean.xhelp_rc}" />
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
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey 3 --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_pjhso_id_pjaus" for="pjhso_id_pjaus"  title="#{iimsg.Pjhsogp_pjhso_id_pjaus_tt}"  value="#{iimsg.Pjhsogp_pjhso_id_pjaus_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="pjhso_id_pjaus" tabindex="-1" readonly="true" value="#{cadPjhsogpBean.pjhso_id_pjaus}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="pjhso_id_pjaus_desc" value="#{cadPjhsogpBean.pjhso_id_pjaus_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadPjhsogpBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadPjhsogpBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="pjhso_dt_evento">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_dt_evento_tt">
<h:outputText id="hd_pjhso_dt_evento_tt_xide" title="#{iimsg.Pjhsogp_pjhso_dt_evento_tt}" value="#{iimsg.Pjhsogp_pjhso_dt_evento_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_dt_eventx">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_dt_eventx_tt">
<h:outputText id="hd_pjhso_dt_eventx_tt_xide" title="#{iimsg.Pjhsogp_pjhso_dt_eventx_tt}" value="#{iimsg.Pjhsogp_pjhso_dt_eventx_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_tp_entidade">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_tp_entidade_tt">
<h:outputText id="hd_pjhso_tp_entidade_tt_xide" title="#{iimsg.Pjhsogp_pjhso_tp_entidade_tt}" value="#{iimsg.Pjhsogp_pjhso_tp_entidade_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_tp_acao_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_tp_acao_tt">
<h:outputText id="hd_pjhso_tp_acao_tt" title="#{iimsg.Pjhsogp_pjhso_tp_acao_tt}" value="#{iimsg.Pjhsogp_pjhso_tp_acao_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_de">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_cd_de_tt">
<h:outputText id="hd_pjhso_cd_de_tt_xide" title="#{iimsg.Pjhsogp_pjhso_cd_de_tt}" value="#{iimsg.Pjhsogp_pjhso_cd_de_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_para">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_cd_para_tt">
<h:outputText id="hd_pjhso_cd_para_tt_xide" title="#{iimsg.Pjhsogp_pjhso_cd_para_tt}" value="#{iimsg.Pjhsogp_pjhso_cd_para_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_prcc">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_cd_prcc_tt">
<h:outputText id="hd_pjhso_cd_prcc_tt_xide" title="#{iimsg.Pjhsogp_pjhso_cd_prcc_tt}" value="#{iimsg.Pjhsogp_pjhso_cd_prcc_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_st_tt">
<h:outputText id="hd_pjhso_st_tt" title="#{iimsg.Pjhsogp_pjhso_st_tt}" value="#{iimsg.Pjhsogp_pjhso_st_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_ds_assunto">
<f:facet name="header">
<h:panelGroup id="pg_pjhso_ds_assunto_tt">
<h:outputText id="hd_pjhso_ds_assunto_tt_xide" title="#{iimsg.Pjhsogp_pjhso_ds_assunto_tt}" value="#{iimsg.Pjhsogp_pjhso_ds_assunto_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Pjhsogp_tabs_vc_tt}" value="#{iimsg.Pjhsogp_tabs_vc_ta}"/>
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
<!-- propColumnGen -->
<h:column id="pjhso_dt_evento">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_dt_evento">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_dt_eventx">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_dt_eventx">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_tp_entidade">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_tp_entidade">
<h:inputText id="pjhso_tp_entidade_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_tp_entidade}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_tp_acao_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjhso_tp_acao">
<h:inputText id="fil_pjhso_tp_acao_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPAPS', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_tp_acao}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_de">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_cd_de">
<h:inputText id="pjhso_cd_de_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_cd_de}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_para">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_cd_para">
<h:inputText id="pjhso_cd_para_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_cd_para}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_prcc">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_cd_prcc">
<h:inputText id="pjhso_cd_prcc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_cd_prcc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_pjhso_st">
<h:inputText id="fil_pjhso_st_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STPRC', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_ds_assunto">
<f:facet name="footer">
<h:panelGroup id="fpg_pjhso_ds_assunto">
<h:inputText id="pjhso_ds_assunto_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_pjhso_ds_assunto}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadPjhsogpBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:401px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadPjhsogpBean.pesqData}"
var="Pjhso"
binding="#{cadPjhsogpBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadPjhsogpBean.pageLength}"
first="#{cadPjhsogpBean.currentLine}">
<!-- propColumnGen -->
<h:column id="pjhso_dt_evento">
<h:panelGroup id="pg_pjhso_dt_evento_sg">
<h:outputText id="sel_pjhso_dt_evento" value="#{Pjhso.pjhso_dt_evento_str}"/>
<h:inputHidden id="sel_pjhso_sq_dthm" value="#{Pjhso.pjhso_sq_dthm}"/>
<h:inputHidden id="sel_pjhso_tp_cfpjtp" value="#{Pjhso.pjhso_tp_cfpjtp}"/>
<h:inputHidden id="sel_pjhso_ds_depara" value="#{Pjhso.pjhso_ds_depara}"/>
<h:inputHidden id="sel_pjhso_ds_deparax" value="#{Pjhso.pjhso_ds_deparax}"/>
<h:inputHidden id="sel_pjhso_st_sum" value="#{Pjhso.pjhso_st_sum}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_dt_eventx">
<h:panelGroup id="pg_pjhso_dt_eventx_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_dt_eventx"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_dt_eventx}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_tp_entidade">
<h:panelGroup id="pg_pjhso_tp_entidade_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_tp_entidade"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_tp_entidade}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_tp_acao">
<h:panelGroup id="pg_pjhso_tp_acao_sg">
<h:outputLabel id="sel_pjhso_tp_acao" onclick="slvlcd(this.id,this.value);" value="#{Pjhso.pjhso_tp_acao}"/>
<h:outputText id="pjhso_tp_acao_desc" value="#{Pjhso.pjhso_tp_acao_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_de">
<h:panelGroup id="pg_pjhso_cd_de_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_cd_de"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_cd_de}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_para">
<h:panelGroup id="pg_pjhso_cd_para_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_cd_para"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_cd_para}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_cd_prcc">
<h:panelGroup id="pg_pjhso_cd_prcc_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_cd_prcc"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_cd_prcc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="pjhso_st">
<h:panelGroup id="pg_pjhso_st_sg">
<h:outputLabel id="sel_pjhso_st" title="#{Pjhso.pjhso_st_desc}" onclick="slvlcd(this.id,this.value);" value="#{Pjhso.pjhso_st}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="pjhso_ds_assunto">
<h:panelGroup id="pg_pjhso_ds_assunto_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_pjhso_ds_assunto"  onclick="slvl(this.id,this.value);" value="#{Pjhso.pjhso_ds_assunto}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgPjhsogp" onmousedown="wtran='pjhsogpcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_pjhso_id_pjaus').value;valor2=el(aa+'sel_pjhso_sq').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Pjhso.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_pjhso_id_pjaus" value="#{Pjhso.pjhso_id_pjaus}"/>
<h:inputHidden id="sel_pjhso_sq" value="#{Pjhso.pjhso_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadPjhsogpBean.doObternullSearchBack}" onmousedown="wtran='pjhsogpcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_pjhso_id_pjaus');valor2=rpel(aa+'sel_pjhso_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
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
<iframe id="Pjhsogp" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="pjhsocont" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdocpj" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadPjhsogpBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadPjhsogpBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_pjhsogp" action="#{cadPjhsogpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjhsogp" action="#{cadPjhsogpBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_pjaus" action="#{cadPjausBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjausppaobtv" action="#{cadPjausppaobtvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjausppaobtv" action="#{cadPjausppaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjausppaobtv" action="#{cadPjausppaobtvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaot" action="#{cadPjauspaaotBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaot" action="#{cadPjauspaaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaot" action="#{cadPjauspaaotBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaop" action="#{cadPjauspaaopBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaop" action="#{cadPjauspaaopBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaop" action="#{cadPjauspaaopBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaittv" action="#{cadPjauspaaittvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaittv" action="#{cadPjauspaaittvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaittv" action="#{cadPjauspaaittvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaaitps" action="#{cadPjauspaaitpsBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaaitps" action="#{cadPjauspaaitpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaaitps" action="#{cadPjauspaaitpsBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspapus" action="#{cadPjauspapusBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspapus" action="#{cadPjauspapusBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspapus" action="#{cadPjauspapusBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaepb" action="#{cadPjauspaepbBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaepb" action="#{cadPjauspaepbBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaepb" action="#{cadPjauspaepbBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspapsv" action="#{cadPjauspapsvBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspapsv" action="#{cadPjauspapsvBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspapsv" action="#{cadPjauspapsvBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjauspaetm" action="#{cadPjauspaetmBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjauspaetm" action="#{cadPjauspaetmBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjauspaetm" action="#{cadPjauspaetmBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_pjhsocont" action="#{cadPjhsocontBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pjhsocont" action="#{cadPjhsocontBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pjhsocont" action="#{cadPjhsocontBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpj" action="#{cadObdocpjBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpj" action="#{cadObdocpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpjckl" action="#{cadObdocpjcklBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpjcklop" action="#{cadObdocpjcklopBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpjcklop" action="#{cadObdocpjcklopBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpjcklop" action="#{cadObdocpjcklopBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdocpjeml" action="#{cadObdocpjemlBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdocpjeml" action="#{cadObdocpjemlBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
