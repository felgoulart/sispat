<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadHelprBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardSyst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Helprpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("helprpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleSyst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadHelprBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='HelprSfm';;tran='helprpsq'; vl='';cadbeanx='cadHelprBean';<%session.setAttribute("tipo","helprpsq");%>">
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
<h:outputText value="#{cadHelprBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeSyst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btVoltar.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'helpmaintcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadHelpmaintBean.doObterBack}"/>
<h:commandButton id="aBackToSearchMenu" styleClass="btp" image="../imagens/btReturnxMenu.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'helprcad'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToMenu_tt}" action="#{cadHelprBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadHelprBean.hasPrevPage}" action="#{cadHelprBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadHelprBean.hasNextPage}" action="#{cadHelprBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<ps:psCommandLink id="aFiltrar" styleClass="btp"  ativo="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadHelprBean.doSelecionar}">
<f:param name="campo9" value=""/>
<f:param name="tipo" value="helprpsq"/>
</ps:psCommandLink>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadHelprBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadHelprBean.doLimparPesq}"/>
<ps:psCommandLink id="aNew" styleClass="btp" enabled="#{cadHelprBean.canInserir}" ativo="../imagens/btNew.gif"  disabled="" onmousedown="fNovorwpp('helprcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadHelprBean.doObterParent}">
</ps:psCommandLink>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Helpr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpHelprSfm" tabindex="-1" rendered="#{cadHelprBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','HelprSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadHelprBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadHelprBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeSyst/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeSyst/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeSyst/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeSyst/pixel_claro.gif">
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_helpr_cd_help" for="helpr_cd_help"  title="#{iimsg.Helpr_helpr_cd_help_tt}"  value="#{iimsg.Helpr_helpr_cd_help_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="helpr_cd_help" tabindex="-1" readonly="true" value="#{cadHelprBean.helpr_cd_help}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
<h:commandLink id="helpr_cd_help_desc" value="#{cadHelprBean.helpr_cd_help_desc}" styleClass="dsp"  onmousedown="pwfk('assetcad', tran, this.id, 'no')"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_helpr_lg_help" for="helpr_lg_help"  title="#{iimsg.Helpr_helpr_lg_help_tt}"  value="#{iimsg.Helpr_helpr_lg_help_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="helpr_lg_help" tabindex="-1" readonly="true" value="#{cadHelprBean.helpr_lg_help}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadHelprBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadHelprBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="sel__a_scrollbar">
<f:facet name="header">
<h:panelGroup id="pg_scrollbar__a_tt">
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="helpr_sq">
<f:facet name="header">
<h:panelGroup id="pg_helpr_sq_tt">
<h:outputText id="hd_helpr_sq_tt_xide" title="#{iimsg.Helpr_helpr_sq_tt}" value="#{iimsg.Helpr_helpr_sq_ta}"/>
<f:verbatim>&nbsp;&nbsp;</f:verbatim>
<h:commandLink id="hoord_helpr_sq" action="#{cadHelprBean.doOrd_helpr_sq}">
<ps:psGraphicImage id="hord_helpr_sq_desc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadHelprBean.ord_helpr_sq_desc}"/>
<ps:psGraphicImage id="hord_helpr_sq" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadHelprBean.ord_helpr_sq}"/>
<!-- Generate param for Regular Prop -->
<f:param name="tipo" value="helprpsq"/>
</h:commandLink>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="helpr_cd_help_rel_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_helpr_cd_help_rel_tt">
<h:outputText id="hd_helpr_cd_help_rel_tt" title="#{iimsg.Helpr_helpr_cd_help_rel_tt}" value="#{iimsg.Helpr_helpr_cd_help_rel_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="header">
<h:panelGroup id="pg_buttonHelp_tt">
<h:outputText id="hd_buttonHelp_tt_xide" title="#{iimsg.Helpr_buttonHelp_tt}" value="#{iimsg.Helpr_buttonHelp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Helpr_tabs_vc_tt}" value="#{iimsg.Helpr_tabs_vc_ta}"/>
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
<h:column id="helpr_sq">
<f:facet name="footer">
<h:panelGroup id="fpg_helpr_sq">
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="helpr_cd_help_rel_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_helpr_cd_help_rel">
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="footer">
<h:panelGroup id="pButtbuttonHelp">
<h:outputText id="bButtbuttonHelp" styleClass="pf" value=""/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_tabs_vc">
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelprBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
</h:dataTable>
</div>
<div id="div_dtDados" class="grid-result" style=" height:441px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadHelprBean.pesqData}"
var="Helpr"
binding="#{cadHelprBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadHelprBean.pageLength}"
first="#{cadHelprBean.currentLine}">
<!-- propColumnGen -->
<h:column id="helpr_sq">
<h:panelGroup id="pg_helpr_sq_sg">
<!-- propColumnGen String -->
<h:outputText id="sel_helpr_sq"  value="#{Helpr.helpr_sq}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="helpr_cd_help_rel_fk">
<h:panelGroup id="pg_helpr_cd_help_rel_sg">
<!--   // 333-->
<h:outputText id="sel_helpr_cd_help_rel" value="#{Helpr.helpr_cd_help_rel}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<h:panelGroup id="pg_buttonHelp_bt">
<h:inputHidden id="sel_helpr_cd_help_relbuttonHelp_bt" value="#{Helpr.helpr_cd_help_rel}"/>
<h:inputHidden id="sel_helpr_lg_helpbuttonHelp_bt" value="#{Helpr.helpr_lg_help}"/>
<h:commandButton id="flag_imgrecd_wd_buttonHelp" action="#{cadHelpmaintBean.doObternull}"  image="../imagens/btHelp.gif" onmousedown="wtran='helpmaintcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor3=el(aa+'sel_helpr_cd_help_relbuttonHelp_bt').value;valor2=el(aa+'sel_helpr_lg_helpbuttonHelp_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=helprpsq&tipo='+wtran+'&valor='+valor3+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgHelpr" onmousedown="wtran='helprcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_helpr_cd_help').value;valor2=el(aa+'sel_helpr_lg_help').value;valor3=el(aa+'sel_helpr_cd_help_rel').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Helpr.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_helpr_cd_help" value="#{Helpr.helpr_cd_help}"/>
<h:inputHidden id="sel_helpr_lg_help" value="#{Helpr.helpr_lg_help}"/>
<h:commandLink id="flag_imgrecd_wd" action="#{cadHelprBean.doObternullSearchBack}" onmousedown="wtran='helprcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_helpr_cd_help');valor2=rpel(aa+'sel_helpr_lg_help');valor3=rpel(aa+'sel_helpr_cd_help_rel');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2+','+valor3;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
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
</div>
<!-- Pesquisa bb-->
</td>
<td width="15" background="../imagens/thmeSyst/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeSyst/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeSyst/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeSyst/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Helpr" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="helpmaint" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Helpmaint" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelprBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadHelprBean.doObterParent}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpr" action="#{cadHelprBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpr" action="#{cadHelprBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_help" action="#{cadHelpBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helpmaint" action="#{cadHelpmaintBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helpmaint" action="#{cadHelpmaintBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
