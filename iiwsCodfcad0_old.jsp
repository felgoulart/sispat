<%@page import="appl.bean.CadastroBean, java.util.Map, appl.bean.CadCodfBean"%>
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%@include file="iiLoginRequired.jsp"%>
<f:loadBundle basename="ApplicationResources" var="msg"/>
<%
  String tipo = request.getParameter("tipo");
  if (tipo == null) {
    tipo = (String) session.getAttribute("codf_tipo");
  }
  else {
    if (session.getAttribute("cadCodfBean") != null) {
      ((CadCodfBean) session.getAttribute("cadCodfBean")).setCodf_tp(tipo);
    }
    else {
      session.setAttribute("codf_tipo", tipo);
    }
  }
  Map msg = (Map) request.getAttribute("msg");
%>
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
  <%= msg.get("cad_codf_" + tipo + "_title") %>
</title>
</head>
<body onload="AlternarMenus(<%= request.getParameter("menu") %>);">
  <h:form id="cadForm">
  <%@include file="projHeader1.jsp"%>
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
                      <%= msg.get("cad_codf_" + tipo + "_title") %>
                    </td>
                    <td valign="bottom" nowrap>
                      <!-- Botoes -->
                      <table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
                        <tr>
                          <td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap>                          </td>
                          <td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap>                          </td>
                          <td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
                            <ps:psCommandLink id="aSelect" onmousedown="form1=document.forms[1];vn=form1['hiddenform:source'].value;dn=form1['hiddenform:sourcedesc'].value;form=document.forms[0];v=form[vn].value;d=form[dn].value;update(v,d)">
                              <ps:psGraphicImage url="../imagens/btSel.gif" styleClass="btp" alt="#{msg.botao_selecionar}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aInserir" rendered="#{cadCodfBean.canInserir}" onmousedown="msgw('aInserir');" action="#{cadCodfBean.doInserir}">
                              <ps:psGraphicImage url="../imagens/btNew.gif" styleClass="btp" alt="#{msg.botao_inserir}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aAlterar" rendered="#{cadCodfBean.canAlterar}" onmousedown="msgw('aAlterar')" action="#{cadCodfBean.doAlterar}">
                              <ps:psGraphicImage url="../imagens/btEdit.gif" styleClass="btp" alt="#{msg.botao_alterar}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aCancelar" rendered="#{cadCodfBean.canCancelar}" onmousedown="msgwr()" action="#{cadCodfBean.doCancelar}">
                              <ps:psGraphicImage url="../imagens/btCancel.gif" styleClass="btp" alt="#{msg.botao_cancelar}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aExcluir" rendered="#{cadCodfBean.canExcluir}" onmousedown="msgwe()" action="#{cadCodfBean.doExcluir}">
                              <ps:psGraphicImage url="../imagens/btDelete.gif" styleClass="btp" alt="#{msg.botao_excluir}"/>
                            </ps:psCommandLink>
                            <ps:psCommandLink id="aPesquisar" rendered="#{cadCodfBean.canPesquisar}" onmousedown="window.close()">
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
                    <td align="center" background="../imagens/pixel_azulclaro.gif">
                      <!-- Cadastro -->
                      <table id="cadastro" class="tbcd">
                        <tr>
                          <td width="100" class="tip">
                            <h:outputLabel for="codigo">
                              <h:outputText styleClass="tip" value="#{msg.cad_codf_id}"/>
                            </h:outputLabel>
                          </td>
                          <td>
                            <h:inputText id="codigo" value="#{cadCodfBean.codf_id}" styleClass="tbco" maxlength="5"/>
                          </td>
                        </tr>
                        <tr>
                          <td width="100" class="tip">
                            <h:outputLabel for="descricao">
                              <h:outputText styleClass="tip" value="#{msg.cad_codf_ds}"/>
                            </h:outputLabel>
                          </td>
                          <td>
                            <h:inputText id="descricao" value="#{cadCodfBean.codf_ds}" styleClass="tb100" maxlength="100"/>
                          </td>
                        </tr>
                        <tr>
                          <td width="100" class="tip">
                            <h:outputLabel for="pai">
                              <h:outputText styleClass="tip" value="#{msg.cad_papel_pai}"/>
                            </h:outputLabel>
                          </td>
                          <td>
                            <h:inputText id="pai" value="#{cadCodfBean.codf_supid}" styleClass="tbco" onchange="#{cadCodfBean.onchange}" maxlength="5"/>
                            <h:commandLink tabindex="-1" action="#{cadCodfBean.doSelecionar}" id="findPai" styleClass="btb">
                              <h:graphicImage styleClass="btp" alt="#{msg.botao_pesquisar}" url="../imagens/btPesquisar.gif"/>
                              <f:param name="destino" value="cadCodfBean"/>
                              <f:param name="campo" value="codf_supid"/>
                            </h:commandLink>
                            <h:outputText id="lPai" value="#{cadCodfBean.descPai}" styleClass="dsp"/>
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
          <iframe id="fBuscaDesc" width="0" height="0" frameborder="0">          </iframe>
          <iframe id="fSalvaTipo" width="0" height="0" frameborder="0">          </iframe>
        </td>
      </tr>
    </table>
    <!-- Principal -->
  </h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
