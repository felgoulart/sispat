<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadObcntprxBean");%>
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
<link rel="stylesheet" href="../Obcntprxpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("obcntprpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:obcntpr_id_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:obcntpr_cd_xfil', 'pfdb9', 'pfd9');
cfb('cadForm:dtDados_ft:fil_obcntpr_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_obcntpr_tp_acesso_xfil', 'pfcfb9', 'pfcf9');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadObcntprxBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='ObcntprxSfm';;tran='obcntprxpsq'; vl='';cadbeanx='cadObcntprxBean';<%session.setAttribute("tipo","obcntprxpsq");%>">
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
<h:outputText value="#{cadObcntprxBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeAsst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeAsst/md_fio_top1.gif" nowrap>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadObcntprxBean.hasPrevPage}" action="#{cadObcntprxBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadObcntprxBean.hasNextPage}" action="#{cadObcntprxBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadObcntprxBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadObcntprxBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadObcntprxBean.doLimparPesq}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Obcntpr');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudChldxSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpObcntprxSfm" tabindex="-1" rendered="#{cadObcntprxBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','ObcntprxSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aHelpgSearch" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" image="../imagens/btHelpRep.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadObcntprxBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadObcntprxBean.xhelp_rc}" />
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
<h:inputText id="mesg_var" value="#{cadObcntprxBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadObcntprxBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="obcntpr_id_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_obcntpr_id_tt">
<h:outputText id="hd_obcntpr_id_tt" title="#{iimsg.Obcntpr_obcntpr_id_tt}" value="#{iimsg.Obcntpr_obcntpr_id_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_obcntpr_tp_tt">
<h:outputText id="hd_obcntpr_tp_tt" title="#{iimsg.Obcntpr_obcntpr_tp_tt}" value="#{iimsg.Obcntpr_obcntpr_tp_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="obcntpr_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_obcntpr_cd_tt">
<h:outputText id="hd_obcntpr_cd_tt" title="#{iimsg.Obcntpr_obcntpr_cd_tt}" value="#{iimsg.Obcntpr_obcntpr_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp_acesso_tt">
<f:facet name="header">
<h:panelGroup id="pg_obcntpr_tp_acesso_tt">
<h:outputText id="hd_obcntpr_tp_acesso_tt" title="#{iimsg.Obcntpr_obcntpr_tp_acesso_tt}" value="#{iimsg.Obcntpr_obcntpr_tp_acesso_tt}"/>
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
<h:column id="obcntpr_id_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_obcntpr_id">
<!--   // 444-->
<h:inputText id="obcntpr_id_xfil" title="#{iimsg.hint_dblclick}" ondblclick="this.value=''" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObcntprxBean.fil_obcntpr_id}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obcntpr_tp">
<h:inputText id="fil_obcntpr_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPAPJ', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObcntprxBean.fil_obcntpr_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="obcntpr_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_obcntpr_cd">
<!--   // 444-->
<h:inputText id="obcntpr_cd_xfil" title="#{iimsg.hint_dblclick}" ondblclick="this.value=''" onblur="cfb(this.id, 'pfdb9', 'pfd9');" onfocus="this.className='pfd9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObcntprxBean.fil_obcntpr_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp_acesso_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_obcntpr_tp_acesso">
<h:inputText id="fil_obcntpr_tp_acesso_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'TPFCA', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadObcntprxBean.fil_obcntpr_tp_acesso}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
value="#{cadObcntprxBean.pesqData}"
var="Obcntpr"
binding="#{cadObcntprxBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadObcntprxBean.pageLength}"
first="#{cadObcntprxBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="obcntpr_id_fk">
<h:panelGroup id="pg_obcntpr_id_sg">
<!--   // 333-->
<h:outputText id="sel_obcntpr_id" value="#{Obcntpr.obcntpr_id}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp">
<h:panelGroup id="pg_obcntpr_tp_sg">
<h:outputLabel id="sel_obcntpr_tp" onclick="slvlcd(this.id,this.value);" value="#{Obcntpr.obcntpr_tp}"/>
<h:outputText id="obcntpr_tp_desc" value="#{Obcntpr.obcntpr_tp_desc}"/>
</h:panelGroup>
</h:column>
<!-- fkeyColumnGen -->
<h:column id="obcntpr_cd_fk">
<h:panelGroup id="pg_obcntpr_cd_sg">
<!--   // 000-->
<!--   // 111-->
<h:outputLabel id="sel_obcntpr_cd"  onclick="slvl(this.id,this.value);" value="#{Obcntpr.obcntpr_cd}"/>
<!--   // fk desc -->
<h:outputText id="sel_obcntpr_cd_desc" value="#{Obcntpr.obcntpr_cd_desc}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="obcntpr_tp_acesso">
<h:panelGroup id="pg_obcntpr_tp_acesso_sg">
<h:outputLabel id="sel_obcntpr_tp_acesso" onclick="slvlcd(this.id,this.value);" value="#{Obcntpr.obcntpr_tp_acesso}"/>
<h:outputText id="obcntpr_tp_acesso_desc" value="#{Obcntpr.obcntpr_tp_acesso_desc}"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- CRX-30-->  <h:commandButton id="flag_imgrecd_wd" image="../imagens/btRecd.gif" action="#{cadObcntprxBean.doObternullSearchBack}" onmousedown="wtran='obcntprxcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_obcntpr_id');valor2=rpel(aa+'sel_obcntpr_cd');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wdpk">
<h:panelGroup id="pg_recd_wd_sgpk">
<!-- PRX-20-->  <h:commandButton id="flag_imgrecd_wdpk" image="../imagens/btRecdpk.gif" onmousedown="aa=this.id.slice(0,this.id.search('flag_img'));valorPKey=rpel(aa+'sel_obcntpr_id');typevl=rpel(aa+'sel_');tranx=ProssType(typevl);wtran=tranx+'cad';selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valorPKey; onclickx('xrec_'+tranx,'yes');"/>
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
<iframe id="Obcntpr" width="0" height="0" frameborder="0"> </iframe>
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
<!-- Super Trans Subtypes c'ommandLinks -->
<h:commandLink id="xrec_prossimcpa" action="#{cadProssImcpaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossafata" action="#{cadProssAfataBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxa" action="#{cadProssMrbxaBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossmrbxp" action="#{cadProssMrbxpBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivges" action="#{cadProssIvgesBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prossivgen" action="#{cadProssIvgenBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
<h:commandLink id="xrec_prosscomod" action="#{cadProssComodBean.doObternull}" immediate="true">
<f:param name="tipoant" value="obcntprxpsq"/>
</h:commandLink>
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadObcntprxBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadObcntprxBean.doObterParentForCancel}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_obcntpr" action="#{cadObcntprBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_obcntpr" action="#{cadObcntprBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_pross" action="#{cadProssBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_solct" action="#{cadSolctBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_solct" action="#{cadSolctBean.doObternull}" immediate="true"/>
<!-- mrob commandLink -->
<h:commandLink id="xrec_pross" action="#{cadProssBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
