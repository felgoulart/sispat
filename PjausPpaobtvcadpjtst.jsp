<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtst" rendered="#{cadPjausPpaobtvBean.canUpdate}" value="#{cadPjausPpaobtvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtst" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPpaobtvBean.canUpdate}" action="#{cadPjausPpaobtvBean.doValidate}" onmousedown="msgw('aMessagepjtst');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id1" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPpaobtv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id1" value="#{cadPjausPpaobtvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc1" value="#{cadPjausPpaobtvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_status_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id" for="pjaus_id"  value="#{iimsg.PjausPpaobtv_pjaus_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="700" > <h:inputText id="pjaus_id" tabindex="3"  onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_id}"  styleClass="txl pl5 tbx" size="29" maxlength="27" onchange="bv('','pjaus_id','1',this.value);"/>
<ps:psGraphicImage id="pjaus_id_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st" for="pjaus_st"  value="#{iimsg.PjausPpaobtv_pjaus_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_st}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st','1','STPRJ',this.value);;" size="7" maxlength="5" tabindex="4" />
<h:commandButton id="pjaus_st_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STPRJ', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_st_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_abertura" for="pjaus_dt_abertura"  value="#{iimsg.PjausPpaobtv_pjaus_dt_abertura_tt}"/>  </td> <%-- <top> --%>
<%-- current Date --%>
<td  width="700" > <h:inputText id="pjaus_dt_abertura_str" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_dt_abertura_str}" onchange="uf();" size="0" maxlength="10"  styleClass="txl pl5 tbDtr"/>
<ps:psGraphicImage id="pjaus_dt_abertura_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_abertura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_emergencial" for="pjaus_in_emergencial"  value="#{iimsg.PjausPpaobtv_pjaus_in_emergencial_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_emergencial" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_in_emergencial}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_emergencial','1','TPAEM',this.value);;" size="7" maxlength="5" tabindex="5" />
<h:commandButton id="pjaus_in_emergencial_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPAEM', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_emergencial_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_in_emergencial_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_emergencial_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_in_emergencial_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_solicitante" for="pjaus_tp_solicitante"  value="#{iimsg.PjausPpaobtv_pjaus_tp_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_solicitante" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_tp_solicitante}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(1);cleSubSel_uv('pjaus_id_solicitante');bdcd('','pjaus_tp_solicitante','1','TPIOE',this.value);;" size="7" maxlength="5" tabindex="6" />
<h:commandButton id="pjaus_tp_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIOE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_solicitante_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_tp_solicitante_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_tp_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_solicitante" for="pjaus_id_solicitante"  value="#{iimsg.PjausPpaobtv_pjaus_id_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjaus_id_solicitante" tabindex="7"  onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_id_solicitante}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="if(!valSubSel('pjaus_tp_solicitante')){this.value='';}Transfk('','','1','pjaus_id_solicitante','Solic','solic_cd','solic_nm_razaosocial',this.value);" size="12" maxlength="10" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="pjaus_id_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="typevl=rpel('cadForm:pjaus_tp_solicitante');tranx=SolicType(typevl);;if(typevl == '') {alertVal('pjaus_tp_solicitante') } else { pw(tranx, tran, this.id, 'no')};" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_id_solicitante_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_id_solicitante_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="pjaus_id_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_id_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_investimento1" for="pjaus_tp_investimento1"  value="#{iimsg.PjausPpaobtv_pjaus_tp_investimento1_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_investimento1" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_tp_investimento1}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_investimento1','1','TPINV',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="pjaus_tp_investimento1_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPINV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_investimento1_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_tp_investimento1_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_investimento1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_tp_investimento1_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_contrapartida_fin" for="pjaus_tp_contrapartida_fin"  value="#{iimsg.PjausPpaobtv_pjaus_tp_contrapartida_fin_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_contrapartida_fin" onclick="clf(this);" value="#{cadPjausPpaobtvBean.pjaus_tp_contrapartida_fin}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_contrapartida_fin','1','TPCPF',this.value);;" size="7" maxlength="5" tabindex="9" />
<h:commandButton id="pjaus_tp_contrapartida_fin_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCPF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_contrapartida_fin_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_tp_contrapartida_fin_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_contrapartida_fin_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPpaobtvBean.pjaus_tp_contrapartida_fin_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_solicitacao_cliente" for="pjaus_dt_solicitacao_cliente"  value="#{iimsg.PjausPpaobtv_pjaus_dt_solicitacao_cliente_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_solicitacao_cliente_str" tabindex="10"  value="#{cadPjausPpaobtvBean.pjaus_dt_solicitacao_cliente_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_solicitacao_cliente_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_solicitacao_cliente_str', 'cadForm:pjaus_dt_lim_envio_doc', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_solicitacao_cliente_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_solicitacao_cliente_str', 'pjaus_dt_solicitacao_clienteCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_solicitacao_cliente_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_solicitacao_cliente_vc}" styleClass="btp"/>
<div id="pjaus_dt_solicitacao_clienteCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_lim_envio_doc" for="pjaus_dt_lim_envio_doc"  value="#{iimsg.PjausPpaobtv_pjaus_dt_lim_envio_doc_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_lim_envio_doc_str" tabindex="11"  value="#{cadPjausPpaobtvBean.pjaus_dt_lim_envio_doc_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_lim_envio_doc_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_lim_envio_doc_str', 'cadForm:pjaus_dd_atraso', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_lim_envio_doc_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_lim_envio_doc_str', 'pjaus_dt_lim_envio_docCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_lim_envio_doc_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dt_lim_envio_doc_vc}" styleClass="btp"/>
<div id="pjaus_dt_lim_envio_docCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dd_atraso" for="pjaus_dd_atraso"  value="#{iimsg.PjausPpaobtv_pjaus_dd_atraso_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td colspan ="4"  width="300"  > <h:inputText id="pjaus_dd_atraso" tabindex="12"  value="#{cadPjausPpaobtvBean.pjaus_dd_atraso}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','pjaus_dd_atraso','1',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_dd_atraso_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_dd_atraso_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPpaobtv_statux_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_checklist" for="pjaus_st_checklist"  value="#{iimsg.PjausPpaobtv_pjaus_st_checklist_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_st_checklist" tabindex="13"  value="#{cadPjausPpaobtvBean.pjaus_st_checklist}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_st_checklist','1',this.value);"/>
<ps:psGraphicImage id="pjaus_st_checklist_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_st_checklist_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_analise" for="pjaus_st_analise"  value="#{iimsg.PjausPpaobtv_pjaus_st_analise_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_st_analise" tabindex="14"  value="#{cadPjausPpaobtvBean.pjaus_st_analise}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_st_analise','1',this.value);"/>
<ps:psGraphicImage id="pjaus_st_analise_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_st_analise_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_antt" for="pjaus_st_antt"  value="#{iimsg.PjausPpaobtv_pjaus_st_antt_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_st_antt" tabindex="15"  value="#{cadPjausPpaobtvBean.pjaus_st_antt}" size="152" maxlength="150"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_st_antt','1',this.value);"/>
<ps:psGraphicImage id="pjaus_st_antt_vc" flagType="val" flag="#{cadPjausPpaobtvBean.pjaus_st_antt_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
