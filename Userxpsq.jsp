<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadUserxBean");%>
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
<link rel="stylesheet" href="../Userxpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("userxpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:userx_id_role_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:userx_id_trans_xfil', 'pfdb9', 'pfd9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadUserxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='UserxSfm';;tran='userxpsq'; vl='';cadbeanx='cadUserxBean';<%session.setAttribute("tipo","userxpsq");%>">
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
<h:outputText value="#{cadUserxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadUserxBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadUserxBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadUserxBean.hasPrevPage}" action="#{cadUserxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadUserxBean.hasNextPage}" action="#{cadUserxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadUserxBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadUserxBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadUserxBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadUserxBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('userxcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadUserxBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Userx');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpUserxSfm" tabindex="-1" rendered="#{cadUserxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','UserxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadUserxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadUserxBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadUserxBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadUserxBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="userx_id_login_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_userx_id_login_tt">
<h:outputText id="hd_userx_id_login_tt" title="#{iimsg.Userx_userx_id_login_tt}" value="#{iimsg.Userx_userx_id_login_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_nm">
<f:facet name="header">
<h:panelGroup id="pg_userx_nm_tt">
<h:outputText id="hd_userx_nm_tt_xide" title="#{iimsg.Userx_userx_nm_tt}" value="#{iimsg.Userx_userx_nm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_id_external">
<f:facet name="header">
<h:panelGroup id="pg_userx_id_external_tt">
<h:outputText id="hd_userx_id_external_tt_xide" title="#{iimsg.Userx_userx_id_external_tt}" value="#{iimsg.Userx_userx_id_external_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_role_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_userx_id_role_tt">
<h:outputText id="hd_userx_id_role_tt" title="#{iimsg.Userx_userx_id_role_tt}" value="#{iimsg.Userx_userx_id_role_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_trans_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_userx_id_trans_tt">
<h:outputText id="hd_userx_id_trans_tt" title="#{iimsg.Userx_userx_id_trans_tt}" value="#{iimsg.Userx_userx_id_trans_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_cd_telephone">
<f:facet name="header">
<h:panelGroup id="pg_userx_cd_telephone_tt">
<h:outputText id="hd_userx_cd_telephone_tt_xide" title="#{iimsg.Userx_userx_cd_telephone_tt}" value="#{iimsg.Userx_userx_cd_telephone_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Userx_tabs_vc_tt}" value="#{iimsg.Userx_tabs_vc_ta}"/>
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
<h:column rendered="#{cadUserxBean.assist}">
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
<h:column id="userx_id_login_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_id_login">
<h:inputText id="userx_id_login_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadUserxBean.fil_userx_id_login}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_nm">
<h:inputText id="userx_nm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadUserxBean.fil_userx_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_id_external">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_id_external">
<h:inputText id="userx_id_external_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadUserxBean.fil_userx_id_external}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_role_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_id_role">
<!--   // 444-->
<h:inputText id="userx_id_role_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('rolepsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadUserxBean.fil_userx_id_role}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_trans_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_id_trans">
<!--   // 444-->
<h:inputText id="userx_id_trans_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('transmenupsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadUserxBean.fil_userx_id_trans}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_cd_telephone">
<f:facet name="footer">
<h:panelGroup id="fpg_userx_cd_telephone">
<h:inputText id="userx_cd_telephone_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadUserxBean.fil_userx_cd_telephone}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadUserxBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadUserxBean.assist}">
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
value="#{cadUserxBean.pesqData}"
var="Userx"
binding="#{cadUserxBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadUserxBean.pageLength}"
first="#{cadUserxBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="userx_id_login_fk">
<h:panelGroup id="pg_userx_id_login_sg">
<!--   // 333-->
<h:outputLabel id="sel_userx_id_login" onclick="slvl(this.id,this.value);" value="#{Userx.userx_id_login}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_nm">
<h:panelGroup id="pg_userx_nm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_userx_nm"  onclick="slvl(this.id,this.value);" value="#{Userx.userx_nm}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_id_external">
<h:panelGroup id="pg_userx_id_external_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_userx_id_external"  onclick="slvl(this.id,this.value);" value="#{Userx.userx_id_external}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_role_fk">
<h:panelGroup id="pg_userx_id_role_sg">
<!--   // 333-->
<h:outputLabel id="sel_userx_id_role" onclick="slvl(this.id,this.value);" value="#{Userx.userx_id_role}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="userx_id_trans_fk">
<h:panelGroup id="pg_userx_id_trans_sg">
<!--   // 333-->
<h:outputLabel id="sel_userx_id_trans" onclick="slvl(this.id,this.value);" value="#{Userx.userx_id_trans}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="userx_cd_telephone">
<h:panelGroup id="pg_userx_cd_telephone_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_userx_cd_telephone"  onclick="slvl(this.id,this.value);" value="#{Userx.userx_cd_telephone}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgUserx" onmousedown="wtran='userxcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_userx_id_login').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Userx.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadUserxBean.doObternullSearchBack}" onmousedown="wtran='userxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_userx_id_login');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadUserxBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_userx_id_login');desc=rel(aa+'sel_userx_nm');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Userx" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="role" width="0" height="0" frameborder="0"> </iframe>
<iframe id="transmenu" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadUserxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadUserxBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_userx" action="#{cadUserxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_userx" action="#{cadUserxBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_userx" action="#{cadUserxBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_userx" action="#{cadUserxBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_userx" action="#{cadUserxBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_role" action="#{cadRoleBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_role" action="#{cadRoleBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_transmenu" action="#{cadTransmenuBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_transmenu" action="#{cadTransmenuBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_transmenu" action="#{cadTransmenuBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
