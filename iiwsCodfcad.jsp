<!--   Proj: WBRL - WebRail - Railway Managment System /  ctl 01-001
html: Codf,  Path: c:/Projetos/Fabrica/Java/@WBRL//  -->
 <!-- Document Partition: 0 -->
<%@page import="appl.bean.CadastroBean"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%session.setAttribute("cadbeanx","cadCodfBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<f:view><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <!-- Mensagens de erro -->
 <ps:messages layout="script"/>
 <meta http-equiv="PRAGMA" content="no-cache"/>
 <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/fa/css/all.css">
<link rel="stylesheet" href="styleBS.css">
<link rel="stylesheet" type="text/css"  href="../128b3.css" />
 <link rel="stylesheet" href="../projStandard.css" type="text/css">
 <link rel="stylesheet" href="../projCalendar.css" type="text/css">
 <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
 <script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
 <script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
 <script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>

 <script src="../iiCalendar.js" type="text/javascript"></script>


 <SCRIPT type="text/javascript">
    
    // Get Load Fields -----------------------------------------
 function testUpdate() {
    uf();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?ufmv='+stx;msgmv();
    document.getElementById('cadForm:aUpdate').onclick();
    upflag=0;
 }
 
 
 function loadPage(number) {
    AlternarSuperFlag(el('cadForm:tabsvf').value);
     // Main Stubs Declarations...
 }
</SCRIPT>
  <title><h:outputText value="#{cadCodfBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();fcf('cadForm:codf_tp');ufmvini();tran='codfcad';cadbeanx='cadCodfBean';loadPage(<%= request.getAttribute("pagina") %>);">
  <h:form id="cadForm" target="mesg">
  <%@include file="projHeader1.jsp"%>
    <div id="loading" class="loading" align="center"><img src="../imagens/loader3.gif"></div>
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
                      <img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
                    <h:outputText value="#{cadCodfBean.trans_tt}"/>
                    </td>
                    <td valign="bottom" nowrap>
                      <!-- Botoes -->
                      <table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
                        <tr>
                          <td width="37" height="31" rowspan="3" background="../imagens/md_curva_top.gif" nowrap> </td>
                          <td width="10" height="31" rowspan="3" background="../imagens/md_fio_top1.gif" nowrap> </td>
                          <td height="31" rowspan="3" align="center" background="../imagens/md_fio_top1.gif" nowrap>
                            <h:commandLink id="aExcluirLinha" action="#{cadCodfBean.doExcluirLinha}" immediate="true"/>
                            <ps:psCommandLink id="aClose" onmousedown="msgwinclose()">
                              <ps:psGraphicImage url="../imagens/btClose.gif" styleClass="btp" alt="#{iimsg.botao_close}"/>
                            </ps:psCommandLink>
                            <h:inputHidden id="tabsvf" value="#{cadCodfBean.tabsvf}" />
                            <h:inputHidden id="tabsvf_in" value="#{cadCodfBean.tabsvf_in}" />
                            <h:inputHidden id="tabsvf_tr" value="#{cadCodfBean.tabsvf_tr}" />
                            <h:inputHidden id="xbutn_id" value="#{cadCodfBean.xbutn_id}" />
                            <h:inputHidden id="xmesg_rc" value="#{cadCodfBean.xmesg_rc}" />
                            <h:outputText id="sys_fill" style="display:none" value="#{iimsg.sys_fill}" />
                            <h:outputText id="sys_notfound" style="display:none" value="#{iimsg.sys_notfound}" />
                            <h:outputText id="sys_or" style="display:none" value="#{iimsg.sys_or}" />
                          </td>
                          <td width="15" height="13" background="../imagens/md_curva_topdir1.gif" nowrap> </td>
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
                    <td background="../imagens/md_curva_topesq.gif" width="15" height="13"> </td>
                    <td background="../imagens/md_fio_top.gif" height="13"> </td>
                    <td background="../imagens/md_quina_topdir.gif" width="15" height="13"> </td>
                  </tr>
                  <tr>
                    <td width="15" background="../imagens/md_fio_esq.gif" nowrap> </td>
                      <td align="center" background="../imagens/pixel_claro.gif">
                      <!-- Cadastro Main -->
                      <table id="cadastro" class="tbcd">
                        <tr> <td valign="top" >
                                <tr>  <%-- <tr open> --%>
                                      <td      width="140" class="tip txl pl0"> <%-- open w/ inputText--%>
                                      <h:outputLabel id="lbl_codf_tp" for="codf_tp" value="#{iimsg.Codf_codf_tp_tt}"/>  </td> <%-- <top> --%>
                                      <%-- prop Primary Key --%>
                                      <%-- Processing Pk --%>
                                      <td  width="null" > <h:inputText id="codf_tp" tabindex="1"  value="#{cadCodfBean.codf_tp}"  styleClass="tbx" size="22" maxlength="20" onchange="bv('','codf_tp','0',this.value);"/>
                                      <ps:psGraphicImage id="codf_tp_vc" flagType="val" flag="#{cadCodfBean.codf_tp_vc}" styleClass="btp"/>
                                      </td> <%-- <close td> --%>
                                </tr> <%-- <tr close> --%>
                                <tr>  <%-- <tr open> --%>
                                      <td      width="140" class="tip txl pl0"> <%-- open w/ inputText--%>
                                      <h:outputLabel id="lbl_codf_lg" for="codf_lg" value="#{iimsg.Codf_codf_lg_tt}"/>  </td> <%-- <top> --%>
                                      <%-- prop Primary Key --%>
                                      <%-- Processing Pk --%>
                                      <td  width="null" > <h:inputText id="codf_lg" tabindex="2"  value="#{cadCodfBean.codf_lg}"  styleClass="tbx" size="22" maxlength="20" onchange="bv('','codf_lg','0',this.value);"/>
                                      <ps:psGraphicImage id="codf_lg_vc" flagType="val" flag="#{cadCodfBean.codf_lg_vc}" styleClass="btp"/>
                                      </td> <%-- <close td> --%>
                                </tr> <%-- <tr close> --%>
                                <tr>  <%-- <tr open> --%>
                                      <td      width="140" class="tip txl pl0"> <%-- open w/ inputText--%>
                                      <h:outputLabel id="lbl_codf_id" for="codf_id" value="#{iimsg.Codf_codf_id_tt}"/>  </td> <%-- <top> --%>
                                      <%-- prop Primary Key --%>
                                      <%-- Processing Pk --%>
                                      <td  width="null" > <h:inputText id="codf_id" tabindex="3"  value="#{cadCodfBean.codf_id}"  styleClass="tbx" size="22" maxlength="20" onchange="bv('','codf_id','0',this.value);"/>
                                      <ps:psGraphicImage id="codf_id_vc" flagType="val" flag="#{cadCodfBean.codf_id_vc}" styleClass="btp"/>
                                      </td> <%-- <close td> --%>
                                </tr> <%-- <tr close> --%>
                                <tr>  <%-- <tr open> --%>
                                      <td      width="140" class="tip txl pl0"> <%-- open w/ inputText--%>
                                      <h:outputLabel id="lbl_codf_ds" for="codf_ds" value="#{iimsg.Codf_codf_ds_tt}"/>  </td> <%-- <top> --%>
                                      <%-- inputText --%>
                                      <%-- nowrap 5676 --%>
                                      <td   width="null"   >
                                      <h:inputText id="codf_ds" tabindex="4"  value="#{cadCodfBean.codf_ds}" size="52" maxlength="50"  styleClass="tbx"onchange="bv('','codf_ds','0',this.value);"/>
                                      <ps:psGraphicImage id="codf_ds_vc" flagType="val" flag="#{cadCodfBean.codf_ds_vc}" styleClass="btp"/>
                                      </td> <%-- <close td> --%>
                                </tr> <%-- <tr close> --%>
                                <tr>  <%-- <tr open> --%>
                                      <td      width="140" class="tip txl pl0"> <%-- open w/ inputText--%>
                                      <h:outputLabel id="lbl_codf_supid" for="codf_supid" value="#{iimsg.Codf_codf_supid_tt}"/>  </td> <%-- <top> --%>
                                      <%-- inputText --%>
                                      <%-- nowrap 5676 --%>
                                      <td   width="null"   >
                                      <h:inputText id="codf_supid" tabindex="5"  value="#{cadCodfBean.codf_supid}" size="12" maxlength="10"  styleClass="tbx"onchange="bv('','codf_supid','0',this.value);"/>
                                      <ps:psGraphicImage id="codf_supid_vc" flagType="val" flag="#{cadCodfBean.codf_supid_vc}" styleClass="btp"/>
                                      </td> <%-- <close td> --%>
                                </tr> <%-- <tr close> --%>
                            <!-- D00_NOTR -->
                              <div id="abc_notr" style="display: none">
                            </div>
                          </td>
                        </tr>
                      </table>
                      <!-- Cadastro -->
                    </td>
                    <td width="15" background="../imagens/md_fio_dir.gif" nowrap> </td>
                  </tr>
                  <tr>
                    <td background="../imagens/md_curva_botesq.gif" width="15" height="13"> </td>
                    <td background="../imagens/md_fio_bot.gif" height="13"> </td>
                    <td background="../imagens/md_curva_botdir.gif" width="15" height="13"> </td>
                  </tr>
                </table>
                <!-- Moldura -->
              </td>
            </tr>
          </table>
          <!-- Conteudo -->
          <!-- iFrames -->
          <iframe id="fiiBv" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdfk" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdak" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdakht" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdakhv" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fBuscaDesc" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdfkds" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiLocalidadesch" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
          <iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
        </td>
      </tr>
    </table>
    <!-- Principal -->
  </h:form>
  <!-- This hidden form used to send a request to a popup window. -->
  <h:form id="hiddenform" target="">
    <h:inputHidden id="target" value=""/>
    <h:inputHidden id="source" value="cadForm:"/>
    <h:inputHidden id="sourcedesc" value="cadForm:nome"/>
    <h:commandLink id="xsel_vali" action="#{cadCodfBean.doValidate}" immediate="true"/>
    <h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_obob" action="#{cadCodfBean.doObternull}" immediate="true"/>
    <h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_helpview" action="#{cadHelpviewBean.doObternull}" immediate="true"/>
    <!-- for current oabv -->
    <h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionar}" immediate="true"/>
    <h:commandLink id="xrec_codf" action="#{cadCodfBean.doObternull}" immediate="true"/>
  </h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
