<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx", "cadCodfBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<f:view><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <!-- Mensagens de erro -->
  <ps:messages layout="script"/>
  <meta http-equiv="PRAGMA" content="no-cache"/>
  <link rel="stylesheet" href="../projStandard.css" type="text/css">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<SCRIPT type="text/javascript">
	var arAbas = new Array();
	arAbas[1] = new stAba('aba_bo','abc_bo',null,'u');
	arAbas[2] = new stAba('aba_envolvidos','abc_envolvidos',null,'u');
	arAbas[3] = new stAba('aba_veiculos','abc_veiculos',null,'u');
	arAbas[4] = new stAba('aba_materiais_armas','abc_materiais_armas',null,'u');
	arAbas[5] = new stAba('aba_ocorrencia','abc_ocorrencia',null,'u');
	arAbas[6] = new stAba('aba_ocorrencia1','abc_ocorrencia1',null,'u');
</SCRIPT><title>
  <h:outputText value="#{iimsg.index_codf}"/>
</title>
</head>
<body onload="tran='indexcodf';cadbeanx='cadCodfBean';AlternarMenus(<%= request.getParameter("menu") %>);AlternarAbas_vert(cadbeanx, <%= request.getAttribute("pagina") %>);">
  <h:form id="cadForm">
  <%@include file="/projHeader.jsp"%>
  <%@include file="projMenu.jsp"%>
  <h:inputHidden id="tabsvf" value="005950000000000000000000000000" />
    <!-- Principal -->
    <table id="principal" class="tbp">
      <tr>
        <td valign="top" align="center">
          <!-- Conteudo -->
          <table id="conteudo" class="tbc" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>
                <br>
                <!-- Barra -->
                <table id="barra" class="tbb" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="tti" width="100%">
                      <!-- Titulo -->
                      <h:outputText value="#{iimsg.index_codf}"/>
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
                    <td background="../imagens/md_curva_topesq.gif" width="15" height="13">                    </td>
                    <td background="../imagens/md_fio_top.gif" height="13">                    </td>
                    <td background="../imagens/md_curva_topdir.gif" width="15" height="13">                    </td>
                  </tr>
                  <tr>
                    <td width="15" background="../imagens/md_fio_esq.gif" nowrap>                    </td>
                    <td align="center" background="../imagens/pixel_claro.gif">
                      <!-- Cadastro -->
                      <table id="cadastro" class="tbcd">
                        <tr>
                          <td align="left" valign="top">
						    <!-- ABAS -->
                            <table class="tbabv" height="100%" width="150" border="0" cellpadding="3" cellspacing="0">
                              <tr>
                                <!-- B.O.-->
                                <td id="aba_bo">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 1)">B.O.</A>
                                </td>
							  </tr>
							  <tr>
                                <!-- Envolvidos-->
                                <td id="aba_envolvidos">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 2)">Envolvidos</A>
                                </td>
							  </tr>
							  <tr>
                                <!-- Veiculos-->
                                <td id="aba_veiculos">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 3)">Veículos</A>
                                </td>
							  </tr>
							  <tr>
                                <!-- Materiais e Armas-->
                                <td id="aba_materiais_armas">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 4)">Materiais e Armas</A>
                                </td>
							  </tr>
							  <tr>
                                <!-- Ocorrência-->
                                <td id="aba_ocorrencia">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 5)">Ocorrência</A>
                                </td>
                              </tr>
							  <tr>
                                <!-- Ocorrência1-->
                                <td id="aba_ocorrencia1">
                                  <A href="#" class="mnt" onclick="AlternarMenus(<%= request.getParameter("menu") %>), AlternarAbas_vert(cadbeanx, 6)">Ocorrência1</A>
                                </td>
                              </tr>
                            </table>
							<!-- ABAS -->
                          </td>
                          <td width="100%" align="center" valign="top">
                            <!-- abc_bo -->
                            <div id="abc_bo" style="display: none;">
                              <table>
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="aos_xsel" value="#{iimsg.cad_caos}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CAOS';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="atc_xsel" value="#{iimsg.cad_catc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CATC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ant_xsel" value="#{iimsg.cad_cant}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CANT';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="atv_xsel" value="#{iimsg.cad_catv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CATV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="atl_xsel" value="#{iimsg.cad_catl}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CATL';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="afo_xsel" value="#{iimsg.cad_cafo}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CAFO';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="apa_xsel" value="#{iimsg.cad_capa}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CAPA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="acc_xsel" value="#{iimsg.cad_cacc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CACC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- abc_envolvidos -->
                            <div id="abc_envolvidos" style="display: none;">
                              <table align="center" width="100%">
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="bnc_xsel" value="#{iimsg.cad_cbnc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBNC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bec_xsel" value="#{iimsg.cad_cbec}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBEC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bes_xsel" value="#{iimsg.cad_cbes}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBES';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bal_xsel" value="#{iimsg.cad_cbal}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBAL';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bpe_xsel" value="#{iimsg.cad_cbpe}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBPE';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bcp_xsel" value="#{iimsg.cad_cbcp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBCP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bco_xsel" value="#{iimsg.cad_cbco}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBCO';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="btc_xsel" value="#{iimsg.cad_cbtc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBTC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bcc_xsel" value="#{iimsg.cad_cbcc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBCC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bts_xsel" value="#{iimsg.cad_cbts}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBTS';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="btd_xsel" value="#{iimsg.cad_cbtd}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBTD';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bed_xsel" value="#{iimsg.cad_cbed}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBED';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="btl_xsel" value="#{iimsg.cad_cbtl}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBTL';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="blp_xsel" value="#{iimsg.cad_cblp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBLP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="btp_xsel" value="#{iimsg.cad_cbtp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBTP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bdf_xsel" value="#{iimsg.cad_cbdf}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBDF';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bda_xsel" value="#{iimsg.cad_cbda}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBDA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bpa_xsel" value="#{iimsg.cad_cbpa}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBPA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bhb_xsel" value="#{iimsg.cad_cbhb}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBHB';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bch_xsel" value="#{iimsg.cad_cbch}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBCH';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="bpr_xsel" value="#{iimsg.cad_cbpr}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CBPR';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- abc_veiculos -->
                            <div id="abc_veiculos" style="display: none;">
                              <table align="center" width="100%">
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="csv_xsel" value="#{iimsg.cad_ccsv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCSV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cma_xsel" value="#{iimsg.cad_ccma}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCMA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cmv_xsel" value="#{iimsg.cad_ccmv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCMV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cev_xsel" value="#{iimsg.cad_ccev}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCEV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ccv_xsel" value="#{iimsg.cad_cccv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCCV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ctc_xsel" value="#{iimsg.cad_cctc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCTC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ctv_xsel" value="#{iimsg.cad_cctv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCTV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="coa_xsel" value="#{iimsg.cad_ccoa}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCOA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ctg_xsel" value="#{iimsg.cad_cctg}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCTG';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ccg_xsel" value="#{iimsg.cad_cccg}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCCG';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cfv_xsel" value="#{iimsg.cad_ccfv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCFV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cmb_xsel" value="#{iimsg.cad_ccmb}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCMB';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cta_xsel" value="#{iimsg.cad_ccta}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCTA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cnc_xsel" value="#{iimsg.cad_ccnc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCNC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cex_xsel" value="#{iimsg.cad_ccex}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCEX';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cop_xsel" value="#{iimsg.cad_ccop}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCOP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="cvv_xsel" value="#{iimsg.cad_ccvv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCVV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="csm_xsel" value="#{iimsg.cad_ccsm}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCSM';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- abc_materiais_armas -->
                            <div id="abc_materiais_armas" style="display: none;">
                              <table align="center" width="100%">
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="dsm_xsel" value="#{iimsg.cad_cdsm}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDSM';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dto_xsel" value="#{iimsg.cad_cdto}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDTO';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dtc_xsel" value="#{iimsg.cad_cctc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CCTC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dpm_xsel" value="#{iimsg.cad_cdpm}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDPM';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dmr_xsel" value="#{iimsg.cad_cdmr}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDMR';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dta_xsel" value="#{iimsg.cad_cdta}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDTA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dca_xsel" value="#{iimsg.cad_cdca}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDCA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="dma_xsel" value="#{iimsg.cad_cdma}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDMA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="doa_xsel" value="#{iimsg.cad_cdoa}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CDOA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- abc_ocorrencia -->
                            <div id="abc_ocorrencia" style="display: none;">
                              <table align="center" width="100%">
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="etc_xsel" value="#{iimsg.cad_cetc}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CETC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="emu_xsel" value="#{iimsg.cad_cemu}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEMU';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="egv_xsel" value="#{iimsg.cad_cegv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEGV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="epd_xsel" value="#{iimsg.cad_cepd}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEPD';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ete_xsel" value="#{iimsg.cad_cete}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CETE';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eet_xsel" value="#{iimsg.cad_ceet}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEET';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eva_xsel" value="#{iimsg.cad_ceva}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEVA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="epi_xsel" value="#{iimsg.cad_cepi}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEPI';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="egl_xsel" value="#{iimsg.cad_cegl}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEGL';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="exp_xsel" value="#{iimsg.cad_cexp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEXP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="edn_xsel" value="#{iimsg.cad_cedn}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEDN';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="emv_xsel" value="#{iimsg.cad_cemv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEMV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eta_xsel" value="#{iimsg.cad_ceta}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CETA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="esl_xsel" value="#{iimsg.cad_cesl}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CESL';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- abc_ocorrencia -->
                            <div id="abc_ocorrencia1" style="display: none;">
                              <table align="center" width="100%">
                                <tr>
                                  <td valign="top" align="center" class="tip">
                                    <h:commandLink id="etv_xsel" value="#{iimsg.cad_cetv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CETV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="enf_xsel" value="#{iimsg.cad_cenf}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CENF';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="elp_xsel" value="#{iimsg.cad_celp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CELP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eep_xsel" value="#{iimsg.cad_ceep}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEEP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="erp_xsel" value="#{iimsg.cad_cerp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CERP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ecp_xsel" value="#{iimsg.cad_cecp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CECP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="esf_xsel" value="#{iimsg.cad_cesf}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CESF';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="epv_xsel" value="#{iimsg.cad_cepv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEPV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eac_xsel" value="#{iimsg.cad_ceac}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEAC';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ecv_xsel" value="#{iimsg.cad_cecv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CECV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="edv_xsel" value="#{iimsg.cad_cedv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEDV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eop_xsel" value="#{iimsg.cad_ceop}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEOP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="etp_xsel" value="#{iimsg.cad_cetp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CETP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eoa_xsel" value="#{iimsg.cad_ceoa}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEOA';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ese_xsel" value="#{iimsg.cad_cese}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CESE';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="esp_xsel" value="#{iimsg.cad_cesp}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CESP';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="elu_xsel" value="#{iimsg.cad_celu}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CELU';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="evh_xsel" value="#{iimsg.cad_cevh}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEVH';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="ect_xsel" value="#{iimsg.cad_cect}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CECT';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="erv_xsel" value="#{iimsg.cad_cerv}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CERV';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                    <h:commandLink id="eml_xsel" value="#{iimsg.cad_ceml}" styleClass="mnt" onmousedown="af('codfpesq');wtran='CEML';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_codf',this.id,wtran); "/>
                                    <br>
                                  </td>
                                </tr>
                              </table>
                            </div>
                          </td>
                        </tr>
                      </table>
                      <!-- Cadastro -->
                    </td>
                    <td width="15" background="../imagens/md_fio_dir.gif" nowrap>                    </td>
                  </tr>
                  <tr>
                    <td background="../imagens/md_curva_botesq.gif" width="15" height="13">                    </td>
                    <td background="../imagens/md_fio_bot.gif" height="13">                    </td>
                    <td background="../imagens/md_curva_botdir.gif" width="15" height="13">                    </td>
                  </tr>
                </table>
                <!-- Moldura -->
              </td>
            </tr>
          </table>
          <!-- Conteudo -->
          <iframe id="fSalvaTipo" width="0" height="0" frameborder="0">          </iframe>
          <iframe id="fSalvaAssist" width="0" height="0" frameborder="0">          </iframe>
          <iframe id="salvaAba" width="0" height="0" frameborder="0">          </iframe>
        </td>
      </tr>
    </table>
    <!-- Principal -->
  </h:form>
  <!-- This hidden form used to send a request to a popup window. -->
  <h:form id="hiddenform" target="">
    <h:inputHidden id="target" value=""/>
    <h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
    <input type="hidden" name="hiddenform" value="hiddenform"/>
    <input type="hidden" name="hiddenform:_idcl"/>
  </h:form>
<%@include file="projFooter.jsp"%>
</body>
</html>
</f:view>
