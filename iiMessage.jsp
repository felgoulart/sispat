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

<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<title>
  <h:outputText value="#{msg.msg_msg}"/>
</title>
</head>
<body onload="zz=document.getElementById('pesqForm:msgqt').value;winmsgsize(zz);updateupflag();window.focus();window.resizeTo(msgwidth,msgheight);" >
  <h:form id="pesqForm"  onclick="window.opener.updateMsgClose();">
  <%@include file="projHeader1.jsp"%>
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
                      <img src="../imagens/btMessage.gif" class="btp" align="middle"/>&nbsp;
                      <h:outputText value="#{msg.msg_msg}"/>
                    </td>
                    <td valign="bottom" nowrap>
                      <!-- Botoes -->
                      <table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
                        <tr>
                          <td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap>                          </td>
                          <td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap>                          </td>
                          <td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
                            <ps:psCommandLink id="aPesquisar" onmousedown="window.opener.updateMsgClose();">
                              <ps:psGraphicImage url="../imagens/btClose.gif" styleClass="btp" alt="#{msg.botao_retornar}"/>
                            </ps:psCommandLink>
                            <% String aa=(String) session.getAttribute("cadbeanx");session.setAttribute("cadBean", (CadastroBean) session.getAttribute(aa)); %>
                           <h:inputHidden id="val" value="#{cadBean.tabsvf}" />
                           <h:inputHidden id="msgqt" value="#{cadBean.msgqtx}" />
                           <h:inputHidden id="objt_pk" value="#{cadBean.objt_pk}" />
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
                              value="#{cadBean.pesqMesg}"
                              var="item"
                              cellpadding="1"
                              cellspacing="1"
                              rowClasses="tre, tro"
                              headerClass="tbh"
                              footerClass="tbf"
                              styleClass="tb"
                              id="dtDados"
                              border="0"
                              rules="all"
                              first="0">
                              <h:column>
                                <f:facet name="header">
                                </f:facet>
                                <f:verbatim>&nbsp;&nbsp;</f:verbatim>
                                <h:commandLink id="flag_proc">
                                  <ps:psGraphicImage flag="#{item.processed}" styleClass="btp" />
                                </h:commandLink>
                                <f:verbatim>&nbsp;</f:verbatim>
                              </h:column>
                              <h:column>
                                <f:facet name="header">
                                  <h:outputText id="hCodigo" value="#{msg.msg_atn}"/>
                                </f:facet>
                                <h:commandLink id="flag_img">
                                  <ps:psGraphicImage flag="#{item.symbol}" styleClass="btp" />
                                </h:commandLink>
                                <h:outputText styleClass="tim" value="#{item.message}"/>
                                <f:verbatim>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</f:verbatim>
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
        </td>
      </tr>
    </table>
    <!-- Principal -->
  </h:form>
<%@include file="projFooter.jsp"%>
</body>
</html>
</f:view>
