<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadAssetBldngBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view  locale="#{cadLangBean.lang_cd_var}"   ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../style.css">
<link rel="stylesheet" type="text/css" href="../styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../projStandardAsst.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="stylesheet" href="../AssetBldngpsq.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../projMesgStyle.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>
<SCRIPT type="text/javascript">
function fPgAssist() {
page_assist = <%= session.getAttribute("assetbldngpsq") %>;
return page_assist;
}
function loadPage() {
hovDtTable('dtDados');
mesgStyleAsst(rel('cadForm:xmesg_rc'));
}
</SCRIPT>
<title>
<h:outputText value="#{cadAssetBldngBean.trans_tt}"/>
</title>
</head>
<body onload="window.focus();loadPage();loading();fcf('cadForm:p_asset_nu');helpcd='AssetBldngSfm';;tran='assetbldngpsq'; vl='';cadbeanx='cadAssetBldngBean';<%session.setAttribute("tipo","assetbldngpsq");%>">
<h:form id="cadForm">
<%@include file="projHeader1.jsp"%>
<div class="row-offcanvas row-offcanvas-left">
  <div id="sidebar" class="sidebar-offcanvas" style="max-width:222px">
       <div style="vertical-align:middle"> <h2 class="tituloFiltro">Filtros</h2> </div>

		<%@include file="AssetBldngpsq_param2.jsp"%>
</div>

  <div id="main">
    <div>

			<div class="tituloPagina">
				<div class="row">
					<div class="col-sm-1">
						<button type="button" class="btn btn-icon" id="buttonFiltro"	onclick="exibeFiltro()"> <i class="fa fa-bars"></i></button>
  						<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
					</div>
					<div class="col-sm-10">
						<h2 class="title" style="font-size: 35px;"><h:outputText value="#{cadAssetBldngBean.trans_tt}"/></h2>
						<p class="subtitle"></p>
					</div>
					<div class="col-sm-1">
						<h:commandButton id="aBackToSearch"  styleClass="btn btn-outline-dark" value="Voltar"  onmousedown="document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+''+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.buttonReturnToPrevious_tt}" action="#{cadAssetBldngBean.doReturnMenu}"/>
					</div>
				</div>
			</div>
			<div class="opcaoTitulo">Opções</div>
			<div class="opcaoCrud">
				<div class="row">
					<div class="col-sm-6">
						<h:commandButton id="aPrev" styleClass="btp"  image="../imagens/btPgAnterior.gif" title="#{iimsg.botao_anterior}" rendered="#{cadAssetBldngBean.hasPrevPage}" action="#{cadAssetBldngBean.doPaginaAnterior}"/>
						<h:commandButton id="aNext" styleClass="btp"  image="../imagens/btPgProxima.gif" title="#{iimsg.botao_proxima}" rendered="#{cadAssetBldngBean.hasNextPage}" action="#{cadAssetBldngBean.doProximaPagina}"/>
						<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
						<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
						<h:outputText id="sys_openning_form" style="display:none" value="#{iimsg.sys_openning_form}" />
						<h:commandButton id="aFiltrar" value="Filtrar"  styleClass="btn btn-outline-dark" title="#{iimsg.botao_filtrar}" action="#{cadAssetBldngBean.doSelecionar}"/>
						<h:commandButton id="aLimpar" value="Limpar"  styleClass="btn btn-outline-dark"   rendered="#{cadAssetBldngBean.canPesquisar}"  title="#{iimsg.botao_limpar}" action="#{cadAssetBldngBean.doLimparPesq}"/>
						<h:commandButton id="aNew" value="Inserir"   styleClass="btn btn-outline-dark"  rendered="#{cadAssetBldngBean.canInserir}"  onmousedown="fNovorwpp('assetbldngcad', tran, this.id, 'yes', fPgAssist());" title="#{iimsg.botao_novo}" action="#{cadAssetBldngBean.doNovo}"/>
						<h:commandButton id="XlsExport_xls_stb" value="Exportar"  styleClass="btn btn-outline-dark"  rendered="#{cadAssetBldngBean.canPesquisar}" title="#{iimsg.AssetBldng_XlsExport_xls_stb_tt}"  action="#{cadAssetBldngBean.doXlsExport_xls_stb}"/>
						<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help}" onmousedown="pw('helpcad', tran, this.id, 'yes','Asset');" />
						<h:commandButton id="aHelp" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_help_gen}" onmousedown="pw('helpcad', tran, this.id, 'yes', '@CrudGeoidSfm');" />
						<h:commandButton id="aHelpAssetComSfm" styleClass="d-none" tabindex="-1" rendered="#{cadAssetBldngBean.hasHelpComSfm}" immediate="true" title="#{iimsg.botao_help_com}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetComSfm');" />
						<h:commandButton id="aHelpAssetBldngSfm" styleClass="d-none" tabindex="-1" rendered="#{cadAssetBldngBean.hasHelpSpcSfm}" immediate="true" title="#{iimsg.botao_help_spc}" onmousedown="pw('helpcad', tran, this.id, 'yes','AssetBldngSfm');" />
						<h:commandButton id="aHelpgSearch" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_help_repository}" onmousedown="pw('helpsearchpsq', tran, this.id, 'yes', 'HelpSearch');" />
						<h:commandButton id="aPrint" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.button_printScreen_tt}" onmousedown="window.print()" />
						<h:inputHidden id="xmesg_rc" value="#{cadAssetBldngBean.xmesg_rc}" />
						<h:inputHidden id="xhelp_rc" value="#{cadAssetBldngBean.xhelp_rc}" />
						<h:commandButton id="aClose" styleClass="d-none" tabindex="-1" immediate="true" title="#{iimsg.botao_close}" onmousedown="msgwinclose()" image="../imagens/btClose.gif"/>
					</div>
					<div class="col-sm-6" align="right">
						<h:outputLabel  styleClass="h6 text-secondary"  id="lbl_asset_in_ultvist" for="asset_in_ultvist"  value="#{iimsg.AssetBldng_asset_in_ultvist_tt}"/>
						<h:inputHidden id="asset_in_ultvist_bol" value="#{cadAssetBldngBean.asset_in_ultvist}"/>
						<h:selectBooleanCheckbox id="asset_in_ultvist" tabindex="13"  value="#{cadAssetBldngBean.asset_in_ultvist_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_ultvist_bol');"/>
					</div>
				</div>
			</div>
 		</div>

		<table class="table tablemod px-0">
			<thead >
				<tr>
				<th scope="col" style="width: 5%; padding: 0.75rem 0"> BP</th>
				<th scope="col"style="width: 6%; padding: 0.75rem 0">Tipo</th>
				<th scope="col"style="width: 7%; padding: 0.75rem 0">Util.</th>
				<th scope="col"style="width: 7%; padding: 0.75rem 0">Propr.</th>
				<th scope="col"style="width: 7%; padding: 0.75rem 0">Vistoria</th>
				<th scope="col"style="width: 13%; padding: 0.75rem 0">Pátio</th>
				<th scope="col"style="width: 13%; padding: 0.75rem 0">Município</th>
				<th scope="col"style="width: 2%; padding: 0.75rem 0">UF</th>
				<th scope="col"style="width: 9%;padding: 0.75rem 0">Corredor</th>
				<th scope="col"style="width: 16%;padding: 0.75rem 0">Trecho</th>
				<th scope="col"style="width: 7%;padding: 0.75rem 0">KM Inicial</th>
				<th scope="col"style="width: 2%;padding: 0.75rem 0"></th>
				<th scope="col"style="width: 2%;padding: 0.75rem 0"></th>
				<th scope="col"style="width: 2%;padding: 0.75rem 0"></th>
				<th scope="col"style="width: 2%;padding: 0.75rem 0"></th>
				<th scope="col"style="width: 400px;padding: 0.75rem 0;background-color:black">.</th>
				</tr>
			</thead>
		</table>
		<div id="div_dtDados_hor_" class="table-responsive containerShadow">
			<div id="div_dtDados" class="grid-result  table-responsive" style="height:461px;">
				<!-- Dados -->
				<h:dataTable
				value="#{cadAssetBldngBean.pesqData}"
				var="Asset"
				binding="#{cadAssetBldngBean.pesqTable}"
				rowClasses="tre9mod, tre9mod"
				headerClass="tbh9"
				footerClass="tbf9"
				id="dtDados"
				rows="#{cadAssetBldngBean.pageLength}"
				first="#{cadAssetBldngBean.currentLine}">

				<!-- propColumnGen -->
				<h:column id="asset_nu" >

				<h:panelGroup id="pg_asset_nu_sg">
				<!-- propColumnGen String -->
				<h:outputLabel id="sel_asset_nu"  onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_nu}"/>
				<h:inputHidden id="sel_asset_tp_cfasttp" value="#{Asset.asset_tp_cfasttp}"/>
				<h:inputHidden id="sel_asset_cd_cfinvty" value="#{Asset.asset_cd_cfinvty}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_tp_tipologia">
				<h:panelGroup id="pg_asset_tp_tipologia_sg">
				<h:outputLabel id="sel_asset_tp_tipologia" title="#{Asset.asset_tp_tipologia_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_tp_tipologia_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_tp_utilizacao">
				<h:panelGroup id="pg_asset_tp_utilizacao_sg">
				<h:outputLabel id="sel_asset_tp_utilizacao" title="#{Asset.asset_tp_utilizacao_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_tp_utilizacao_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_propriedade_erp">
				<h:panelGroup id="pg_asset_cd_propriedade_erp_sg">
				<h:outputLabel id="sel_asset_cd_propriedade_erp" title="#{Asset.asset_cd_propriedade_erp_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_propriedade_erp_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- propColumnGen -->
				<h:column id="asset_dt_vistoria">
				<h:panelGroup id="pg_asset_dt_vistoria_sg">
				<h:outputText id="sel_asset_dt_vistoria" value="#{Asset.asset_dt_vistoria_str}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_cfreslc">
				<h:panelGroup id="pg_asset_cd_cfreslc_sg">
				<h:outputLabel id="sel_asset_cd_cfreslc" title="#{Asset.asset_cd_cfreslc_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_cfreslc_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_cfresid">
				<h:panelGroup id="pg_asset_cd_cfresid_sg">
				<h:outputLabel id="sel_asset_cd_cfresid" onclick="slvlcdprm(this.id,this.value);" 	/>
				<h:outputText id="asset_cd_cfresid_desc" value="#{Asset.asset_cd_cfresid_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_uf">
				<h:panelGroup id="pg_asset_cd_uf_sg">
				<h:outputLabel id="sel_asset_cd_uf" title="#{Asset.asset_cd_uf_desc}" onclick="slvlcd(this.id,this.value);" value="#{Asset.asset_cd_uf}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_corredor">
				<h:panelGroup id="pg_asset_cd_corredor_sg">
				<h:outputLabel id="sel_asset_cd_corredor" title="#{Asset.asset_cd_corredor_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_corredor_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- codfColumnGen -->
				<h:column id="asset_cd_trecho">
				<h:panelGroup id="pg_asset_cd_trecho_sg">
				<h:outputLabel id="sel_asset_cd_trecho" title="#{Asset.asset_cd_trecho_desc}" onclick="slvlcdprm(this.id,this.value);" value="#{Asset.asset_cd_trecho_desc}"/>
				</h:panelGroup>
				</h:column>
				<!-- propColumnGen -->
				<h:column id="asset_km_ini">
				<h:panelGroup id="pg_asset_km_ini_sg">
				<!-- propColumnGen BigDecimal -->
				<h:outputLabel id="sel_asset_km_ini" onclick="slvlprm(this.id,this.value);" value="#{Asset.asset_km_ini_str}"/>
				</h:panelGroup>
				</h:column>
				<!-- buttonOpenTransGen -->
				<h:column id="asset_images_ongrid_bt">
				<h:panelGroup id="pg_asset_images_ongrid_bt">
				<h:inputHidden id="sel_asset_idasset_images_ongrid_bt" value="#{Asset.asset_id}"/>
				<h:commandButton id="flag_imgrecd_wd_asset_images_ongrid" action="#{cadObimgBean.doObternull}"  image="fa/svgs/solid/imagedark.png"  onmousedown="wtran='obimgcad';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_images_ongrid_bt').value;el('fiiSaveType').src = 'iiSaveType.jsp?tbak=assetbldngpsq&tipo='+wtran+'&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				</h:panelGroup>
				</h:column>
				<!-- buttonOpenChildTransGen -->
				<h:column id="asset_docs_ongrid_bt">
				<h:panelGroup id="pg_asset_docs_ongrid_bt">
				<h:inputHidden id="sel_asset_idasset_docs_ongrid_bt" value="#{Asset.asset_id}"/>
				<h:commandButton id="flag_imgrecd_wd_asset_docs_ongrid" action="#{cadObdocBean.doSelecionar}" image="fa/svgs/solid/folderopendark.png" onmousedown="wtran='obdocpsq';el('hiddenform').target=tran;aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_docs_ongrid_bt').value;el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetbldngpsq&tipo='+wtran+'&valor='+valor1;el('fiiSaveField').src='iiSaveField.jsp?campo=campo1&valor='+valor1;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
				</h:panelGroup>
				</h:column>
				<!-- buttonOpenTransGen -->
				<h:column id="asset_geo_ongrid_bt">
				<h:panelGroup id="pg_asset_geo_ongrid_bt">
				<h:inputHidden id="sel_asset_idasset_geo_ongrid_bt" value="#{Asset.asset_id}"/>
				<h:outputLink id="flag_imggeo_asset_geo_ongrid" value="mapa.jsp?bp=" target="_blank" onclick="aa=this.id.slice(0,this.id.search('flag_img'));valor1=el(aa+'sel_asset_idasset_geo_ongrid_bt').value;valor1=valor1.slice(0,valor1.length - 5);this.href='mapa.jsp?bp='+valor1+'&type=ED';">
				<h:graphicImage value="fa/svgs/solid/globedark.png" />
				</h:outputLink>
				</h:panelGroup>
				</h:column>
				<!-- recdWdColumnGen -->
				<h:column id="recd_wd">
				<h:panelGroup id="pg_recd_wd_sg">
				<h:inputHidden id="sel_asset_id" value="#{Asset.asset_id}"/>
				<!-- REC-30-->  <h:commandButton id="flag_imgrecd_wd" image="fa/svgs/solid/filedark.png"  action="#{cadAssetBldngBean.doObternullSearchBack}" onmousedown="wtran='assetbldngcad';aa=this.id.slice(0,this.id.search('flag_img'));valor1=rpel(aa+'sel_asset_id');selDtTableOneRow(aa);el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;"/>
				</h:panelGroup>
				</h:column>
				<!-- propSearchChildTableGen -->
				</h:dataTable>
				<!-- Dados -->
			</div>
<!-- Pesquisa cc-->
		</div>
		<div class="col-sm-12 text-white rodapeGrid" align="right">
		  <h:inputText id="mesg_var" value="#{cadAssetBldngBean.mesg_var}"  styleClass="d-none" tabindex="-1" readonly="true"/>
		  <h:outputLabel  styleClass="h6 text-secondary"  id="cadAssetBldngBeanlbl_codfqt" for="codfqt"  value="#{iimsg.records_tt}"/> 
		  <h:outputLabel id="codfqt" onfocus="this.blur()" value="#{cadAssetBldngBean.codfqt}"   styleClass="h6 text-secondary"/>
		</div>
	</div>
</div>
<!-- Pesquisa bb-->


<!-- Conteudo -->
<iframe id="AssetBldng" width="0" height="0" frameborder="0"> </iframe>
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
<iframe id="InvtyED" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyED" width="0" height="0" frameborder="0"> </iframe>
<iframe id="InvtyED" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obimg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="obdoc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mpgeo" width="0" height="0" frameborder="0"> </iframe>
<!-- Principal xx -->
</h:form>
<!-- This hidden form used to send a request to a popup window. -->
<h:form id="hiddenform" target="">
<h:inputHidden id="target" value=""/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_obnv" action="#{cadAssetBldngBean.doNovo}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_helprvw" action="#{cadHelprvwBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_helpsearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_assetbldng" action="#{cadAssetBldngBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_assetbldng" action="#{cadAssetBldngBean.doObternull}" immediate="true"/>
<!-- fkstransVector commandLinks -->
<h:commandLink id="xsel_invtyed" action="#{cadInvtyEDBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_invtyed" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_invtyed" action="#{cadInvtyEDBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_asset" action="#{cadAssetBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_asset" action="#{cadAssetBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obimg" action="#{cadObimgBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obimg" action="#{cadObimgBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_obdoc" action="#{cadObdocBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_obdoc" action="#{cadObdocBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_mpgeo" action="#{cadMpgeoBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_mpgeo" action="#{cadMpgeoBean.doObternull}" immediate="true"/>
</h:form>
<script>
  function exibeFiltro() {
    var mySidebar = document.getElementById('sidebar');
    var displaySetting = sidebar.style.maxWidth;
    if (displaySetting == '222px') {
      mySidebar.style.maxWidth = '0px';
    }
    else {
      mySidebar.style.maxWidth = '222px';
    }
  }

</script>
</body>
</html>
</f:view>
