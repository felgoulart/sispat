<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadHelpmaintBean");%>
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
<link rel="stylesheet" href="../Helpmaintpsq.css" type="text/css">
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("helpmaintpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
cfb('cadForm:dtDados_ft:fil_help_lg_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_help_tp_xfil', 'pfcfb9', 'pfcf9');
cfb('cadForm:dtDados_ft:fil_help_st_xfil', 'pfcfb9', 'pfcf9');
mesgStyleSyst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadHelpmaintBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();helpcd='HelpmaintSfm';;tran='helpmaintpsq'; vl='';cadbeanx='cadHelpmaintBean';<%session.setAttribute("tipo","helpmaintpsq");%>">
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
<h:outputText value="#{cadHelpmaintBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeSyst/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeSyst/md_fio_top1.gif" nowrap>
<h:commandButton id="aBackToSearch" styleClass="btp" rendered="#{cadHelpmaintBean.assistx}" image="../imagens/btReturnxMenu.gif" onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadHelpmaintBean.doReturnMenu}"/>
<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadHelpmaintBean.hasPrevPage}" action="#{cadHelpmaintBean.doPaginaAnterior}"/>
<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadHelpmaintBean.hasNextPage}" action="#{cadHelpmaintBean.doProximaPagina}"/>
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
<h:commandButton id="aFiltrar" styleClass="btp"  image="../imagens/btFilter.gif" title="#{iimsg.botao_filtrar}" action="#{cadHelpmaintBean.doSelecionar}"/>
<h:commandButton id="aLimpar" styleClass="btp" rendered="#{cadHelpmaintBean.canPesquisar}" image="../imagens/btCancel.gif" title="#{iimsg.botao_limpar}" action="#{cadHelpmaintBean.doLimparPesq}"/>
<h:commandButton id="aNew" styleClass="btp" rendered="#{cadHelpmaintBean.canInserir}" image="../imagens/btNew.gif" onmousedown="fNovorwpp('helpmaintcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadHelpmaintBean.doNovo}"/>
<h:commandButton id="aHelp" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Helpmaint');" image="../imagens/btHelp.gif"/>
<h:commandButton id="aHelpgen" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudHelpSfm');" image="../imagens/btHelpGen.gif"/>
<h:commandButton id="aHelpHelpmaintSfm" tabindex="-1" rendered="#{cadHelpmaintBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','HelpmaintSfm');" image="../imagens/btHelpSpc.gif"/>
<h:commandButton id="aPrint" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" image="../imagens/btPrinter.gif"/>
<h:inputHidden id="xmesg_rc" value="#{cadHelpmaintBean.xmesg_rc}" />
<h:inputHidden id="xhelp_rc" value="#{cadHelpmaintBean.xhelp_rc}" />
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
<table    >  <%-- <search mesg frame open> --%>
<tr>  <%-- <tr open> msg --%>
<td      width="50" > <%-- open w/ inputText 222--%>
<h:inputText id="mesg_var" value="#{cadHelpmaintBean.mesg_var}"  styleClass="txrr pr5 tb600r" tabindex="-1" readonly="true"/>
</td> <%-- <close td> msg --%>
<td> &nbsp&nbsp </td>
<td      width="50" > <%-- open w/ inputText 222--%>
<%-- outputLabel msg --%>
<h:outputLabel  styleClass="tip txr pl0"  id="lbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="100" > <h:inputText id="codfqt" onfocus="this.blur()" value="#{cadHelpmaintBean.codfqt}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
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
<h:column id="help_cd_tt_fk">
<f:facet name="header">
<h:panelGroup id="pg_help_cd_tt">
<h:outputText id="hd_help_cd_tt" title="#{iimsg.Helpmaint_help_cd_tt}" value="#{iimsg.Helpmaint_help_cd_tt}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg_tt">
<f:facet name="header">
<h:panelGroup id="pg_help_lg_tt">
<h:outputText id="hd_help_lg_tt" title="#{iimsg.Helpmaint_help_lg_tt}" value="#{iimsg.Helpmaint_help_lg_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_tp_tt">
<f:facet name="header">
<h:panelGroup id="pg_help_tp_tt">
<h:outputText id="hd_help_tp_tt" title="#{iimsg.Helpmaint_help_tp_tt}" value="#{iimsg.Helpmaint_help_tp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_st_tt">
<f:facet name="header">
<h:panelGroup id="pg_help_st_tt">
<h:outputText id="hd_help_st_tt" title="#{iimsg.Helpmaint_help_st_tt}" value="#{iimsg.Helpmaint_help_st_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="header">
<h:panelGroup id="pg_help_nm_tt">
<h:outputText id="hd_help_nm_tt_xide" title="#{iimsg.Helpmaint_help_nm_tt}" value="#{iimsg.Helpmaint_help_nm_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_helpr">
<f:facet name="header">
<h:panelGroup id="pg_help_helpr_tt">
<h:outputText id="hd_help_helpr_tt_xide" title="#{iimsg.Helpmaint_help_helpr_tt}" value="#{iimsg.Helpmaint_help_helpr_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<f:facet name="header">
<h:panelGroup id="pg_buttonHelp_tt">
<h:outputText id="hd_buttonHelp_tt_xide" title="#{iimsg.Helpmaint_buttonHelp_tt}" value="#{iimsg.Helpmaint_buttonHelp_ta}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<f:facet name="header">
<h:panelGroup id="pg_tabs_vc_tt">
<h:outputText id="hd_tabs_vc_tt_xide" title="#{iimsg.Helpmaint_tabs_vc_tt}" value="#{iimsg.Helpmaint_tabs_vc_ta}"/>
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
<h:column rendered="#{cadHelpmaintBean.assist}">
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
<h:column id="help_cd_ft_fk">
<f:facet name="footer">
<h:panelGroup id="fpg_help_cd">
<h:inputText id="help_cd_xfil" styleClass="pfd9" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpmaintBean.fil_help_cd}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_help_lg">
<h:inputText id="fil_help_lg_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'GNLNG', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpmaintBean.fil_help_lg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_tp_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_help_tp">
<h:inputText id="fil_help_tp_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'HLPTP', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpmaintBean.fil_help_tp}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_st_ft_cd">
<f:facet name="footer">
<h:panelGroup id="pf_help_st">
<h:inputText id="fil_help_st_xfil" title="#{iimsg.hint_dblclick}" ondblclick="pw('C'+'HLPST', tran, this.id);" onblur="cfb(this.id, 'pfcfb9', 'pfcf9');" onfocus="this.className='pfcf9'"  onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadHelpmaintBean.fil_help_st}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<f:facet name="footer">
<h:panelGroup id="fpg_help_nm">
<h:inputText id="help_nm_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadHelpmaintBean.fil_help_nm}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
</h:panelGroup>
</f:facet>
</h:column>
<!-- propColumnGen -->
<h:column id="help_helpr">
<f:facet name="footer">
<h:panelGroup id="fpg_help_helpr">
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
<h:inputText id="tabs_vc_xfil" onchange="this.value = this.value.toUpperCase();" ondblclick="this.value=''" value="#{cadHelpmaintBean.fil_tabs_vc}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
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
<h:column rendered="#{cadHelpmaintBean.assist}">
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
<div id="div_dtDados" class="grid-result" style=" height:501px; border-style: solid; border-width: 1px; border-color: slategray;">
<!-- Dados -->
<h:dataTable
value="#{cadHelpmaintBean.pesqData}"
var="Help"
binding="#{cadHelpmaintBean.pesqTable}"
rowClasses="tre9, tro9"
headerClass="tbh9"
footerClass="tbf9"
id="dtDados"
rows="#{cadHelpmaintBean.pageLength}"
first="#{cadHelpmaintBean.currentLine}">
<!-- fkeyColumnGen -->
<h:column id="help_cd_fk">
<h:panelGroup id="pg_help_cd_sg">
<!--   // 333-->
<h:outputText id="sel_help_cd" value="#{Help.help_cd}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_lg">
<h:panelGroup id="pg_help_lg_sg">
<h:outputLabel id="sel_help_lg" title="#{Help.help_lg_desc}" onclick="slvlcd(this.id,this.value);" value="#{Help.help_lg}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_tp">
<h:panelGroup id="pg_help_tp_sg">
<h:outputLabel id="sel_help_tp" title="#{Help.help_tp_desc}" onclick="slvlcd(this.id,this.value);" value="#{Help.help_tp}"/>
</h:panelGroup>
</h:column>
<!-- codfColumnGen -->
<h:column id="help_st">
<h:panelGroup id="pg_help_st_sg">
<h:outputLabel id="sel_help_st" title="#{Help.help_st_desc}" onclick="slvlcd(this.id,this.value);" value="#{Help.help_st}"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="help_nm">
<h:panelGroup id="pg_help_nm_sg">
<!-- propColumnGen String -->
<h:outputLabel id="sel_help_nm"  onclick="slvl(this.id,this.value);" value="#{Help.help_nm}"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenChildTransGen -->
<h:column id="help_helpr_bt">
<h:panelGroup id="pg_help_helpr_bt">
<h:inputHidden id="sel_help_cdhelp_helpr_bt" value="#{Help.help_cd}"/>
<h:inputHidden id="sel_help_lghelp_helpr_bt" value="#{Help.help_lg}"/>
<h:commandButton id="flag_imgrecd_wd_help_helpr" action="#{cadHelprBean.doSelecionar}" image="#{Help.helpr_im}"  onmousedown="wtran='helprpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_help_cdhelp_helpr_bt').value;valor2=el(aa+'sel_help_lghelp_helpr_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=helpmaintpsq&tipo='+wtran+'&valor='+valor1+','+valor2;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;"/>
</h:panelGroup>
</h:column>
<!-- buttonOpenTransGen -->
<h:column id="buttonHelp_bt">
<h:panelGroup id="pg_buttonHelp_bt">
<h:inputHidden id="sel_help_cdbuttonHelp_bt" value="#{Help.help_cd}"/>
<h:inputHidden id="sel_help_lgbuttonHelp_bt" value="#{Help.help_lg}"/>
<h:commandButton id="flag_imgrecd_wd_buttonHelp" action="#{cadHelpvwBean.doObternull}"  image="../imagens/btHelp.gif" onmousedown="wtran='helpvwcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_help_cdbuttonHelp_bt').value;valor2=el(aa+'sel_help_lgbuttonHelp_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=helpmaintpsq&tipo='+wtran+'&valor='+valor1+','+valor2;"/>
</h:panelGroup>
</h:column>
<!-- propColumnGen -->
<h:column id="tabs_vc">
<h:panelGroup id="pg_tabs_vc_sg">
<h:commandLink id="flag_imgHelpmaint" onmousedown="wtran='helpmaintcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_help_cd').innerHTML;valor2=el(aa+'sel_help_lg').innerHTML;el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;showpopup(tran,'xrec_obob',this.id,wtran,'yes');">
<ps:psGraphicImage flag="#{Help.tabs_vc}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- recdWdColumnGen -->
<h:column id="recd_wd">
<h:panelGroup id="pg_recd_wd_sg">
<!-- BBB--> <h:commandLink id="flag_imgrecd_wd" action="#{cadHelpmaintBean.doObternullSearchBack}" onmousedown="wtran='helpmaintcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_help_cd');valor2=rpel(aa+'sel_help_lg');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1+','+valor2;">
<ps:psGraphicImage url="../imagens/btRecd.gif" title="#{iimsg.recwd_button}" styleClass="btp" />
</h:commandLink>
</h:panelGroup>
</h:column>
<!-- propSearchChildTableGen -->
<!-- assist 1 -->
<h:column rendered="#{cadHelpmaintBean.assist}">
<h:panelGroup id="pg_pReg_sg">
<!-- Standard Selection -->
<h:commandButton id="xget" immediate="true" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=rel(aa+'sel_help_cd');desc=rel(aa+'sel_help_nm');update(valor,desc);" image="../imagens/btSel.gif"/>
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
<iframe id="Helpmaint" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="helpr" width="0" height="0" frameborder="0"> </iframe>
<iframe id="Helpvw" width="0" height="0" frameborder="0"> </iframe>
</td>
</tr>
</table>
<!-- Principal -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadHelpmaintBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpmaint" action="#{cadHelpmaintBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_helpmaint" action="#{cadHelpmaintBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_helpmaint" action="#{cadHelpmaintBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helpr" action="#{cadHelprBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_helpr" action="#{cadHelprBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_helpr" action="#{cadHelprBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helpvw" action="#{cadHelpvwBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_helpvw" action="#{cadHelpvwBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_helpvw" action="#{cadHelpvwBean.doObternull}" immediate="true"/>
</h:form>
</body>
</html>
</f:view>
