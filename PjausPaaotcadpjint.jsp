<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjint" rendered="#{cadPjausPaaotBean.canUpdate}" value="#{cadPjausPaaotBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjint" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaotBean.canUpdate}" action="#{cadPjausPaaotBean.doValidate}" onmousedown="msgw('aMessagepjint');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id3" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id3" value="#{cadPjausPaaotBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc3" value="#{cadPjausPaaotBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_objct_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_objt" for="pjaus_tp_objt"  value="#{iimsg.PjausPaaot_pjaus_tp_objt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_objt" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_objt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(1);cleSubSel_uv('pjaus_tp_espec_1');bdcd('','pjaus_tp_objt','3','TPIPS',this.value);;" size="7" maxlength="5" tabindex="58" />
<h:commandButton id="pjaus_tp_objt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_objt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_objt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_objt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_objt_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_espec_1" for="pjaus_tp_espec_1"  value="#{iimsg.PjausPaaot_pjaus_tp_espec_1_tt}"/>  </td> <%-- <top> --%>
<%-- codfTypeSelector == 0 --%>
<td   width="700" > <h:inputText id="pjaus_tp_espec_1" onclick="clf(this);" tabindex="59"  value="#{cadPjausPaaotBean.pjaus_tp_espec_1}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);if(!valSubSel('pjaus_tp_objt')){this.value='';}uf();bdcd('','pjaus_tp_espec_1','0',topp99(retSubSel('pjaus_tp_objt')),this.value);;" size="7" maxlength="5"/>
<h:commandButton id="pjaus_tp_espec_1_xsel" tabindex="-1" immediate="true" onmousedown="if(valSubSel('pjaus_tp_objt')){wtran=topp99(retSubSel('pjaus_tp_objt'));pw('C'+wtran, tran, this.id, 'yes');}" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_espec_1_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_espec_1_vc}" styleClass="btp"/>
<h:inputText id="pjaus_tp_espec_1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_espec_1_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_objeto" for="pjaus_ds_objeto"  value="#{iimsg.PjausPaaot_pjaus_ds_objeto_tt}"/>
</tr> <%-- <tr close> ccc--%>
<tr>  <%-- <tr open> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_objeto" tabindex="60"  value="#{cadPjausPaaotBean.pjaus_ds_objeto}" cols="120" rows="4" styleClass="pjaus_ds_objeto_" onchange="bv('','pjaus_ds_objeto','3',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_objeto_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_objeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_carac_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfreslc" for="pjaus_cd_cfreslc"  value="#{iimsg.PjausPaaot_pjaus_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfreslc" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_cfreslc','3','RESLC',this.value);;" size="7" maxlength="5" tabindex="61" />
<h:commandButton id="pjaus_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfreslc_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfreslc_prx" for="pjaus_cd_cfreslc_prx"  value="#{iimsg.PjausPaaot_pjaus_cd_cfreslc_prx_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfreslc_prx" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_cfreslc_prx','3','RESLC',this.value);;" size="7" maxlength="5" tabindex="62" />
<h:commandButton id="pjaus_cd_cfreslc_prx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfreslc_prx_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_cfreslc_prx_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfreslc_prx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_cfreslc_prx_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_fundiaria_area" for="pjaus_st_fundiaria_area"  value="#{iimsg.PjausPaaot_pjaus_st_fundiaria_area_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_fundiaria_area" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_st_fundiaria_area}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_fundiaria_area','3','STFDA',this.value);;" size="7" maxlength="5" tabindex="63" />
<h:commandButton id="pjaus_st_fundiaria_area_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STFDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_fundiaria_area_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_st_fundiaria_area_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_fundiaria_area_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_st_fundiaria_area_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
