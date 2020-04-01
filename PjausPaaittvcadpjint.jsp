<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjint" rendered="#{cadPjausPaaittvBean.canUpdate}" value="#{cadPjausPaaittvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjint" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaittvBean.canUpdate}" action="#{cadPjausPaaittvBean.doValidate}" onmousedown="msgw('aMessagepjint');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaittv_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPaaittvBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nu_pasta_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPaaittvBean.pjaus_nu_pasta}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_objct_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_objt" for="pjaus_tp_objt"  value="#{iimsg.PjausPaaittv_pjaus_tp_objt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="450"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_objt" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_objt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(8);cleSubSel_uv('pjaus_tp_espec_1');cleSubSel_uv('pjaus_tp_espec_2');bdcd('','pjaus_tp_objt','2','TOPAT',this.value);;" size="7" maxlength="5" tabindex="27" />
<h:commandButton id="pjaus_tp_objt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TOPAT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_objt_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_objt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_objt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_objt_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_espec_1" for="pjaus_tp_espec_1"  value="#{iimsg.PjausPaaittv_pjaus_tp_espec_1_tt}"/>  </td> <%-- <top> --%>
<%-- codfTypeSelector == 0 --%>
<td   width="700" > <h:inputText id="pjaus_tp_espec_1" onclick="clf(this);" tabindex="28"  value="#{cadPjausPaaittvBean.pjaus_tp_espec_1}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(9);cleSubSel_uv('pjaus_tp_espec_2');if(!valSubSel('pjaus_tp_objt')){this.value='';}uf();bdcd('','pjaus_tp_espec_1','0',topat1(retSubSel('pjaus_tp_objt')),this.value);;" size="7" maxlength="5"/>
<h:commandButton id="pjaus_tp_espec_1_xsel" tabindex="-1" immediate="true" onmousedown="if(valSubSel('pjaus_tp_objt')){wtran=topat1(retSubSel('pjaus_tp_objt'));pw('C'+wtran, tran, this.id, 'yes');}" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_espec_1_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_espec_1_vc}" styleClass="btp"/>
<h:inputText id="pjaus_tp_espec_1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_espec_1_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_espec_2" for="pjaus_tp_espec_2"  value="#{iimsg.PjausPaaittv_pjaus_tp_espec_2_tt}"/>  </td> <%-- <top> --%>
<%-- codfTypeSelector == 0 --%>
<td   width="700" > <h:inputText id="pjaus_tp_espec_2" onclick="clf(this);" tabindex="29"  value="#{cadPjausPaaittvBean.pjaus_tp_espec_2}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="if(!valSubSel('pjaus_tp_espec_1')){this.value='';}uf();bdcd('','pjaus_tp_espec_2','0',topat2(retSubSel('pjaus_tp_espec_1')),this.value);;" size="7" maxlength="5"/>
<h:commandButton id="pjaus_tp_espec_2_xsel" tabindex="-1" immediate="true" onmousedown="if(valSubSel('pjaus_tp_espec_1')){wtran=topat2(retSubSel('pjaus_tp_espec_1'));pw('C'+wtran, tran, this.id, 'yes');}" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_espec_2_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_espec_2_vc}" styleClass="btp"/>
<h:inputText id="pjaus_tp_espec_2_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_espec_2_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="4" width="2300" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaittv_pjaus_objt_tt_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_objeto" tabindex="30"  value="#{cadPjausPaaittvBean.pjaus_ds_objeto}" cols="120" rows="4" styleClass="pjaus_ds_objeto_" onchange="bv('','pjaus_ds_objeto','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_objeto_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_objeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_carac_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_infc_viaferrea" for="pjaus_tp_infc_viaferrea"  value="#{iimsg.PjausPaaittv_pjaus_tp_infc_viaferrea_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_infc_viaferrea" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(10);cleSubSel_uv('pjaus_vl_alt_interf');cleSubSel_uv('pjaus_vl_prf_sub');cleSubSel_uv('pjaus_ar_intf');cleSubSel_uv('pjaus_tp_est_interf');cleSubSel_uv('pjaus_tp_pos_pn_via');bdcd('','pjaus_tp_infc_viaferrea','2','TPITV',this.value);PjausPaaittv_pjint_hl();" size="7" maxlength="5" tabindex="31" />
<h:commandButton id="pjaus_tp_infc_viaferrea_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPITV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_infc_viaferrea_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_infc_viaferrea_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_infc_viaferrea_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_est_interf" for="pjaus_tp_est_interf"  value="#{iimsg.PjausPaaittv_pjaus_tp_est_interf_tt}"/>  </td> <%-- <top> --%>
<%-- codfTypeSelector == 0 --%>
<td   width="700" > <h:inputText id="pjaus_tp_est_interf" onclick="clf(this);" tabindex="35"  value="#{cadPjausPaaittvBean.pjaus_tp_est_interf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(11);cleSubSel_uv('pjaus_tp_ten_interf');if(!valSubSel('pjaus_tp_infc_viaferrea')){this.value='';}uf();bdcd('','pjaus_tp_est_interf','0',esips(retSubSel('pjaus_tp_infc_viaferrea')),this.value);pjaus_tp_est_interf_hl(this.value);" size="7" maxlength="5"/>
<h:commandButton id="pjaus_tp_est_interf_xsel" tabindex="-1" immediate="true" onmousedown="if(valSubSel('pjaus_tp_infc_viaferrea')){wtran=esips(retSubSel('pjaus_tp_infc_viaferrea'));pw('C'+wtran, tran, this.id, 'yes');}" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_est_interf_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_est_interf_vc}" styleClass="btp"/>
<h:inputText id="pjaus_tp_est_interf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_est_interf_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ps_km" for="pjaus_ps_km"  value="#{iimsg.PjausPaaittv_pjaus_ps_km_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="pjaus_ps_km" tabindex="38"  value="#{cadPjausPaaittvBean.pjaus_ps_km}" size="162" maxlength="160"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ps_km','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ps_km_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ps_km_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_pos_pn_via" for="pjaus_tp_pos_pn_via"  value="#{iimsg.PjausPaaittv_pjaus_tp_pos_pn_via_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_pos_pn_via" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_pos_pn_via}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(12);cleSubSel_uv('pjaus_vl_ang_interf_via');bdcd('','pjaus_tp_pos_pn_via','2','POSPN',this.value);PjausPaaittv_pjint_hl();" size="7" maxlength="5" tabindex="39" />
<h:commandButton id="pjaus_tp_pos_pn_via_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'POSPN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_pos_pn_via_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_pos_pn_via_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_pos_pn_via_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_pos_pn_via_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_dist" for="pjaus_vl_dist"  value="#{iimsg.PjausPaaittv_pjaus_vl_dist_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_vl_dist" tabindex="44"  value="#{cadPjausPaaittvBean.pjaus_vl_dist_str}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','pjaus_vl_dist','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_dist_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_dist_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_ang_interf_via" for="pjaus_vl_ang_interf_via"  value="#{iimsg.PjausPaaittv_pjaus_vl_ang_interf_via_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="pjaus_vl_ang_interf_via" tabindex="45"  value="#{cadPjausPaaittvBean.pjaus_vl_ang_interf_via}"  styleClass="txr pr5 tbx" size="5" maxlength="3" onchange="bv('','pjaus_vl_ang_interf_via','2',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_ang_interf_via_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_ang_interf_via_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_alt_interf" for="pjaus_vl_alt_interf"  value="#{iimsg.PjausPaaittv_pjaus_vl_alt_interf_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_vl_alt_interf" tabindex="46"  value="#{cadPjausPaaittvBean.pjaus_vl_alt_interf_str}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','pjaus_vl_alt_interf','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_alt_interf_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_alt_interf_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_vl_prf_sub" for="pjaus_vl_prf_sub"  value="#{iimsg.PjausPaaittv_pjaus_vl_prf_sub_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_vl_prf_sub" tabindex="47"  value="#{cadPjausPaaittvBean.pjaus_vl_prf_sub_str}"  styleClass="txr pr5 tbx" size="8" maxlength="6" onchange="bv('','pjaus_vl_prf_sub','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_vl_prf_sub_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_vl_prf_sub_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ar_intf" for="pjaus_ar_intf"  value="#{iimsg.PjausPaaittv_pjaus_ar_intf_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="pjaus_ar_intf" tabindex="48"  value="#{cadPjausPaaittvBean.pjaus_ar_intf_str}"  styleClass="txr pr5 tbx" size="14" maxlength="12" onchange="bv('','pjaus_ar_intf','2',valDec(this.value));"/>
<ps:psGraphicImage id="pjaus_ar_intf_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ar_intf_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_ten_interf" for="pjaus_tp_ten_interf"  value="#{iimsg.PjausPaaittv_pjaus_tp_ten_interf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_ten_interf" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_ten_interf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_ten_interf','2','TNITF',this.value);;" size="7" maxlength="5" tabindex="49" />
<h:commandButton id="pjaus_tp_ten_interf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TNITF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_ten_interf_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_ten_interf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_ten_interf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_ten_interf_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_ocup_area_terc" for="pjaus_in_ocup_area_terc"  value="#{iimsg.PjausPaaittv_pjaus_in_ocup_area_terc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="6"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_ocup_area_terc" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_ocup_area_terc','2','GENYN',this.value);;" size="5" maxlength="3" tabindex="50" />
<h:commandButton id="pjaus_in_ocup_area_terc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_ocup_area_terc_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_ocup_area_terc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_in_ocup_area_terc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_est_tub_camisa" for="pjaus_in_est_tub_camisa"  value="#{iimsg.PjausPaaittv_pjaus_in_est_tub_camisa_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_est_tub_camisa" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_in_est_tub_camisa}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_est_tub_camisa','2','GENYN',this.value);;" size="5" maxlength="3" tabindex="51" />
<h:commandButton id="pjaus_in_est_tub_camisa_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_est_tub_camisa_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_est_tub_camisa_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_est_tub_camisa_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_in_est_tub_camisa_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_est_fiacao" for="pjaus_in_est_fiacao"  value="#{iimsg.PjausPaaittv_pjaus_in_est_fiacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_est_fiacao" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_in_est_fiacao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_est_fiacao','2','GENYN',this.value);;" size="5" maxlength="3" tabindex="52" />
<h:commandButton id="pjaus_in_est_fiacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENYN', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_est_fiacao_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_in_est_fiacao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_est_fiacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_in_est_fiacao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_est_interf_sub" for="pjaus_ds_est_interf_sub"  value="#{iimsg.PjausPaaittv_pjaus_ds_est_interf_sub_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="450"   >
<h:inputText id="pjaus_ds_est_interf_sub" tabindex="53"  value="#{cadPjausPaaittvBean.pjaus_ds_est_interf_sub}" size="102" maxlength="100"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_est_interf_sub','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_est_interf_sub_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_ds_est_interf_sub_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaittv_envir_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_doc_linc_amb" for="pjaus_tp_doc_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_tp_doc_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="450"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_doc_linc_amb" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(13);bdcd('','pjaus_tp_doc_linc_amb','2','DCLCA',this.value);;" size="7" maxlength="5" tabindex="54" />
<h:commandButton id="pjaus_tp_doc_linc_amb_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'DCLCA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_doc_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_doc_linc_amb_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_tp_doc_linc_amb_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_org_linc_amb" for="pjaus_id_org_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_id_org_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_id_org_linc_amb" tabindex="55"  value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="clFields(14);bv('','pjaus_id_org_linc_amb','2',this.value);"/>
<ps:psGraphicImage id="pjaus_id_org_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_id_org_linc_amb_nap" for="pjaus_id_org_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_id_org_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_id_org_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(15);cleSubSel_uv('pjaus_id_org_linc_amb');bdcd('','pjaus_id_org_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="56" />
<h:commandButton id="pjaus_id_org_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_id_org_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_id_org_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_id_org_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_nu_doc_linc_amb" for="pjaus_nu_doc_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_nu_doc_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_nu_doc_linc_amb" tabindex="57"  value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="clFields(16);bv('','pjaus_nu_doc_linc_amb','2',this.value);"/>
<ps:psGraphicImage id="pjaus_nu_doc_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_nu_doc_linc_amb_nap" for="pjaus_nu_doc_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_nu_doc_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_nu_doc_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(17);cleSubSel_uv('pjaus_nu_doc_linc_amb');bdcd('','pjaus_nu_doc_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="58" />
<h:commandButton id="pjaus_nu_doc_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_nu_doc_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_nu_doc_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_nu_doc_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_exp_linc_amb" for="pjaus_dt_exp_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_dt_exp_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="700"   >
<h:inputText id="pjaus_dt_exp_linc_amb_str" tabindex="59"  value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_exp_linc_amb_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_exp_linc_amb_str', 'cadForm:pjaus_dt_exp_linc_amb_nap', 8 , event);" onchange="clFields(18);validaDatas2(this);bv('','pjaus_dt_exp_linc_amb_str','2',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_exp_linc_amb_str', 'pjaus_dt_exp_linc_ambCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_exp_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_vc}" styleClass="btp"/>
<div id="pjaus_dt_exp_linc_ambCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_dt_exp_linc_amb_nap" for="pjaus_dt_exp_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_dt_exp_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_dt_exp_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(19);cleSubSel_uv('pjaus_dt_exp_linc_amb_str');bdcd('','pjaus_dt_exp_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="60" />
<h:commandButton id="pjaus_dt_exp_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_dt_exp_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_dt_exp_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_dt_exp_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_val_linc_amb" for="pjaus_pz_val_linc_amb"  value="#{iimsg.PjausPaaittv_pjaus_pz_val_linc_amb_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="pjaus_pz_val_linc_amb" tabindex="61"  value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="clFields(20);bv('','pjaus_pz_val_linc_amb','2',valNum(this.value));"/>
<ps:psGraphicImage id="pjaus_pz_val_linc_amb_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="450" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_pjaus_pz_val_linc_amb_nap" for="pjaus_pz_val_linc_amb_nap"  value="#{iimsg.PjausPaaittv_pjaus_pz_val_linc_amb_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_pz_val_linc_amb_nap" onclick="clf(this);" value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(21);cleSubSel_uv('pjaus_pz_val_linc_amb');bdcd('','pjaus_pz_val_linc_amb_nap','2','TPNNP',this.value);;" size="14" maxlength="12" tabindex="62" />
<h:commandButton id="pjaus_pz_val_linc_amb_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNNP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_pz_val_linc_amb_nap_vc" flagType="val" flag="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_pz_val_linc_amb_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaittvBean.pjaus_pz_val_linc_amb_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
