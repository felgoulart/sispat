<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrg" rendered="#{cadProssComodBean.canUpdate}" value="#{cadProssComodBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadProssComodBean.canUpdate}" action="#{cadProssComodBean.doValidate}" onmousedown="msgw('aMessagepjtrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pross_id1" >
<h:outputText styleClass="tip" value="#{iimsg.ProssComod_pross_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pross_id1" value="#{cadProssComodBean.pross_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.ProssComod_pross_nm_title_tt}"/>
<h:outputText id="pross_id_dsc1" value="#{cadProssComodBean.pross_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssComod_status_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pross_tp" value="#{cadProssComodBean.pross_tp}"/>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_st_geral" for="pross_st_geral"  value="#{iimsg.ProssComod_pross_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="300" > <h:inputText id="pross_st_geral" onfocus="this.blur()" value="#{cadProssComodBean.pross_st_geral}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_sumacao" for="pross_ds_sumacao"  value="#{iimsg.ProssComod_pross_ds_sumacao_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="600" > <h:inputText id="pross_ds_sumacao" onfocus="this.blur()" value="#{cadProssComodBean.pross_ds_sumacao}" size="50" maxlength="50"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_st" for="pross_st"  value="#{iimsg.ProssComod_pross_st_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputText id="pross_st" onfocus="this.blur()" value="#{cadProssComodBean.pross_st}" size="5" maxlength="5"  styleClass="txl pl5 tbxr"/>
<ps:psGraphicImage id="pross_st_vc" flagType="val" flag="#{cadProssComodBean.pross_st_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_st_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssComodBean.pross_st_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pross_st_analise" value="#{cadProssComodBean.pross_st_analise}"/>
<%-- Hidden --%>
<h:inputHidden id="pross_st_checklist" value="#{cadProssComodBean.pross_st_checklist}"/>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssComod_ident_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_id" for="pross_id"  value="#{iimsg.ProssComod_pross_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="300" > <h:inputText id="pross_id" tabindex="-1"  onfocus="this.blur()" value="#{cadProssComodBean.pross_id}"  styleClass="txl pl5 tbxr" size="27" maxlength="27"/>
<ps:psGraphicImage id="pross_id_vc" flagType="val" flag="#{cadProssComodBean.pross_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pross_nm_title" value="#{cadProssComodBean.pross_nm_title}"/>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_id_solicitante" for="pross_id_solicitante"  value="#{iimsg.ProssComod_pross_id_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="600" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pross_id_solicitante" tabindex="7"  onclick="clf(this);" value="#{cadProssComodBean.pross_id_solicitante}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','1','pross_id_solicitante','Solic','solic_cd','solic_nm_razaosocial',this.value);" size="7" maxlength="5" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="pross_id_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="pw('solinpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_id_solicitante_vc" flagType="val" flag="#{cadProssComodBean.pross_id_solicitante_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="pross_id_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssComodBean.pross_id_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_nu_ocorr" for="pross_nu_ocorr"  value="#{iimsg.ProssComod_pross_nu_ocorr_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pross_nu_ocorr" value="#{cadProssComodBean.pross_nu_ocorr}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pross_nu_ocorr','1','TPCPA',this.value);;" size="5" maxlength="3" tabindex="8" />
<h:commandButton id="pross_nu_ocorr_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_nu_ocorr_vc" flagType="val" flag="#{cadProssComodBean.pross_nu_ocorr_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_nu_ocorr_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssComodBean.pross_nu_ocorr_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_nu_asset" for="pross_nu_asset"  value="#{iimsg.ProssComod_pross_nu_asset_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="300"   >
<h:inputText id="pross_nu_asset" tabindex="9"  value="#{cadProssComodBean.pross_nu_asset}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','pross_nu_asset','1',this.value);"/>
<ps:psGraphicImage id="pross_nu_asset_vc" flagType="val" flag="#{cadProssComodBean.pross_nu_asset_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_cd_propriedade" for="pross_cd_propriedade"  value="#{iimsg.ProssComod_pross_cd_propriedade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pross_cd_propriedade" value="#{cadProssComodBean.pross_cd_propriedade}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pross_cd_propriedade','1','PROPR',this.value);;" size="10" maxlength="8" tabindex="10" />
<h:commandButton id="pross_cd_propriedade_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PROPR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pross_cd_propriedade_vc" flagType="val" flag="#{cadProssComodBean.pross_cd_propriedade_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pross_cd_propriedade_desc" tabindex="-1" onfocus="this.blur()" value="#{cadProssComodBean.pross_cd_propriedade_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_vl_contabil" for="pross_vl_contabil"  value="#{iimsg.ProssComod_pross_vl_contabil_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="400" class="pr5"> <h:inputText id="pross_vl_contabil" tabindex="11"  value="#{cadProssComodBean.pross_vl_contabil_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pross_vl_contabil','1',valDec(this.value));"/>
<ps:psGraphicImage id="pross_vl_contabil_vc" flagType="val" flag="#{cadProssComodBean.pross_vl_contabil_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="6" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.ProssComod_datas_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_solicitacao_cliente" for="pross_dt_solicitacao_cliente"  value="#{iimsg.ProssComod_pross_dt_solicitacao_cliente_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="300"   >
<h:inputText id="pross_dt_solicitacao_cliente_str" tabindex="12"  value="#{cadProssComodBean.pross_dt_solicitacao_cliente_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pross_dt_solicitacao_cliente_str', event);" onkeyup="SaltaCampo('cadForm:pross_dt_solicitacao_cliente_str', 'cadForm:pross_dt_abertura', 8 , event);" onchange="validaDatas2(this);bv('','pross_dt_solicitacao_cliente_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pross_dt_solicitacao_cliente_str', 'pross_dt_solicitacao_clienteCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pross_dt_solicitacao_cliente_vc" flagType="val" flag="#{cadProssComodBean.pross_dt_solicitacao_cliente_vc}" styleClass="btp"/>
<div id="pross_dt_solicitacao_clienteCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_abertura" for="pross_dt_abertura"  value="#{iimsg.ProssComod_pross_dt_abertura_tt}"/>  </td> <%-- <top> --%>
<%-- current Date --%>
<td  width="600" > <h:inputText id="pross_dt_abertura_str" tabindex="-1"  onfocus="this.blur()" value="#{cadProssComodBean.pross_dt_abertura_str}" onchange="uf();" size="0" maxlength="10"  styleClass="txl pl5 tbDtr"/>
<ps:psGraphicImage id="pross_dt_abertura_vc" flagType="val" flag="#{cadProssComodBean.pross_dt_abertura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_dt_ultm_mov" for="pross_dt_ultm_mov"  value="#{iimsg.ProssComod_pross_dt_ultm_mov_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="400" > <h:inputText id="pross_dt_ultm_mov" tabindex="-1"  onfocus="this.blur()" value="#{cadProssComodBean.pross_dt_ultm_mov_str}" size="0" maxlength="10"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pross_dt_ultm_mov_vc" flagType="val" flag="#{cadProssComodBean.pross_dt_ultm_mov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="6"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="150" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.ProssComod_pross_pj_tt_tt}"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="pross_conts_xsel" title="#{iimsg.ProssComod_pross_conts_tt}" value="#{iimsg.ProssComod_pross_conts_tt}" styleClass="btnBox120" immediate="true" action="#{cadObcntprBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prosscomodcad&campo=campo1&valor='+el('cadForm:pross_id').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="pross_docseml_xsel" title="#{iimsg.ProssComod_pross_docseml_tt}" value="#{iimsg.ProssComod_pross_docseml_tt}" styleClass="btnBox120" immediate="true" action="#{cadObdocpremlBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prosscomodcad&campo=campo1&valor='+el('cadForm:pross_id').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="pross_fxaco_xsel" title="#{iimsg.ProssComod_pross_fxaco_tt}" value="#{iimsg.ProssComod_pross_fxaco_tt}" styleClass="btnBox120" immediate="true" action="#{cadFxacoBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prosscomodcad&campo=campo1&valor='+el('cadForm:pross_tp').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uz --%> <h:commandButton id="pross_prhsogp_xsel" title="#{iimsg.ProssComod_pross_prhsogp_tt}" value="#{iimsg.ProssComod_pross_prhsogp_tt}" styleClass="btnBox120" immediate="true" action="#{cadPrhsogpBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=prosscomodcad&campo=campo1&valor='+el('cadForm:pross_id').value;" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_suscinta" for="pross_ds_suscinta"  value="#{iimsg.ProssComod_pross_ds_suscinta_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="6" >  <h:inputTextarea id="pross_ds_suscinta" tabindex="18"  value="#{cadProssComodBean.pross_ds_suscinta}"  cols="100" rows="2" styleClass="pross_ds_suscinta_" onchange="bv('','pross_ds_suscinta','1',this.value);"/>
<ps:psGraphicImage id="pross_ds_suscinta_vc" flagType="val" flag="#{cadProssComodBean.pross_ds_suscinta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pross_ds_caracteristicas" for="pross_ds_caracteristicas"  value="#{iimsg.ProssComod_pross_ds_caracteristicas_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="6" >  <h:inputTextarea id="pross_ds_caracteristicas" tabindex="19"  value="#{cadProssComodBean.pross_ds_caracteristicas}"  cols="100" rows="4" styleClass="pross_ds_caracteristicas_" onchange="bv('','pross_ds_caracteristicas','1',this.value);"/>
<ps:psGraphicImage id="pross_ds_caracteristicas_vc" flagType="val" flag="#{cadProssComodBean.pross_ds_caracteristicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
