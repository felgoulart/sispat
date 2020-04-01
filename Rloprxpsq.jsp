<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadRloprxBean");%>
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
<link rel="stylesheet" href="../Rloprxpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("rloprpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:rlopr_id_opern_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_rlopr_cd_trctg_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:rlopr_cd_accr_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadRloprxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='RloprxSfm';;tran='rloprxpsq'; vl='';cadbeanx='cadRloprxBean';<%session.setAttribute("tipo","rloprxpsq");%>">
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
<h:outputText value="#{cadRloprxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'rloprxcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadRloprxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadRloprxBean.hasPrevPage}" action="#{cadRloprxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadRloprxBean.hasNextPage}" action="#{cadRloprxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadRloprxBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadRloprxBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadRloprxBean.doLimparPesq}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Rlopr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldxSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpRloprxSfm" tabindex="-1" rendered="#{cadRloprxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','RloprxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadRloprxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadRloprxBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadRloprxBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadRloprxBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="rlopr_id_opern_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_rlopr_id_opern_tt">
<h:outputText id="hd_rlopr_id_opern_tt" title="#{iimsg.Rlopr_rlopr_id_opern_tt}" value="#{iimsg.Rlopr_rlopr_id_opern_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="rlopr_cd_trctg_tt">
<f:facet name="header">
<h:panelGroup id="pg_rlopr_cd_trctg_tt">
<h:outputText id="hd_rlopr_cd_trctg_tt" title="#{iimsg.Rlopr_rlopr_cd_trctg_tt}" value="#{iimsg.Rlopr_rlopr_cd_trctg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_trnam">
<f:facet name="header">
<h:panelGroup id="pg_rlopr_cd_trnam_tt">
<h:outputText id="hd_rlopr_cd_trnam_tt_xide" title="#{iimsg.Rlopr_rlopr_cd_trnam_tt}" value="#{iimsg.Rlopr_rlopr_cd_trnam_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="rlopr_cd_accr_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_rlopr_cd_accr_tt">
<h:outputText id="hd_rlopr_cd_accr_tt" title="#{iimsg.Rlopr_rlopr_cd_accr_tt}" value="#{iimsg.Rlopr_rlopr_cd_accr_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_accr_actions">
<f:facet name="header">
<h:panelGroup id="pg_rlopr_cd_accr_actions_tt">
<h:outputText id="hd_rlopr_cd_accr_actions_tt_xide" title="#{iimsg.Rlopr_rlopr_cd_accr_actions_tt}" value="#{iimsg.Rlopr_rlopr_cd_accr_actions_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<h:column id="chk_varchk">
<f:facet name="header">
<h:panelGroup id="pg_selected_tt">
<h:selectBooleanCheckbox id="chk_var_sel_tt" onclick="ckbSelAll(this.id);" title="#{iimsg.Rlopr_chk_var_tt}" />
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Rlopr_tabs_vc_tt}" value="#{iimsg.Rlopr_tabs_vc_ta}"/>
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
<h:column id="rlopr_id_opern_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_rlopr_id_opern">
<!--   // 444-->
<h:inputText id="rlopr_id_opern_xfil" title="#{iimsg.hint_dblclick}" ondblclick="this.value=''" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadRloprxBean.fil_rlopr_id_opern}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="rlopr_cd_trctg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_rlopr_cd_trctg">
<h:inputText id="fil_rlopr_cd_trctg_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TRCTG', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadRloprxBean.fil_rlopr_cd_trctg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_trnam">
<f:facet name="footer">
<h:panelGroup id="fpg_rlopr_cd_trnam">
<h:inputText id="rlopr_cd_trnam_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadRloprxBean.fil_rlopr_cd_trnam}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="rlopr_cd_accr_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_rlopr_cd_accr">
<!--   // 444-->
<h:inputText id="rlopr_cd_accr_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('accrpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadRloprxBean.fil_rlopr_cd_accr}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_accr_actions">
<f:facet name="footer">
<h:panelGroup id="fpg_rlopr_cd_accr_actions">
<h:inputText id="rlopr_cd_accr_actions_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadRloprxBean.fil_rlopr_cd_accr_actions}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadRloprxBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadRloprxBean.pesqData}"
var="Rlopr"
binding="#{cadRloprxBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadRloprxBean.pageLength}"
first="#{cadRloprxBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="rlopr_id_opern_fk">
<h:panelGroup id="pg_rlopr_id_opern_sg">
<!--   // 333-->
<h:outputLabel id="sel_rlopr_id_opern" onclick="slvl(this.id,this.value);" value="#{Rlopr.rlopr_id_opern}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="rlopr_cd_trctg">
<h:panelGroup id="pg_rlopr_cd_trctg_sg">
<h:outputLabel id="sel_rlopr_cd_trctg" title="#{Rlopr.rlopr_cd_trctg_desc}" onclick="slvlcd(this.id,this.value);" value="#{Rlopr.rlopr_cd_trctg}"/>
<h:inputHidden id="sel_rlopr_tp_trans" value="#{Rlopr.rlopr_tp_trans}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_trnam">
<h:panelGroup id="pg_rlopr_cd_trnam_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_rlopr_cd_trnam"  onclick="slvl(this.id,this.value);" value="#{Rlopr.rlopr_cd_trnam}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="rlopr_cd_accr_fk">
<h:panelGroup id="pg_rlopr_cd_accr_sg">
<!--   // 333-->
<h:outputLabel id="sel_rlopr_cd_accr" title="#{Rlopr.rlopr_cd_accr_desc}" onclick="slvl(this.id,this.value);" value="#{Rlopr.rlopr_cd_accr}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="rlopr_cd_accr_actions">
<h:panelGroup id="pg_rlopr_cd_accr_actions_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_rlopr_cd_accr_actions"  onclick="slvl(this.id,this.value);" value="#{Rlopr.rlopr_cd_accr_actions}"/>
</h:panelGroup>
</h:column>
<h:column id="chk_varchk">
<h:panelGroup id="pg_chk_var_sg">
<h:selectBooleanCheckbox id="chk_var" value="#{Rlopr.selected}" onclick="" />
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgRlopr" onmousedown="wtran='rloprcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_rlopr_id_role').value;valor2=el(aa+'sel_rlopr_id_opern').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Rlopr.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_rlopr_id_role" value="#{Rlopr.rlopr_id_role}"/>
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadRloprxBean.doObternullSearchBack}" onmousedown="wtran='rloprxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_rlopr_id_role');valor2=rpel(aa+'sel_rlopr_id_opern');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<h:panelGroup id="pg_recd_wd_sgpk">
<h:inputHidden id="sel_rlopr_id_rolepk" value="#{Rlopr.rlopr_id_role}"/>
<!-- 111--> <h:commandLink id="flag_imgrecd_wdpk" action="#{cadRolexBean.doObternull}" onmousedown="openningForm();el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_rlopr_id_role');typevl=rpel(aa+'sel_rlopr_tp_trans');tranx=RoleType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey;showpopup(tran,'xrec_'+tranx,this.id,wtran,'yes');">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_buttonpk}" styleClass="btp" />
</h:commandLink>
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
<iframe id="Rlopr" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadRloprxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadRloprxBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_rlopr" action="#{cadRloprBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_rlopr" action="#{cadRloprBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_trans" action="#{cadTransBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_trans" action="#{cadTransBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_accr" action="#{cadAccrBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_accr" action="#{cadAccrBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_accr" action="#{cadAccrBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<!-- Super Trans Subtypes commandLinks -->
</h:form>
</body>
</html>
</f:view>
