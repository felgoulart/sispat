<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadEmailBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardEmail.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("emailpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_email_st_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:email_cd_emdst_xfil', 'pfdb9', 'pfd9');
mesgStyle(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadEmailBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='EmailSfm';tran='emailpsq'; vl='';cadbeanx='cadEmailBean';<%session.setAttribute("tipo","emailpsq");%>">
<h:form id="cadForm">
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
<%@include file="projHeader1.jsp"%>
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
<h:outputText value="#{cadEmailBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeEmail/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aPrev" styleClass="btp"  ativo="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadEmailBean.hasPrevPage}" action="#{cadEmailBean.doPaginaAnterior}">
</ps:psCommandLink>
<ps:psCommandLink id="aNext" styleClass="btp"  ativo="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadEmailBean.hasNextPage}" action="#{cadEmailBean.doProximaPagina}">
</ps:psCommandLink>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadEmailBean.doSelecionar}">
<f:param name="tipo" value="emailpsq"/>
</ps:psCommandLink>
<ps:psCommandLink id="aLimpar" styleClass="btp" enabled="#{cadEmailBean.canPesquisar}" ativo="../imagens/btCancel.gif"  disabled="" title="#{iimsg.botao_limpar}" action="#{cadEmailBean.doLimpar}">
</ps:psCommandLink>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadEmailBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('emailcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadEmailBean.doNovo}">
</ps:psCommandLink>
<ps:psCommandLink id="aHelp" styleClass="btp"  ativo="../imagens/btHelp.gif" title="#{iimsg.botao_help}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='Email';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpgen" styleClass="btp"  ativo="../imagens/btHelpGen.gif" title="#{iimsg.botao_help_gen}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='@CrudSfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpEmailSfm" styleClass="btp" enabled="#{cadEmailBean.hasHelpSpcSfm}"  ativo="../imagens/btHelpSpc.gif" title="#{iimsg.botao_help_spc}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='EmailSfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" title="#{iimsg.button_help_repository}" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<!-- aClose 2 -->
<h:inputHidden id="xmesg_rc" value="#{cadEmailBean.xmesg_rc}" />
<ps:psCommandLink id="aClose" styleClass="btp" ativo="../imagens/btClose.gif" title="#{iimsg.botao_close}"  onmousedown="window.close()">
</ps:psCommandLink>
</td>
<td width="15" height="13" background="../imagens/thmeEmail/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeEmail/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeEmail/pixel_claro.gif">
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadEmailBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadEmailBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> msg --%>
</tr> <%-- <tr close> msg--%>
</table> <%-- <search mesg frame close> --%>
<!-- Pesquisa aa-->
<table id="pesquisa_tt" style="" align="center" class="tbpq">
<tr>
<td colspan="" align="" valign="top">
<!-- Pesquisa Header Table -->
<table width="100%" cellpadding="0" cellspacing="0" style="border-left: solid 1px slategray; border-top: solid 1px slategray; border-right: solid 1px slategray;" bgcolor="" > <tr> <td>
<!-- Dados -->
<h:dataTable
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados_tt"
border="0"
rules="all">
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt" styleClass="txl pl2" style="width:14px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="email_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_email_id_tt" styleClass="  txc pr2" style="width:50px;">
<h:outputText id="hd_email_id_tt" title="#{iimsg.Email_email_id_tt}" value="#{iimsg.Email_email_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="email_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_email_st_tt" styleClass=" txl pl2" style="width:29px;">
<h:outputText id="hd_email_st_tt" title="#{iimsg.Email_email_st_tt}" value="#{iimsg.Email_email_st_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="email_cd_emdst_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_email_cd_emdst_tt" styleClass=" txl pl2" style="width:182px;">
<h:outputText id="hd_email_cd_emdst_tt" title="#{iimsg.Email_email_cd_emdst_tt}" value="#{iimsg.Email_email_cd_emdst_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="email_sb">
<f:facet name="header">
<h:panelGroup id="pg_email_sb_tt" styleClass=" txl pl2" style="width:100px;">
<h:outputText id="hd_email_sb_tt_xide" title="#{iimsg.Email_email_sb_tt}" value="#{iimsg.Email_email_sb_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="email_dh_sent">
<f:facet name="header">
<h:panelGroup id="pg_email_dh_sent_tt" styleClass=" txc pr2 pl2" style="width:173px;">
<h:outputText id="hd_email_dh_sent_tt_xide" title="#{iimsg.Email_email_dh_sent_tt}" value="#{iimsg.Email_email_dh_sent_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt" styleClass=" txc pr2 pl2" style="width:25px;">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Email_tabs_vc_tt}" value="#{iimsg.Email_tabs_vc_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="header">
<h:panelGroup id="pg_recd_wd_tt" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="hd_recd_wd_tt_xide" title="#{iimsg.rcwd_tt}" value="#{iimsg.rcwd_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmailBean.assist}">
<f:facet name="header">
<h:panelGroup id="pReg_tt" styleClass=" txc pr2 pl2" style="width:30px;">
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:outputText id="hReg_tt" value="#{iimsg.pesq_reg}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</td> </tr> </table>
<!-- Pesquisa Filter Table -->
<table width="100%" cellpadding="0" cellspacing="0" style="border-left: solid 1px slategray; border-bottom: solid 1px slategray; border-right: solid 1px slategray;" bgcolor="" > <tr> <td>
<!-- Dados -->
<h:dataTable
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados_ft"
border="0"
rules="all">
<h:column id="sel__a_scrollbar">
<f:facet name="footer">
<h:panelGroup id="pg_scrollbar__a_tt" styleClass="txl pl2" style="width:14px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="email_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_email_id" styleClass="  txr pr2" style="width:50px;">
<h:inputText id="email_id_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmailBean.fil_email_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="email_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_email_st" styleClass=" txl" style="width:29px;">
<h:inputText id="fil_email_st_xfil" title="#{iimsg.hint_dblclick}" styleClass="pfcfb9" ondblclick="pw('C'+'EMLST', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmailBean.fil_email_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="email_cd_emdst_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_email_cd_emdst" styleClass=" txl" style="width:182px;">
<!--   // 444-->
<h:inputText id="email_cd_emdst_xfil" title="#{iimsg.hint_dblclick}" styleClass="pfdb9" ondblclick="pw('emdstpsq', tran, this.id, 'no', vl);" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmailBean.fil_email_cd_emdst}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="email_sb">
<f:facet name="footer">
<h:panelGroup id="fpg_email_sb" styleClass=" txl" style="width:100px;">
<h:inputText id="email_sb_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmailBean.fil_email_sb}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="email_dh_sent">
<f:facet name="footer">
<h:panelGroup id="fpg_email_dh_sent" styleClass=" txc pr2 pl2" style="width:173px;">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc" styleClass=" txc pr2 pl2" style="width:25px;">
<h:inputText id="tabs_vc_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadEmailBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<f:facet name="footer">
<h:panelGroup id="pg_recd_wd_ft" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="recd_wd_ft" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmailBean.assist}">
<f:facet name="footer">
<h:panelGroup id="pSel" styleClass=" txc pr2 pl2" style="width:30px;">
<h:outputText id="bSel" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
</h:dataTable>
</td> </tr> </table>
<table width="100%" cellpadding="0" cellspacing="0" style="border: solid 1px slategray;" bgcolor="" > <tr> <td>
<div style="direction:rtl;overflow-y:scroll; height:441px;">
<div id="div_dtDados" style="direction:ltr;">
<!-- Dados -->
<h:dataTable
value="#{cadEmailBean.pesqData}"
var="Email"
binding="#{cadEmailBean.pesqTable}"
cellpadding="1"
cellspacing="1"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
styleClass="tb9"
id="dtDados"
border="0"
rules="all"
rows="#{cadEmailBean.pageLength}"
first="#{cadEmailBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="email_id_fk">
<h:panelGroup id="pg_email_id_sg" styleClass="  txr pr2" style="width:50px;">
<!--   // 333-->
<h:outputText id="sel_email_id" value="#{Email.email_id}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="email_st">
<h:panelGroup id="pg_email_st_sg" styleClass=" txl pl2" style="width:29px;">
<h:outputText id="sel_email_st" title="#{Email.email_st_desc}" value="#{Email.email_st}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="email_cd_emdst_fk">
<h:panelGroup id="pg_email_cd_emdst_sg" styleClass=" txl pl2" style="width:182px;">
<!--   // 333-->
<h:outputText id="sel_email_cd_emdst" title="#{Email.email_cd_emdst_desc}" value="#{Email.email_cd_emdst}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="email_sb">
<h:panelGroup id="pg_email_sb_sg" styleClass=" txl pl2" style="width:100px;">
<!-- propColumnGen String -->
<h:outputText id="sel_email_sb"  value="#{Email.email_sb}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="email_dh_sent">
<h:panelGroup id="pg_email_dh_sent_sg" styleClass=" txc pr2 pl2" style="width:173px;">
<h:outputText id="sel_email_dh_sent" value="#{Email.email_dh_sent_str}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg" styleClass=" txc pr2 pl2" style="width:25px;">
<h:commandLink id="flag_imgEmail" onmousedown="wtran='emailcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_email_id').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Email.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg" styleClass=" txc pr2 pl2" style="width:30px;">
<h:commandLink id="flag_imgrecd_wd" action="#{cadEmailBean.doObternullSearchBack}" onmousedown="wtran='emailcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_email_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadEmailBean.assist}">
<h:panelGroup id="pg_pReg_sg" styleClass=" txc pr2 pl2" style="width:30px;">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_email_id');desc=rel(aa+'sel_email_tx');update(valor,desc);" image="../imagens/btSel.gif"/>
</h:panelGroup>
</h:column>
</h:dataTable>
<!-- Dados -->
</div>
</div>
</td> </tr> </table>
</td>
</tr>
</table>
<!-- Pesquisa cc-->
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeEmail/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeEmail/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadEmailBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadEmailBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_email" action="#{cadEmailBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
