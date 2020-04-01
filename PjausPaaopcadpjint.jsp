<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjint" rendered="#{cadPjausPaaopBean.canUpdate}" value="#{cadPjausPaaopBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjint" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaopBean.canUpdate}" action="#{cadPjausPaaopBean.doValidate}" onmousedown="msgw('aMessagepjint');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id2" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaop_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id2" value="#{cadPjausPaaopBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc2" value="#{cadPjausPaaopBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_objct_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_objt" for="pjaus_tp_objt"  value="#{iimsg.PjausPaaop_pjaus_tp_objt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_objt" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_tp_objt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(1);cleSubSel_uv('pjaus_tp_espec_1');bdcd('','pjaus_tp_objt','2','TPIPS',this.value);;" size="7" maxlength="5" tabindex="24" />
<h:commandButton id="pjaus_tp_objt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIPS', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_objt_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_tp_objt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_objt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_tp_objt_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_espec_1" for="pjaus_tp_espec_1"  value="#{iimsg.PjausPaaop_pjaus_tp_espec_1_tt}"/>  </td> <%-- <top> --%>
<%-- codfTypeSelector == 0 --%>
<td   width="700" > <h:inputText id="pjaus_tp_espec_1" onclick="clf(this);" tabindex="25"  value="#{cadPjausPaaopBean.pjaus_tp_espec_1}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);if(!valSubSel('pjaus_tp_objt')){this.value='';}uf();bdcd('','pjaus_tp_espec_1','0',topp99(retSubSel('pjaus_tp_objt')),this.value);;" size="7" maxlength="5"/>
<h:commandButton id="pjaus_tp_espec_1_xsel" tabindex="-1" immediate="true" onmousedown="if(valSubSel('pjaus_tp_objt')){wtran=topp99(retSubSel('pjaus_tp_objt'));pw('C'+wtran, tran, this.id, 'yes');}" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_espec_1_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_tp_espec_1_vc}" styleClass="btp"/>
<h:inputText id="pjaus_tp_espec_1_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_tp_espec_1_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_objeto" tabindex="26"  value="#{cadPjausPaaopBean.pjaus_ds_objeto}" cols="120" rows="4" styleClass="pjaus_ds_objeto_" onchange="bv('','pjaus_ds_objeto','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_objeto_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_objeto_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaop_carac_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_linha" for="pjaus_cd_linha"  value="#{iimsg.PjausPaaop_pjaus_cd_linha_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_linha" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_cd_linha}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_linha','2','LINHA',this.value);;" size="7" maxlength="5" tabindex="27" />
<h:commandButton id="pjaus_cd_linha_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LINHA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_linha_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_cd_linha_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_linha_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_cd_linha_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ps_rel_via" for="pjaus_ps_rel_via"  value="#{iimsg.PjausPaaop_pjaus_ps_rel_via_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_ps_rel_via" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_ps_rel_via}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_ps_rel_via','2','PSRLV',this.value);;" size="7" maxlength="5" tabindex="28" />
<h:commandButton id="pjaus_ps_rel_via_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'PSRLV', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_ps_rel_via_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ps_rel_via_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_ps_rel_via_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_ps_rel_via_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfresid" for="pjaus_cd_cfresid"  value="#{iimsg.PjausPaaop_pjaus_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfresid" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_cd_cfresid}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_cfresid','2','RESID',this.value);;" size="7" maxlength="5" tabindex="29" />
<h:commandButton id="pjaus_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfresid_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_uf" for="pjaus_cd_uf"  value="#{iimsg.PjausPaaop_pjaus_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_uf" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_cd_uf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_uf','2','GUF',this.value);;" size="5" maxlength="3" tabindex="30" />
<h:commandButton id="pjaus_cd_uf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_uf_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_cd_uf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_cd_uf_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfreslc" for="pjaus_cd_cfreslc"  value="#{iimsg.PjausPaaop_pjaus_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfreslc" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_cfreslc','2','RESLC',this.value);;" size="7" maxlength="5" tabindex="31" />
<h:commandButton id="pjaus_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfreslc_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfreslc_prx" for="pjaus_cd_cfreslc_prx"  value="#{iimsg.PjausPaaop_pjaus_cd_cfreslc_prx_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfreslc_prx" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_cd_cfreslc_prx','2','RESLC',this.value);;" size="7" maxlength="5" tabindex="32" />
<h:commandButton id="pjaus_cd_cfreslc_prx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfreslc_prx_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_cd_cfreslc_prx_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfreslc_prx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_cd_cfreslc_prx_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_fundiaria_area" for="pjaus_st_fundiaria_area"  value="#{iimsg.PjausPaaop_pjaus_st_fundiaria_area_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_fundiaria_area" onclick="clf(this);" value="#{cadPjausPaaopBean.pjaus_st_fundiaria_area}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_fundiaria_area','2','STFDA',this.value);;" size="7" maxlength="5" tabindex="33" />
<h:commandButton id="pjaus_st_fundiaria_area_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STFDA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_fundiaria_area_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_st_fundiaria_area_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_fundiaria_area_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaopBean.pjaus_st_fundiaria_area_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_gps_lat" for="pjaus_ds_gps_lat"  value="#{iimsg.PjausPaaop_pjaus_ds_gps_lat_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_ds_gps_lat" tabindex="34"  value="#{cadPjausPaaopBean.pjaus_ds_gps_lat}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_gps_lat','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_gps_lat_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_gps_lat_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_gps_lon" for="pjaus_ds_gps_lon"  value="#{iimsg.PjausPaaop_pjaus_ds_gps_lon_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="pjaus_ds_gps_lon" tabindex="35"  value="#{cadPjausPaaopBean.pjaus_ds_gps_lon}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ds_gps_lon','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_gps_lon_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ds_gps_lon_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ps_km" for="pjaus_ps_km"  value="#{iimsg.PjausPaaop_pjaus_ps_km_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="300"   >
<h:inputText id="pjaus_ps_km" tabindex="36"  value="#{cadPjausPaaopBean.pjaus_ps_km}" size="162" maxlength="160"  styleClass="txl pl5 tbx" onchange="bv('','pjaus_ps_km','2',this.value);"/>
<ps:psGraphicImage id="pjaus_ps_km_vc" flagType="val" flag="#{cadPjausPaaopBean.pjaus_ps_km_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
