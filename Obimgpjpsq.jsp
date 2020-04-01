<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObimgpjBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardChld.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../Obimgpjpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obimgpjpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_obimgpj_tp_cfpjtp_xfil', 'pfcfb9', 'pfcf9');
mesgStyleChld(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObimgpjBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObimgpjSfm';;tran='obimgpjpsq'; vl='';cadbeanx='cadObimgpjBean';<%session.setAttribute("tipo","obimgpjpsq");%>">
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
<h:outputText value="#{cadObimgpjBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeChld/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeChld/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeChld/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" image="../imagens/btVoltar.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadObimgpjBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObimgpjBean.hasPrevPage}" action="#{cadObimgpjBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObimgpjBean.hasNextPage}" action="#{cadObimgpjBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObimgpjBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObimgpjBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObimgpjBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadObimgpjBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('obimgpjcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadObimgpjBean.doObterParentForCancel}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obimgpj');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@ObimgSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObimgpjSfm" tabindex="-1" rendered="#{cadObimgpjBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObimgpjSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObimgpjBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObimgpjBean.xhelp_rc}" />
<h:commandButton id="aClose" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
</td>
<td width="15" height="13" background="../imagens/thmeChld/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeChld/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeChld/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeChld/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeChld/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeChld/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeChld/pixel_claro.gif">
<table    >  <%-- <parentKey frame open> b --%>
<tr>  <%-- <tr open> pKey 3 --%>
<td      width="140" > <%-- open w/ inputText pKey--%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_obimgpj_id" for="obimgpj_id"  title="#{iimsg.Obimgpj_obimgpj_id_tt}"  value="#{iimsg.Obimgpj_obimgpj_id_tt}"/>  </td> <%-- <top> --%>
<td      width="400" >
<h:inputText id="obimgpj_id" tabindex="-1" readonly="true" value="#{cadObimgpjBean.obimgpj_id}" size="20" maxlength="20" onkeydown="keypress=1;"  styleClass="tbxr"/>
</td> <%-- <close td> pKey --%>
</td> <%-- <close td> Button --%>
</tr> <%-- <tr close> pKey--%>
</table> <%-- <parentKey frame close> --%>
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadObimgpjBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObimgpjBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="obimgpj_nm_file">
<f:facet name="header">
<h:panelGroup id="pg_obimgpj_nm_file_tt">
<h:outputText id="hd_obimgpj_nm_file_tt_xide" title="#{iimsg.Obimgpj_obimgpj_nm_file_tt}" value="#{iimsg.Obimgpj_obimgpj_nm_file_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obimgpj_tp_cfpjtp_tt">
<f:facet name="header">
<h:panelGroup id="pg_obimgpj_tp_cfpjtp_tt">
<h:outputText id="hd_obimgpj_tp_cfpjtp_tt" title="#{iimsg.Obimgpj_obimgpj_tp_cfpjtp_tt}" value="#{iimsg.Obimgpj_obimgpj_tp_cfpjtp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_ds">
<f:facet name="header">
<h:panelGroup id="pg_obimgpj_ds_tt">
<h:outputText id="hd_obimgpj_ds_tt_xide" title="#{iimsg.Obimgpj_obimgpj_ds_tt}" value="#{iimsg.Obimgpj_obimgpj_ds_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_vc">
<f:facet name="header">
<h:panelGroup id="pg_obimgpj_vc_tt">
<h:outputText id="hd_obimgpj_vc_tt_xide" title="#{iimsg.Obimgpj_obimgpj_vc_tt}" value="#{iimsg.Obimgpj_obimgpj_vc_ta}"/>
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
<h:column id="obimgpj_nm_file">
<f:facet name="footer">
<h:panelGroup id="fpg_obimgpj_nm_file">
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obimgpj_tp_cfpjtp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obimgpj_tp_cfpjtp">
<h:inputText id="fil_obimgpj_tp_cfpjtp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPPRJ', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObimgpjBean.fil_obimgpj_tp_cfpjtp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_ds">
<f:facet name="footer">
<h:panelGroup id="fpg_obimgpj_ds">
<h:inputText id="obimgpj_ds_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObimgpjBean.fil_obimgpj_ds}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_vc">
<f:facet name="footer">
<h:panelGroup id="fpg_obimgpj_vc">
<h:inputText id="obimgpj_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadObimgpjBean.fil_obimgpj_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadObimgpjBean.pesqData}"
var="Obimgpj"
binding="#{cadObimgpjBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObimgpjBean.pageLength}"
first="#{cadObimgpjBean.currentLine}">
<!-- propColumnGen -->
<h:column id="obimgpj_nm_file">
<h:panelGroup id="pg_obimgpj_nm_file_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obimgpj_nm_file"  onclick="slvl(this.id,this.value);" value="#{Obimgpj.obimgpj_nm_file}"/>
<h:inputHidden id="sel_obimgpj_sq_pres" value="#{Obimgpj.obimgpj_sq_pres}"/>
<h:inputHidden id="sel_obimgpj_ct" value="#{Obimgpj.obimgpj_ct}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obimgpj_tp_cfpjtp">
<h:panelGroup id="pg_obimgpj_tp_cfpjtp_sg">
<h:outputLabel id="sel_obimgpj_tp_cfpjtp" title="#{Obimgpj.obimgpj_tp_cfpjtp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Obimgpj.obimgpj_tp_cfpjtp}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_ds">
<h:panelGroup id="pg_obimgpj_ds_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_obimgpj_ds"  onclick="slvl(this.id,this.value);" value="#{Obimgpj.obimgpj_ds}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="obimgpj_vc">
<h:panelGroup id="pg_obimgpj_vc_sg">
<h:commandLink id="flag_imgObimgpj" onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_obimgpj_id').value;valor2=el(aa+'sel_obimgpj_sq').value;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Obimgpj.obimgpj_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<h:inputHidden id="sel_obimgpj_id" value="#{Obimgpj.obimgpj_id}"/>
<h:inputHidden id="sel_obimgpj_sq" value="#{Obimgpj.obimgpj_sq}"/>
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadObimgpjBean.doObternullSearchBack}" onmousedown="wtran='obimgpjcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obimgpj_id');valor2=rpel(aa+'sel_obimgpj_sq');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
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
<td width="15" background="../imagens/thmeChld/md_fio_dir.gif" nowrap>  </td>
</tr>
<tr>
<td background="../imagens/thmeChld/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeChld/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeChld/md_curva_botdir.gif" width="15" height="13"> </td>
</tr>
</table>
<!-- Moldura -->
</td>
</tr>
</table>
<!-- Conteudo -->
<iframe id="Obimgpj" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xrec_obob" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObimgpjBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obimgpj" action="#{cadObimgpjBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obimgpj" action="#{cadObimgpjBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pjaus" action="#{cadPjausBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
