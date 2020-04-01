<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>

  <meta http-equiv="PRAGMA" content="no-cache"/>
  <link rel="stylesheet" href="../projStandard.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>
  <h:outputText value="#{iimsg.index_title}"/>
</title>
</head>
<body onload="document.forms['loginForm']['loginForm:login'].focus();statusbar=0,menubar=0,toolbar=1">
  <h:form id="loginForm">
  <%@include file="projHeader.jsp"%>
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
                      <h:outputText value="#{iimsg.login_login_title}"/>
                    </td>
                    <td valign="bottom" nowrap>
                      <!-- Botoes -->
                      <table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
                        <tr>
                          <td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap>                          </td>
                          <td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap>                          </td>
                          <td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
                            <h:commandButton id="btEntrar" action="#{loginBean.doLogin}" value="#{iimsg.login_entrar}" alt="#{iimsg.login_entrar}" image="../imagens/btLogin.gif"/>
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
                      <!-- Login -->
                      <!-- Mensagens de erro -->
                      <ps:messages layout="div" styleClass="tip"/>
                      <table align="center">
                        <tr>
                          <td>
                            <h:outputLabel for="login">
                              <h:outputText value="#{iimsg.login_login_tt}" styleClass="tip"/>
                            </h:outputLabel>
                          </td>
                          <td>
                            <h:inputText id="login" value="#{loginBean.login}" styleClass="tb100"/>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <h:outputLabel for="senha">
                              <h:outputText value="#{iimsg.login_senha_tt}" styleClass="tip"/>
                            </h:outputLabel>
                          </td>
                          <td>
                            <h:inputSecret id="senha" value="#{loginBean.senha}" styleClass="tb100"/>
                          </td>
                        </tr>

                      </table>
                      <!-- Login -->
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
        </td>
      </tr>

    </table>
    <!-- Principal -->
  </h:form>
<%@include file="projFooter.jsp"%>
</body>
</html>
</f:view>
