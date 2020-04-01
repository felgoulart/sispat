<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="WEB-INF/PsJsf.tld" prefix="ps"%>
<%response.addHeader("PRAGMA", "NO-CACHE");%>
<%session.setAttribute("cadbeanx","cadEmailBean");%>
<%@include file="iiLoginRequired.jsp"%>
<%@include file="iiStubs.jsp"%>
<f:view locale="#{cadLangBean.lang_cd_var}"  ><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<f:loadBundle basename="ApplicationResources" var="iimsg"/>
<html>
<head>
<!-- Mensagens de erro -->
<ps:messages layout="script"/>
<meta http-equiv="PRAGMA" content="no-cache"/>
<link rel="stylesheet" href="../projStandardEmail.css" type="text/css">
<link rel="stylesheet" href="../projCalendar.css" type="text/css">
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
<script src="../iiFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctions.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsGen.js" type="text/javascript" language="javascript"></script>
<script src="../projFunctionsWSizeGen.js" type="text/javascript" language="javascript"></script>
<script src="../iiCalendar.js" type="text/javascript"></script>

<SCRIPT type="text/javascript">

// Get Load Fields -----------------------------------------

function loadPage(number) {
lpCaller();
helpcd=':ssr';
fcf('cadForm:email_cd_emdst');
AlternarSuperFlag(el('cadForm:tabsvf').value);
mesgStyle(rel('cadForm:xmesg_rc'));
}
function loadObjt_pk(objt_pk) {
el('cadForm:email_id').value = objt_pk;
}
</SCRIPT>
<title><h:outputText value="#{cadEmailBean.trans_tt}"/></title>
</head>
<body onkeydown="rk();" onload="window.focus();loading();ufmvini();tran='emailcad';cadbeanx='cadEmailBean';loadPage(<%= request.getAttribute("pagina") %>);">
<h:form id="cadForm" enctype="multipart/form-data" >
<jsp:setProperty property="cadbeanx" name="cadEmailBean" value="cadEmailBean"/>
<h:inputHidden id="cadbeanx" value="#{cadEmailBean.cadbeanx}"  />
<div id="loading" class="loading" align="center"><h:outputText id="label_wait" value="#{iimsg.msg_wait}"/></div>
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
<img id="flg_vc" class="btp" align="absmiddle"/>&nbsp;
<h:outputText value="#{cadEmailBean.trans_tt}"/>
</td>
<td valign="bottom" nowrap>
<!-- Botoes -->
<table id="botoes" border="0" cellpadding="0" cellspacing="0" align="right">
<tr>
<td width="37" height="31" rowspan="3" background="../imagens/thmeEmail/md_curva_top.gif" nowrap> </td>
<td width="10" height="31" rowspan="3" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap> </td>
<td height="31" rowspan="3" align="center" background="../imagens/thmeEmail/md_fio_top1.gif" nowrap>
<ps:psCommandLink id="aBackToSearch" styleClass="btp" ativo="../imagens/btVoltar.gif" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emailpsq'+'&ufmv='+stx;msgwr();upflag=0;" title="#{iimsg.returnToSearch}" action="#{cadEmailBean.doSelecionarBack}">
<f:param name="cadbeanx" value="cadEmailBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aUpdate" styleClass="btp" enabled="#{cadEmailBean.canUpdate}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emailcad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadEmailBean.doUpdate}">
<f:param name="cadbeanx" value="cadEmailBean"/>
</ps:psCommandLink>
<ps:psCommandLink id="aCancelar" styleClass="btp" enabled="#{cadEmailBean.canUpdate}" ativo="../imagens/btCancel.gif"  disabled="" onmousedown="msgwr()" title="#{iimsg.botao_novo}" action="#{cadEmailBean.doCancelar}">
</ps:psCommandLink>
<ps:psCommandLink id="aExcluir" styleClass="btp" title="#{iimsg.botao_excluir}" enabled="#{cadEmailBean.canExcluir}" ativo="../imagens/btDelete.gif"  disabled="" onmousedown="msgwex()" action="#{cadEmailBean.doExcluir}">
</ps:psCommandLink>
<ps:psCommandLink id="aRefresh" styleClass="btp"  ativo="../imagens/btRefresh.gif" title="#{iimsg.botao_refresh}" action="#{cadEmailBean.doObter}" onmousedown="msgwr();document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'emailcad'+'&ufmv='+stx">
<f:param name="tipo" value="emailcad"/>
</ps:psCommandLink>
<ps:psCommandLink id="aHelp" styleClass="btp"  ativo="../imagens/btHelp.gif" title="#{iimsg.botao_help}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='Email';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpgen" styleClass="btp"  ativo="../imagens/btHelpGen.gif" title="#{iimsg.botao_help_gen}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='@CrudRfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpEmailRfm" styleClass="btp" enabled="#{cadEmailBean.hasHelpSpcRfm}"  ativo="../imagens/btHelpSpc.gif" title="#{iimsg.botao_help_spc}" onmousedown="wtran='helpcad';el('hiddenform').target=tran;valor1='EmailRfm';el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+valor1;showpopup(tran,'xrec_help',this.id,wtran,'yes');">
</ps:psCommandLink>
<ps:psCommandLink id="aHelpSearch" styleClass="btp"  ativo="../imagens/btHelpRep.gif" onmousedown="fExec('helpsearchpsq', tran, this.id, 'no', '', 'xsel_HelpSearch');" title="#{iimsg.button_help_repository}" immediate="true" action="#{cadHelpSearchBean.doSelecionar}">
</ps:psCommandLink>
<ps:psCommandLink id="aClose" styleClass="btp"  ativo="../imagens/btClose.gif" onmousedown="msgwinclose()" title="#{iimsg.botao_close}">
</ps:psCommandLink>
<h:inputHidden id="tabsvf" value="#{cadEmailBean.tabsvf}" />
<h:inputHidden id="tabsvf_in" value="#{cadEmailBean.tabsvf_in}" />
<h:inputHidden id="tabsvf_tr" value="#{cadEmailBean.tabsvf_tr}" />
<h:inputHidden id="xbutn_id" value="#{cadEmailBean.xbutn_id}" />
<h:inputHidden id="xbutx_id" value="" />
<h:inputHidden id="xuserx_id_login" value="#{cadEmailBean.xuserx_id_login}" />
<h:inputHidden id="xmesg_rc" value="#{cadEmailBean.xmesg_rc}" />
<h:inputHidden id="xmesg_st" value="#{cadEmailBean.xmesg_st}" />
<h:outputText id="label_key_enter" style="display:none" value="#{iimsg.label_key_enter}" />
<h:outputText id="label_fill" style="display:none" value="#{iimsg.label_fill}" />
<h:outputText id="label_notfound" style="display:none" value="#{iimsg.label_notfound}" />
<h:outputText id="label_and" style="display:none" value="#{iimsg.label_and}" />
<h:outputText id="label_or" style="display:none" value="#{iimsg.label_or}" />
<h:outputText id="msg_actionValidOnlyForButtons" style="display:none" value="#{iimsg.msg_actionValidOnlyForButtons}" />
<h:outputText id="msg_actionNotValidForButtons" style="display:none" value="#{iimsg.msg_actionNotValidForButtons}" />
<h:outputText id="msg_invalidOperation" style="display:none" value="#{iimsg.msg_invalidOperation}" />
<h:outputText id="msg_invalidValue" style="display:none" value="#{iimsg.msg_invalidValue}" />
<h:outputText id="msg_valueOf" style="display:none" value="#{iimsg.msg_valueOf}" />
<h:outputText id="msg_mustBe" style="display:none" value="#{iimsg.msg_mustBe}" />
<h:outputText id="msg_cannotBe" style="display:none" value="#{iimsg.msg_cannotBe}" />
<h:outputText id="msg_unlock" style="display:none" value="#{iimsg.msg_unlock}" />
<h:outputText id="multiple_porte" style="display:none" value="#{iimsg.multiple_porte}" />
<h:outputText id="no_porte" style="display:none" value="#{iimsg.no_porte}" />
<h:outputText id="sys_confirm_excluir" style="display:none" value="#{iimsg.sys_confirm_excluir}" />
</td>
<td width="15" height="13" background="../imagens/thmeEmail/md_curva_topdir1.gif" nowrap> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_dir1.gif" nowrap>&nbsp;</td>
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
<td background="../imagens/thmeEmail/md_curva_topesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_top.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_quina_topdir.gif" width="15" height="13"> </td>
</tr>
<tr>
<td width="15" background="../imagens/thmeEmail/md_fio_esq.gif" nowrap> </td>
<td align="center" background="../imagens/thmeEmail/pixel_claro.gif">
<!-- Cadastro Main -->
<table id="cadastro" class="tbcd">
<tr> <td valign="top" >
<tr>  <%-- <tr open> aabbba --%>
<%-- CRUD Form Std Message --%>
<td   colspan="2"    >
<h:inputText id="mesg_var" value="#{cadEmailBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessage" rendered="#{cadEmailBean.canUpdate}" action="#{cadEmailBean.doValidate}" onmousedown="msgw('aMessage');">
<ps:psGraphicImage id="iMessage" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> bbb --%>
</tr> <%-- <tr close> bbb --%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_id" for="email_id"  value="#{iimsg.Email_email_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk zzz --%>
<td  width="0" > <h:inputText id="email_id" tabindex="-1"  readonly="true" value="#{cadEmailBean.email_id}" styleClass="tbxr" size="15" maxlength="15" onchange="bv('','email_id','0',this.value);"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_st" for="email_st"  value="#{iimsg.Email_email_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<h:inputText  id="email_st" onclick="clf(this);" value="#{cadEmailBean.email_st}" onkeydown="keypress=1;"  styleClass="tbxr" onchange="bdcd('','email_st','0','EMLST',this.value);" size="3" maxlength="3" tabindex="-1"  readonly="true"/>
<ps:psGraphicImage id="email_st_vc" flagType="val" flag="#{cadEmailBean.email_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="email_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadEmailBean.email_st_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_ds_from" for="email_ds_from"  value="#{iimsg.Email_email_ds_from_tt}"/>  </td> <%-- <top> --%>
<%-- current Email --%>
<td  width="500" > <h:inputText id="email_ds_from" tabindex="-1"  onfocus="this.blur()" value="#{cadEmailBean.email_ds_from}" onchange="uf();" size="50" maxlength="50"  styleClass="tbxr"/>
<ps:psGraphicImage id="email_ds_from_vc" flagType="val" flag="#{cadEmailBean.email_ds_from_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_cd_emdst" for="email_cd_emdst"  value="#{iimsg.Email_email_cd_emdst_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="email_cd_emdst" tabindex="1"  onclick="clf(this);" value="#{cadEmailBean.email_cd_emdst}"  styleClass="tbx" onkeydown="keypress=1;" onchange="Transfk('','','0','email_cd_emdst','Emdst','emdst_cd','emdst_ds',this.value);" size="22" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="email_cd_emdst_xsel" tabindex="-1" immediate="true" onmousedown="pw('emdstpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="email_cd_emdst_vc" flagType="val" flag="#{cadEmailBean.email_cd_emdst_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="email_cd_emdst_desc" tabindex="-1" onfocus="this.blur()" value="#{cadEmailBean.email_cd_emdst_desc}" styleClass="txlr pr5 tb600r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_sb" for="email_sb"  value="#{iimsg.Email_email_sb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="email_sb" tabindex="2"  value="#{cadEmailBean.email_sb}" size="37" maxlength="35"  styleClass="tbx" onchange="bv('','email_sb','0',this.value);"/>
<ps:psGraphicImage id="email_sb_vc" flagType="val" flag="#{cadEmailBean.email_sb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_tx" for="email_tx"  value="#{iimsg.Email_email_tx_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="email_tx" tabindex="3"  value="#{cadEmailBean.email_tx}" cols="80" rows="6" styleClass="" onchange="bv('','email_tx','0',this.value);"/>
<ps:psGraphicImage id="email_tx_vc" flagType="val" flag="#{cadEmailBean.email_tx_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_ds_files" for="email_ds_files"  value="#{iimsg.Email_email_ds_files_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td  > <h:inputTextarea id="email_ds_files" tabindex="-1"  readonly="true" value="#{cadEmailBean.email_ds_files}" cols="80" rows="3" styleClass="tb660r" onchange="bv('','email_ds_files','0',this.value);"/>
<ps:psGraphicImage id="email_ds_files_vc" flagType="val" flag="#{cadEmailBean.email_ds_files_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_upload" for="upload"  value="#{iimsg.Email_upload_tt}"/>  </td> <%-- <top> --%>
<%-- prop fileAnnex --%>
<td width="600"/>
<ps:psInputFile id="inputFile"  value="#{cadEmailBean.file}" styleClass="tb400r" /> <h:commandButton id="doUpload" action="#{cadEmailBean.doFileAnnex}" image="../imagens/fileUpload3.jpg" /></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_email_dh_sent" for="email_dh_sent"  value="#{iimsg.Email_email_dh_sent_tt}"/>  </td> <%-- <top> --%>
<%-- sent DateTime --%>
<td  width="600" > <h:inputText id="email_dh_sent" tabindex="-1"  readonly="true" value="#{cadEmailBean.email_dh_sent_str}" onchange="uf();" size="19" maxlength="19" styleClass="tbDhr"/>
<ps:psGraphicImage id="email_dh_sent_vc" flagType="val" flag="#{cadEmailBean.email_dh_sent_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>  <%-- <tr open> vvv --%>
<td       width="140" > <%-- open w/ inputText 222--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_Email_send" for="Email_send"  value="#{iimsg.Email_Email_send_ta}"/>  </td> <%-- <top> --%>
<%-- button Send Mail --%>
<td   > <ps:psCommandLink id="aSendMail" title="#{iimsg.sendEmail}" ativo="../imagens/sendEmail.bmp" action="#{cadEmailBean.sendEmail}">
</ps:psCommandLink>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<!-- D00_NOTR -->
<div id="abc_notr" style="display: none">
</div>
</td>
</tr>
</table>
<!-- Cadastro -->
</td>
<td width="15" background="../imagens/thmeEmail/md_fio_dir.gif" nowrap> </td>
</tr>
<tr>
<td background="../imagens/thmeEmail/md_curva_botesq.gif" width="15" height="13"> </td>
<td background="../imagens/thmeEmail/md_fio_bot.gif" height="13"> </td>
<td background="../imagens/thmeEmail/md_curva_botdir.gif" width="15" height="13"> </td>
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
<iframe id="iiwsCEP" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiTransak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSdcd" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveValue" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveType" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveStub" width="0" height="0" frameborder="0"> </iframe>
<iframe id="mesg" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveIni" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveUfmv" width="0" height="0" frameborder="0"> </iframe>
<iframe id="iiSaveMvsq" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fiiSaveField" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fwbrlTrainDelayCalc" width="0" height="0" frameborder="0"> </iframe>
<iframe id="wbrlTrainOprDelay" width="0" height="0" frameborder="0"> </iframe>
<iframe id="email" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmailsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmailsfk" width="0" height="0" frameborder="0"> </iframe>
<iframe id="emdst" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmdstsak" width="0" height="0" frameborder="0"> </iframe>
<iframe id="fEmdstsfk" width="0" height="0" frameborder="0"> </iframe>
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
<h:commandLink id="xsel_vali" action="#{cadEmailBean.doValidate}" immediate="true"/>
<h:commandLink id="xsel_codf" action="#{cadCodfBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_obob" action="#{cadEmailBean.doObternull}" immediate="true"/>
<h:commandLink id="xrec_lang" action="#{cadLangBean.doObter}" immediate="true"/>
<h:commandLink id="xrec_help" action="#{cadHelpBean.doObternull}" immediate="true"/>
<h:commandLink id="xsel_HelpSearch" action="#{cadHelpSearchBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xsel_HelpSearchTrans" action="#{cadHelpSearchTransBean.doSelecionar}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_email" action="#{cadEmailBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<!-- buttonSearchs 2 -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<!-- for current oabv -->
<h:commandLink id="xsel_email" action="#{cadEmailBean.doSelecionar}" immediate="true"/>
<h:commandLink id="xrec_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_email" action="#{cadEmailBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_email" action="#{cadEmailBean.doObternull}" immediate="true"/>
<!-- for fkstransGen -->
<h:commandLink id="xsel_emdst" action="#{cadEmdstBean.doSelecionarOnly}" immediate="true"/>
<h:commandLink id="xrec_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
<h:commandLink id="xnew_emdst" action="#{cadEmdstBean.doObternull}" immediate="true"/>
</h:form>
<%@include file="projFooter1.jsp"%>
</body>
</html>
</f:view>
