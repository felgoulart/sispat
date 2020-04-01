<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObdocpjcklBean");%>
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
<link rel="stylesheet" href="../Obdocpjcklpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obdocpjcklpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_obdocpj_cl_type_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obdocpj_st_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObdocpjcklBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObdocpjcklSfm';;tran='obdocpjcklpsq'; vl='';cadbeanx='cadObdocpjcklBean';<%session.setAttribute("tipo","obdocpjcklpsq");%>">
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
<h:outputText value="#{cadObdocpjcklBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btVoltar.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjauscad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadPjausBean.doObterBack}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'obdocpjcklcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadObdocpjcklBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObdocpjcklBean.hasPrevPage}" action="#{cadObdocpjcklBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObdocpjcklBean.hasNextPage}" action="#{cadObdocpjcklBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObdocpjcklBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObdocpjcklBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObdocpjcklBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadObdocpjcklBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('obdocpjcklcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadObdocpjcklBean.doNovoUpload}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obdocpj');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObdocpjcklSfm" tabindex="-1" rendered="#{cadObdocpjcklBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObdocpjcklSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObdocpjcklBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObdocpjcklBean.xhelp_rc}" />
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
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_obdocpj_id" for="obdocpj_id"  title="#{iimsg.Obdocpjckl_obdocpj_id_tt}"  value="#{iimsg.Obdocpjckl_obdocpj_id_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="obdocpj_id" tabindex="-1" readonly="true" value="#{cadObdocpjcklBean.obdocpj_id}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="obdocpj_id_desc" value="#{cadObdocpjcklBean.obdocpj_id_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
<td   ><h:outputLabel  styleClass="tip txl pl0"  id="lbl_p_seltype" for="p_seltype"  value="#{iimsg.Obdocpjckl_p_seltype_tt}"/>
</td> <%-- <close td> selectBoolean --%>
<td   width="200"   >
<h:inputHidden id="p_seltype_bol" value="#{cadObdocpjcklBean.p_seltype}"/>
<h:selectBooleanCheckbox id="p_seltype" value="#{cadObdocpjcklBean.p_seltype_bol}" onclick="chkBoolean(this, 'cadForm:p_seltype_bol');"/>
</td> <%-- <close td> selectBoolean --%>
<td   > <h:commandButton id="PackFilesFromSList" title="#{iimsg.Obdocpjckl_PackFilesFromSList_tt}" value="#{iimsg.Obdocpjckl_PackFilesFromSList_ta}" styleClass="btnBox160"  action="#{cadObdocpjcklBean.PackFilesFromSList}" onmousedown="ckbSelListx__a('obdocpj_nm_file')"/>
<h:inputHidden id="selection_list_var" value="#{cadObdocpjcklBean.selection_list_var}"/>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadObdocpjcklBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObdocpjcklBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="obdocpj_cl_type_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_cl_type_tt">
<h:outputText id="hd_obdocpj_cl_type_tt" title="#{iimsg.Obdocpjckl_obdocpj_cl_type_tt}" value="#{iimsg.Obdocpjckl_obdocpj_cl_type_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpj_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_st_tt">
<h:outputText id="hd_obdocpj_st_tt" title="#{iimsg.Obdocpjckl_obdocpj_st_tt}" value="#{iimsg.Obdocpjckl_obdocpj_st_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_envio">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_dt_envio_tt">
<h:outputText id="hd_obdocpj_dt_envio_tt_xide" title="#{iimsg.Obdocpjckl_obdocpj_dt_envio_tt}" value="#{iimsg.Obdocpjckl_obdocpj_dt_envio_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_recepcao">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_dt_recepcao_tt">
<h:outputText id="hd_obdocpj_dt_recepcao_tt_xide" title="#{iimsg.Obdocpjckl_obdocpj_dt_recepcao_tt}" value="#{iimsg.Obdocpjckl_obdocpj_dt_recepcao_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_ds">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_ds_tt">
<h:outputText id="hd_obdocpj_ds_tt_xide" title="#{iimsg.Obdocpjckl_obdocpj_ds_tt}" value="#{iimsg.Obdocpjckl_obdocpj_ds_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_nm_file">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_nm_file_tt">
<h:outputText id="hd_obdocpj_nm_file_tt_xide" title="#{iimsg.Obdocpjckl_obdocpj_nm_file_tt}" value="#{iimsg.Obdocpjckl_obdocpj_nm_file_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="chk_varchk">
<f:facet name="header">
<h:panelGroup id="pg_selected_tt">
<h:selectBooleanCheckbox id="chk_var_sel_tt" onclick="ckbSelAll(this.id);" title="#{iimsg.Obdocpjckl_chk_var_tt}" />
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_vc">
<f:facet name="header">
<h:panelGroup id="pg_obdocpj_vc_tt">
<h:outputText id="hd_obdocpj_vc_tt_xide" title="#{iimsg.Obdocpjckl_obdocpj_vc_tt}" value="#{iimsg.Obdocpjckl_obdocpj_vc_ta}"/>
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
<h:column id="obdocpj_cl_type_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocpj_cl_type">
<h:inputText id="fil_obdocpj_cl_type_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPCKL', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocpjcklBean.fil_obdocpj_cl_type}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpj_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obdocpj_st">
<h:inputText id="fil_obdocpj_st_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'STCKL', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObdocpjcklBean.fil_obdocpj_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_envio">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpj_dt_envio">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_recepcao">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpj_dt_recepcao">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpj_ds">
<h:inputText id="obdocpj_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocpjcklBean.fil_obdocpj_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_nm_file">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpj_nm_file">
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="chk_varchk">
<f:facet name="footer">
<h:panelGroup id="pg_chk_var_sg">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_obdocpj_vc">
<h:inputText id="obdocpj_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObdocpjcklBean.fil_obdocpj_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadObdocpjcklBean.pesqData}"
var="Obdocpj"
binding="#{cadObdocpjcklBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObdocpjcklBean.pageLength}"
first="#{cadObdocpjcklBean.currentLine}">
<!-- codfColumnGen -->
<h:column id="obdocpj_cl_type">
<h:panelGroup id="pg_obdocpj_cl_type_sg">
<h:outputLabel id="sel_obdocpj_cl_type" onclick="slvlcd(this.id,this.value);" value="#{Obdocpj.obdocpj_cl_type}"/>
<h:outputText id="obdocpj_cl_type_desc" value="#{Obdocpj.obdocpj_cl_type_desc}"/>
<h:inputHidden id="sel_obdocpj_cl" value="#{Obdocpj.obdocpj_cl}"/>
<h:inputHidden id="sel_obdocpj_cl_typex" value="#{Obdocpj.obdocpj_cl_typex}"/>
<h:inputHidden id="sel_obdocpj_cd_file" value="#{Obdocpj.obdocpj_cd_file}"/>
<h:inputHidden id="sel_obdocpj_tp_cfpjtp" value="#{Obdocpj.obdocpj_tp_cfpjtp}"/>
<h:inputHidden id="sel_obdocpj_ct" value="#{Obdocpj.obdocpj_ct}"/>
<h:inputHidden id="sel_obdocpj_in_ultimo" value="#{Obdocpj.obdocpj_in_ultimo}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obdocpj_st">
<h:panelGroup id="pg_obdocpj_st_sg">
<h:outputLabel id="sel_obdocpj_st" onclick="slvlcd(this.id,this.value);" value="#{Obdocpj.obdocpj_st}"/>
<h:outputText id="obdocpj_st_desc" value="#{Obdocpj.obdocpj_st_desc}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_envio">
<h:panelGroup id="pg_obdocpj_dt_envio_sg">
<h:outputText id="sel_obdocpj_dt_envio" value="#{Obdocpj.obdocpj_dt_envio_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_dt_recepcao">
<h:panelGroup id="pg_obdocpj_dt_recepcao_sg">
<h:outputText id="sel_obdocpj_dt_recepcao" value="#{Obdocpj.obdocpj_dt_recepcao_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_ds">
<h:panelGroup id="pg_obdocpj_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpj_ds"  onclick="slvl(this.id,this.value);" value="#{Obdocpj.obdocpj_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_nm_file">
<h:panelGroup id="pg_obdocpj_nm_file_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obdocpj_nm_file"  onclick="slvl(this.id,this.value);" value="#{Obdocpj.obdocpj_nm_file}"/>
</h:panelGroup>
</h:column>
<h:column id="chk_varchk">
<h:panelGroup id="pg_chk_var_sg">
<h:selectBooleanCheckbox id="chk_var" value="#{Obdocpj.selected}" onclick="" />
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obdocpj_vc">
<h:panelGroup id="pg_obdocpj_vc_sg">
<h:commandLink id="flag_imgObdocpjckl" onmousedown="wtran='obdocpjcklcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_obdocpj_id').value;valor2=el(aa+'sel_obdocpj_sq').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Obdocpj.obdocpj_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obdocpj_id" value="#{Obdocpj.obdocpj_id}"/>
<h:inputHidden id="sel_obdocpj_sq" value="#{Obdocpj.obdocpj_sq}"/>
<!-- CRC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObdocpjcklBean.doObternullSearchBack}" onmousedown="wtran='obdocpjcklcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obdocpj_id');valor2=rpel(aa+'sel_obdocpj_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
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
<iframe id="Obdocpjckl" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="obcntpjsel" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obcntpjsel" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObdocpjcklBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obdocpjckl" action="#{cadObdocpjcklBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obdocpjckl" action="#{cadObdocpjcklBean.doObternull}" immediate="true"/>
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
<h:commandLink id="xrec_obcntpjsel" action="#{cadObcntpjselBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obcntpjsel" action="#{cadObcntpjselBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
