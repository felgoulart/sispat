<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjanh" rendered="#{cadPjausPaaopBean.canUpdate}" value="#{cadPjausPaaopBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjanh" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaopBean.canUpdate}" action="#{cadPjausPaaopBean.doValidate}" onmousedown="msgw('aMessagepjanh');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id5" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaop_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id5" value="#{cadPjausPaaopBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc5" value="#{cadPjausPaaopBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td  colspan ="6" width="0" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaop_analysish_ix_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_id_engha" value="#{cadPjausPaaopBean.pjaus_id_engha}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_engha" for="pjaus_st_engha"  value="#{iimsg.PjausPaaop_pjaus_st_engha_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_engha" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_engha}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_engha','5','GESTA',this.value);;" size="5" maxlength="3" tabindex="69" />
<h:commandButton id="pjaus_st_engha_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GESTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_engha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_engha_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_engha_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_engha_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_engha" for="pjaus_ds_engha"  value="#{iimsg.PjausPaaop_pjaus_ds_engha_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_engha" tabindex="70"  value="#{cadPjausPaaopBean.pjaus_ds_engha}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_engha','5',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_engha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_engha_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_engha" for="pjaus_dt_envio_engha"  value="#{iimsg.PjausPaaop_pjaus_dt_envio_engha_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_envio_engha_str" tabindex="71"  value="#{cadPjausPaaopBean.pjaus_dt_envio_engha_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_engha_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_engha_str', 'cadForm:pjaus_dt_prazo_engha', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_engha_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_engha_str', 'pjaus_dt_envio_enghaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_engha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_envio_engha_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_enghaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prazo_engha" for="pjaus_dt_prazo_engha"  value="#{iimsg.PjausPaaop_pjaus_dt_prazo_engha_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_prazo_engha_str" tabindex="72"  value="#{cadPjausPaaopBean.pjaus_dt_prazo_engha_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prazo_engha_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prazo_engha_str', 'cadForm:pjaus_dt_retrn_engha', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prazo_engha_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prazo_engha_str', 'pjaus_dt_prazo_enghaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prazo_engha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prazo_engha_vc}" styleClass="btp"/>
<div id="pjaus_dt_prazo_enghaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_retrn_engha" for="pjaus_dt_retrn_engha"  value="#{iimsg.PjausPaaop_pjaus_dt_retrn_engha_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_retrn_engha_str" tabindex="73"  value="#{cadPjausPaaopBean.pjaus_dt_retrn_engha_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_retrn_engha_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_retrn_engha_str', 'cadForm:pjaus_pjhso_engha_nouse', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_retrn_engha_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_retrn_engha_str', 'pjaus_dt_retrn_enghaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_retrn_engha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_retrn_engha_vc}" styleClass="btp"/>
<%-- prop Dao Search Button with Parms xxx --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhso_engha_nouse_xsel" immediate="true" action="#{cadPjhsoenghaBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaopcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaopBean.pjhsoengha_im}" title="#{iimsg.pjhsoengha_TT}"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhso_engha_nouse" for="pjaus_pjhso_engha_nouse"  value="#{iimsg.PjausPaaop_pjaus_pjhso_engha_nouse_tt}"/>
<h:inputHidden id="pjaus_in_engha_memo_unico_nouse_bol" value="#{cadPjausPaaopBean.pjaus_in_engha_memo_unico_nouse}"/>
<h:selectBooleanCheckbox id="pjaus_in_engha_memo_unico_nouse" tabindex="73"  value="#{cadPjausPaaopBean.pjaus_in_engha_memo_unico_nouse_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_engha_memo_unico_nouse_bol');"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_engha_memo_unico_nouse" for="pjaus_in_engha_memo_unico_nouse"  value="#{iimsg.PjausPaaop_pjaus_in_engha_memo_unico_nouse_tt}"/>
<div id="pjaus_dt_retrn_enghaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="6" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_id_infra" value="#{cadPjausPaaopBean.pjaus_id_infra}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_infra" for="pjaus_st_infra"  value="#{iimsg.PjausPaaop_pjaus_st_infra_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_infra" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_infra}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_infra','5','GESTA',this.value);;" size="5" maxlength="3" tabindex="76" />
<h:commandButton id="pjaus_st_infra_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GESTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_infra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_infra_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_infra_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_infra_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_infra" for="pjaus_ds_infra"  value="#{iimsg.PjausPaaop_pjaus_ds_infra_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_infra" tabindex="77"  value="#{cadPjausPaaopBean.pjaus_ds_infra}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_infra','5',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_infra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_infra_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_infra" for="pjaus_dt_envio_infra"  value="#{iimsg.PjausPaaop_pjaus_dt_envio_infra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_envio_infra_str" tabindex="78"  value="#{cadPjausPaaopBean.pjaus_dt_envio_infra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_infra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_infra_str', 'cadForm:pjaus_dt_prazo_infra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_infra_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_infra_str', 'pjaus_dt_envio_infraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_infra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_envio_infra_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_infraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prazo_infra" for="pjaus_dt_prazo_infra"  value="#{iimsg.PjausPaaop_pjaus_dt_prazo_infra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_prazo_infra_str" tabindex="79"  value="#{cadPjausPaaopBean.pjaus_dt_prazo_infra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prazo_infra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prazo_infra_str', 'cadForm:pjaus_dt_retrn_infra', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prazo_infra_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prazo_infra_str', 'pjaus_dt_prazo_infraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prazo_infra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prazo_infra_vc}" styleClass="btp"/>
<div id="pjaus_dt_prazo_infraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_retrn_infra" for="pjaus_dt_retrn_infra"  value="#{iimsg.PjausPaaop_pjaus_dt_retrn_infra_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_retrn_infra_str" tabindex="80"  value="#{cadPjausPaaopBean.pjaus_dt_retrn_infra_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_retrn_infra_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_retrn_infra_str', 'cadForm:pjaus_pjhso_infra_nouse', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_retrn_infra_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_retrn_infra_str', 'pjaus_dt_retrn_infraCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_retrn_infra_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_retrn_infra_vc}" styleClass="btp"/>
<%-- prop Dao Search Button with Parms xxx --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhso_infra_nouse_xsel" immediate="true" action="#{cadPjhsoinfraBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaopcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaopBean.pjhsoinfra_im}" title="#{iimsg.pjhsoinfra_TT}"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhso_infra_nouse" for="pjaus_pjhso_infra_nouse"  value="#{iimsg.PjausPaaop_pjaus_pjhso_infra_nouse_tt}"/>
<h:inputHidden id="pjaus_in_infra_memo_unico_nouse_bol" value="#{cadPjausPaaopBean.pjaus_in_infra_memo_unico_nouse}"/>
<h:selectBooleanCheckbox id="pjaus_in_infra_memo_unico_nouse" tabindex="80"  value="#{cadPjausPaaopBean.pjaus_in_infra_memo_unico_nouse_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_infra_memo_unico_nouse_bol');"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_infra_memo_unico_nouse" for="pjaus_in_infra_memo_unico_nouse"  value="#{iimsg.PjausPaaop_pjaus_in_infra_memo_unico_nouse_tt}"/>
<div id="pjaus_dt_retrn_infraCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="6" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_id_mambt" value="#{cadPjausPaaopBean.pjaus_id_mambt}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_mambt" for="pjaus_st_mambt"  value="#{iimsg.PjausPaaop_pjaus_st_mambt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_mambt" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_mambt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_mambt','5','GESTA',this.value);;" size="5" maxlength="3" tabindex="83" />
<h:commandButton id="pjaus_st_mambt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GESTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_mambt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_mambt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_mambt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_mambt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_mambt" for="pjaus_ds_mambt"  value="#{iimsg.PjausPaaop_pjaus_ds_mambt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_mambt" tabindex="84"  value="#{cadPjausPaaopBean.pjaus_ds_mambt}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_mambt','5',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_mambt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_mambt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_mambt" for="pjaus_dt_envio_mambt"  value="#{iimsg.PjausPaaop_pjaus_dt_envio_mambt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_envio_mambt_str" tabindex="85"  value="#{cadPjausPaaopBean.pjaus_dt_envio_mambt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_mambt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_mambt_str', 'cadForm:pjaus_dt_prazo_mambt', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_mambt_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_mambt_str', 'pjaus_dt_envio_mambtCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_mambt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_envio_mambt_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_mambtCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prazo_mambt" for="pjaus_dt_prazo_mambt"  value="#{iimsg.PjausPaaop_pjaus_dt_prazo_mambt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_prazo_mambt_str" tabindex="86"  value="#{cadPjausPaaopBean.pjaus_dt_prazo_mambt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prazo_mambt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prazo_mambt_str', 'cadForm:pjaus_dt_retrn_mambt', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prazo_mambt_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prazo_mambt_str', 'pjaus_dt_prazo_mambtCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prazo_mambt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prazo_mambt_vc}" styleClass="btp"/>
<div id="pjaus_dt_prazo_mambtCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_retrn_mambt" for="pjaus_dt_retrn_mambt"  value="#{iimsg.PjausPaaop_pjaus_dt_retrn_mambt_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_retrn_mambt_str" tabindex="87"  value="#{cadPjausPaaopBean.pjaus_dt_retrn_mambt_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_retrn_mambt_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_retrn_mambt_str', 'cadForm:pjaus_pjhso_mambt_nouse', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_retrn_mambt_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_retrn_mambt_str', 'pjaus_dt_retrn_mambtCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_retrn_mambt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_retrn_mambt_vc}" styleClass="btp"/>
<%-- prop Dao Search Button with Parms xxx --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhso_mambt_nouse_xsel" immediate="true" action="#{cadPjhsomambtBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaopcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaopBean.pjhsomambt_im}" title="#{iimsg.pjhsomambt_TT}"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhso_mambt_nouse" for="pjaus_pjhso_mambt_nouse"  value="#{iimsg.PjausPaaop_pjaus_pjhso_mambt_nouse_tt}"/>
<h:inputHidden id="pjaus_in_mambt_memo_unico_nouse_bol" value="#{cadPjausPaaopBean.pjaus_in_mambt_memo_unico_nouse}"/>
<h:selectBooleanCheckbox id="pjaus_in_mambt_memo_unico_nouse" tabindex="87"  value="#{cadPjausPaaopBean.pjaus_in_mambt_memo_unico_nouse_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_mambt_memo_unico_nouse_bol');"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_mambt_memo_unico_nouse" for="pjaus_in_mambt_memo_unico_nouse"  value="#{iimsg.PjausPaaop_pjaus_in_mambt_memo_unico_nouse_tt}"/>
<div id="pjaus_dt_retrn_mambtCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="6" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_id_fbrot" value="#{cadPjausPaaopBean.pjaus_id_fbrot}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_fbrot" for="pjaus_st_fbrot"  value="#{iimsg.PjausPaaop_pjaus_st_fbrot_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_fbrot" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_fbrot}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_fbrot','5','GESTA',this.value);;" size="5" maxlength="3" tabindex="90" />
<h:commandButton id="pjaus_st_fbrot_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GESTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_fbrot_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_fbrot_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_fbrot_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_fbrot_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_fbrot" for="pjaus_ds_fbrot"  value="#{iimsg.PjausPaaop_pjaus_ds_fbrot_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_fbrot" tabindex="91"  value="#{cadPjausPaaopBean.pjaus_ds_fbrot}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_fbrot','5',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_fbrot_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_fbrot_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_fbrot" for="pjaus_dt_envio_fbrot"  value="#{iimsg.PjausPaaop_pjaus_dt_envio_fbrot_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_envio_fbrot_str" tabindex="92"  value="#{cadPjausPaaopBean.pjaus_dt_envio_fbrot_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_fbrot_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_fbrot_str', 'cadForm:pjaus_dt_prazo_fbrot', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_fbrot_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_fbrot_str', 'pjaus_dt_envio_fbrotCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_fbrot_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_envio_fbrot_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_fbrotCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prazo_fbrot" for="pjaus_dt_prazo_fbrot"  value="#{iimsg.PjausPaaop_pjaus_dt_prazo_fbrot_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_prazo_fbrot_str" tabindex="93"  value="#{cadPjausPaaopBean.pjaus_dt_prazo_fbrot_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prazo_fbrot_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prazo_fbrot_str', 'cadForm:pjaus_dt_retrn_fbrot', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prazo_fbrot_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prazo_fbrot_str', 'pjaus_dt_prazo_fbrotCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prazo_fbrot_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prazo_fbrot_vc}" styleClass="btp"/>
<div id="pjaus_dt_prazo_fbrotCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_retrn_fbrot" for="pjaus_dt_retrn_fbrot"  value="#{iimsg.PjausPaaop_pjaus_dt_retrn_fbrot_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_retrn_fbrot_str" tabindex="94"  value="#{cadPjausPaaopBean.pjaus_dt_retrn_fbrot_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_retrn_fbrot_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_retrn_fbrot_str', 'cadForm:pjaus_pjhso_fbrot_nouse', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_retrn_fbrot_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_retrn_fbrot_str', 'pjaus_dt_retrn_fbrotCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_retrn_fbrot_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_retrn_fbrot_vc}" styleClass="btp"/>
<%-- prop Dao Search Button with Parms xxx --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhso_fbrot_nouse_xsel" immediate="true" action="#{cadPjhsofbrotBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaopcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaopBean.pjhsofbrot_im}" title="#{iimsg.pjhsofbrot_TT}"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhso_fbrot_nouse" for="pjaus_pjhso_fbrot_nouse"  value="#{iimsg.PjausPaaop_pjaus_pjhso_fbrot_nouse_tt}"/>
<h:inputHidden id="pjaus_in_fbrot_memo_unico_nouse_bol" value="#{cadPjausPaaopBean.pjaus_in_fbrot_memo_unico_nouse}"/>
<h:selectBooleanCheckbox id="pjaus_in_fbrot_memo_unico_nouse" tabindex="94"  value="#{cadPjausPaaopBean.pjaus_in_fbrot_memo_unico_nouse_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_fbrot_memo_unico_nouse_bol');"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_fbrot_memo_unico_nouse" for="pjaus_in_fbrot_memo_unico_nouse"  value="#{iimsg.PjausPaaop_pjaus_in_fbrot_memo_unico_nouse_tt}"/>
<div id="pjaus_dt_retrn_fbrotCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="6" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_id_outrs" value="#{cadPjausPaaopBean.pjaus_id_outrs}"/>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_outrs" for="pjaus_st_outrs"  value="#{iimsg.PjausPaaop_pjaus_st_outrs_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="500"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_outrs" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_outrs}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_outrs','5','GESTA',this.value);;" size="5" maxlength="3" tabindex="97" />
<h:commandButton id="pjaus_st_outrs_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GESTA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_outrs_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_outrs_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_outrs_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_outrs_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_outrs" for="pjaus_ds_outrs"  value="#{iimsg.PjausPaaop_pjaus_ds_outrs_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="1600"   >
<h:inputText id="pjaus_ds_outrs" tabindex="98"  value="#{cadPjausPaaopBean.pjaus_ds_outrs}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_outrs','5',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_outrs_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_outrs_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="400" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>&nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_envio_outrs" for="pjaus_dt_envio_outrs"  value="#{iimsg.PjausPaaop_pjaus_dt_envio_outrs_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="500"   >
<h:inputText id="pjaus_dt_envio_outrs_str" tabindex="99"  value="#{cadPjausPaaopBean.pjaus_dt_envio_outrs_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_envio_outrs_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_envio_outrs_str', 'cadForm:pjaus_dt_prazo_outrs', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_envio_outrs_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_envio_outrs_str', 'pjaus_dt_envio_outrsCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_envio_outrs_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_envio_outrs_vc}" styleClass="btp"/>
<div id="pjaus_dt_envio_outrsCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prazo_outrs" for="pjaus_dt_prazo_outrs"  value="#{iimsg.PjausPaaop_pjaus_dt_prazo_outrs_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="450"   >
<h:inputText id="pjaus_dt_prazo_outrs_str" tabindex="100"  value="#{cadPjausPaaopBean.pjaus_dt_prazo_outrs_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_prazo_outrs_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_prazo_outrs_str', 'cadForm:pjaus_dt_retrn_outrs', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_prazo_outrs_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_prazo_outrs_str', 'pjaus_dt_prazo_outrsCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_prazo_outrs_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_prazo_outrs_vc}" styleClass="btp"/>
<div id="pjaus_dt_prazo_outrsCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="250" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_retrn_outrs" for="pjaus_dt_retrn_outrs"  value="#{iimsg.PjausPaaop_pjaus_dt_retrn_outrs_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="900"   >
<h:inputText id="pjaus_dt_retrn_outrs_str" tabindex="101"  value="#{cadPjausPaaopBean.pjaus_dt_retrn_outrs_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_retrn_outrs_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_retrn_outrs_str', 'cadForm:pjaus_pjhso_outrs_nouse', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_retrn_outrs_str','5',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_retrn_outrs_str', 'pjaus_dt_retrn_outrsCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_retrn_outrs_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_dt_retrn_outrs_vc}" styleClass="btp"/>
<%-- prop Dao Search Button with Parms xxx --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhso_outrs_nouse_xsel" immediate="true" action="#{cadPjhsooutrsBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaopcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaopBean.pjhsooutrs_im}" title="#{iimsg.pjhsooutrs_TT}"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pjhso_outrs_nouse" for="pjaus_pjhso_outrs_nouse"  value="#{iimsg.PjausPaaop_pjaus_pjhso_outrs_nouse_tt}"/>
<h:inputHidden id="pjaus_in_outrs_memo_unico_nouse_bol" value="#{cadPjausPaaopBean.pjaus_in_outrs_memo_unico_nouse}"/>
<h:selectBooleanCheckbox id="pjaus_in_outrs_memo_unico_nouse" tabindex="101"  value="#{cadPjausPaaopBean.pjaus_in_outrs_memo_unico_nouse_bol}" onclick="chkBoolean(this, 'cadForm:pjaus_in_outrs_memo_unico_nouse_bol');"/>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_outrs_memo_unico_nouse" for="pjaus_in_outrs_memo_unico_nouse"  value="#{iimsg.PjausPaaop_pjaus_in_outrs_memo_unico_nouse_tt}"/>
<div id="pjaus_dt_retrn_outrsCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
