<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%@include file="iiLoginRequired.jsp"%>
<f:loadBundle basename="ApplicationResources" var="msg"/>
<f:view><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <!-- Mensagens de erro -->
  <ps:messages layout="script"/>
  <meta http-equiv="PRAGMA" content="no-cache"/>
  <link rel="stylesheet" href="../projStandard.css" type="text/css">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>
  <h:outputText value="#{msg.pesq_cep_title}"/>
</title>
</head>
<body onload="tran='ceppsq';<%session.setAttribute("tipo","ceppsq");%>;AlternarMenus(<%= request.getParameter("menu") %>,<%= session.getAttribute("ceppsq") %> );">
  <h:form id="cadForm">
  <%@include file="/projHeader.jsp"%>
  <%@include file="projMenu.jsp"%>
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
                      <h:outputText value="#{msg.pesq_cep_title}"/>
                    </td>
                    <td valign="bottom" nowrap>
                      <!-- Botoes -->
                      <table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
                        <tr>
                          <td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap>                          </td>
                          <td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap>                          </td>
                          <td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
                            <ps:psCommandLink id="aPrev" rendered="#{cadCepBean.hasPrevPage}" action="#{cadCepBean.doPaginaAnterior}">
                              <ps:psGraphicImage url="../imagens/btPgAnterior.gif" styleClass="btp" alt="#{msg.botao_anterior}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aNext" rendered="#{cadCepBean.hasNextPage}" action="#{cadCepBean.doProximaPagina}">
                              <ps:psGraphicImage url="../imagens/btPgProxima.gif" styleClass="btp" alt="#{msg.botao_proxima}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aFiltrar" rendered="#{cadCepBean.canPesquisar}" action="#{cadCepBean.doFilterPesquisar}">
                              <ps:psGraphicImage url="../imagens/btFilter.gif" styleClass="btp" alt="#{msg.botao_filtrar}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aLimpar" rendered="#{cadCepBean.canPesquisar}" action="#{cadCepBean.doLimpar}">
                              <ps:psGraphicImage url="../imagens/btCancel.gif" styleClass="btp" alt="#{msg.botao_limpar}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aNew" rendered="#{cadCepBean.canInserir}" onmousedown="wtran='cepcad';document.getElementById('hiddenform').target=tran;document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;showpopup(tran,'xrec_obnv',this.id,wtran);" action="#{cadCepBean.doNovo}">
                              <ps:psGraphicImage url="../imagens/btNew.gif" styleClass="btp" alt="#{msg.botao_inserir}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aPesquisar" rendered="#{cadCepBean.assist}" onmousedown="window.close()">
                              <ps:psGraphicImage url="../imagens/btClose.gif" styleClass="btp" alt="#{msg.botao_retornar}"/>
                            </ps:psCommandLink>
                          </td>
                          <td width="15" height="13" background="../imagens/md_curva_topdir1.gif" nowrap>                          </td>
                        </tr>
                        <tr>
                          <td width="15" background="../imagens/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
                    <td background="../imagens/md_curva_topesq.gif" width="15" height="13">                    </td>
                    <td background="../imagens/md_fio_top.gif" height="13">                    </td>
                    <td background="../imagens/md_quina_topdir.gif" width="15" height="13">                    </td>
                  </tr>
                  <tr>
                    <td width="15" background="../imagens/md_fio_esq.gif" nowrap>                    </td>
                    <td align="center" background="../imagens/pixel_claro.gif">
                      <!-- Pesquisa -->
                      <table id="pesquisa" class="tbpq">
                        <tr>
                          <td colspan="3" align="center">
                            <!-- Dados -->
                            <h:dataTable
                              value="#{cadCepBean.pesqData}"
                              var="cep"
                              binding="#{cadCepBean.pesqTable}"
                              cellpadding="1"
                              cellspacing="1"
                              rowClasses="tre, tro"
                              headerClass="tbh"
                              footerClass="tbf"
                              styleClass="tb"
                              id="dtDados"
                              border="0"
                              rules="all"
                              rows="#{cadCepBean.pageLength}"
                              first="#{cadCepBean.currentLine}">
                              <h:column id="colNu">
                                <f:facet name="header">
                                  <h:panelGroup id="pNu" styleClass="tbh">
                                    <h:outputText id="hNu" value="#{msg.pesq_cep_nu}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haNuOrder" action="#{cadCepBean.doOrderLogNu}">
                                      <ps:psGraphicImage id="hNuOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderLogNuDesc}"/>
                                      <ps:psGraphicImage id="hNuOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderLogNu}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="log_nu_xide" styleClass="ti" value="#{cep.log_nu}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="tbFiltroNu" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroLogNu}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colCep">
                                <f:facet name="header">
                                  <h:panelGroup id="pCep" styleClass="tbh">
                                    <h:outputText id="hCep" value="#{msg.pesq_cep_cep}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haCepOrder" action="#{cadCepBean.doOrderCep}">
                                      <ps:psGraphicImage id="hCepOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderCepDesc}"/>
                                      <ps:psGraphicImage id="hCepOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderCep}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="cep_xide" styleClass="ti" value="#{cep.cep}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="cep_xfil" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroCep}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colNo">
                                <f:facet name="header">
                                  <h:panelGroup id="pNo" styleClass="tbh">
                                    <h:outputText id="hNo" value="#{msg.pesq_cep_no}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haNoOrder" action="#{cadCepBean.doOrderLogNo}">
                                      <ps:psGraphicImage id="hNoOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderLogNoDesc}"/>
                                      <ps:psGraphicImage id="hNoOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderLogNo}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="log_no" styleClass="ti" value="#{cep.log_no_com_tipo}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="tbFiltroNo" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroLogNo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colLogCompl">
                                <f:facet name="header">
                                  <h:panelGroup id="pLogCompl" styleClass="tbh">
                                    <h:outputText id="hLogCompl" value="#{msg.pesq_cep_log_complemento}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haLogComplOrder" action="#{cadCepBean.doOrderLogCompl}">
                                      <ps:psGraphicImage id="hLogComplOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderLogComplDesc}"/>
                                      <ps:psGraphicImage id="hLogComplOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderLogCompl}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="log_complemento" styleClass="ti" value="#{cep.log_complemento}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="tbFiltroLogCompl" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroLogCompl}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colBaiNo">
                                <f:facet name="header">
                                  <h:panelGroup id="pBaiNo" styleClass="tbh">
                                    <h:outputText id="hBaiNo" value="#{msg.pesq_cep_bai_no}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haBaiNoOrder" action="#{cadCepBean.doOrderBaiNo}">
                                      <ps:psGraphicImage id="hBaiNoOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderBaiNoDesc}"/>
                                      <ps:psGraphicImage id="hBaiNoOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderBaiNo}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="bai_no" styleClass="ti" value="#{cep.bai_no}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="tbFiltroBaiNo" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroBaiNo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colLocNo">
                                <f:facet name="header">
                                  <h:panelGroup id="pLocNo" styleClass="tbh">
                                    <h:outputText id="hLocNo" value="#{msg.pesq_cep_loc_no}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haLocNoOrder" action="#{cadCepBean.doOrderLocNo}">
                                      <ps:psGraphicImage id="hLocNoOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderLocNoDesc}"/>
                                      <ps:psGraphicImage id="hLocNoOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderLocNo}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="loc_no" styleClass="ti" value="#{cep.loc_no}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:inputText id="tbFiltroLocNo" styleClass="pf" onclick="this.value=''" value="#{cadCepBean.filtroLocNo}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                </f:facet>
                              </h:column>
                              <h:column id="colUfeSg">
                                <f:facet name="header">
                                  <h:panelGroup id="pUfeSg" styleClass="tbh">
                                    <h:outputText id="hUfeSg" value="#{msg.pesq_cep_ufe_sg}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                    <h:commandLink id="haUfeSgOrder" action="#{cadCepBean.doOrderUfeSg}">
                                      <ps:psGraphicImage id="hUfeSgOrderDesc" url="../imagens/btOrder_up.gif" border="0" rendered="#{cadCepBean.orderUfeSgDesc}"/>
                                      <ps:psGraphicImage id="hUfeSgOrder" url="../imagens/btOrder_down.gif" border="0" rendered="#{cadCepBean.orderUfeSg}"/>
                                    </h:commandLink>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:outputText id="ufe_sg" styleClass="ti" value="#{cep.ufe_sg}"/>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <f:facet name="footer">
                                  <h:panelGroup id="ufcd">
                                    <h:inputText id="ufcd_xfil" styleClass="pfufd" onchange="this.value = this.value.toUpperCase();" onclick="this.value=''" value="#{cadCepBean.filtroUfeSg}" onkeypress="if (event.keyCode == 13) { el('cadForm:aFiltrar').click();}"/>
                                    <h:commandButton id="ufcd_xfcb" immediate="true" onmousedown="wtran='ufxxpesq';document.getElementById('fSalvaTipo').src = 'salvaTipo.jsp?tipo='+wtran;document.getElementById('hiddenform').target=tran;showpopup(tran,'xsel_uf',this.id,wtran); " image="../imagens/btSelecionar.gif"/>
                                  </h:panelGroup>
                                </f:facet>
                              </h:column>
                              <h:column>
                                <f:facet name="header">
                                  <h:panelGroup id="pReg" styleClass="tbh">
                                    <h:outputText id="hReg" value="#{msg.pesq_reg}"/>
                                    <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                  </h:panelGroup>
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:commandButton id="xget" immediate="true" rendered="#{cadCepBean.assist}" onmousedown="aa=this.id.slice(0,this.id.search('xget'));valor=el(aa+'log_nu_xide').innerHTML;update(valor);" image="../imagens/btSel.gif"/>
                                <f:facet name="footer">
                                  <h:outputText id="bReg" styleClass="pf" value=""/>
                                </f:facet>
                              </h:column>
                            </h:dataTable>
                            <!-- Dados -->
                          </td>
                        </tr>
                      </table>
                      <!-- Pesquisa -->
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
          <iframe id="fiiSaveType" width="0" height="0" frameborder="0">          </iframe>
          <iframe id="fiiSaveAssist" width="0" height="0" frameborder="0">          </iframe>
          <iframe id="fiiCepsch" width="0" height="0" frameborder="0">          </iframe>
        </td>
      </tr>
    </table>
    <!-- Principal -->
  </h:form>
  <!-- This hidden form used to send a request to a popup window. -->
  <h:form id="hiddenform" target="">
    <h:inputHidden id="target" value=""/>
    <h:commandLink id="xrec_obob" action="#{cadCepBean.doObter}" immediate="true"/>
    <h:commandLink id="xrec_obnv" action="#{cadCepBean.doNovo}" immediate="true"/>
    <h:commandLink id="xsel_uf" action="#{cadUfBean.doSelecionar}" immediate="true"/>
    <input type="hidden" name="hiddenform" value="hiddenform"/>
    <input type="hidden" name="hiddenform:_idcl"/>
  </h:form>
<%@include file="projFooter.jsp"%>
</body>
</html>
</f:view>
