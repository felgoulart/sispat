<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varpjtrg" rendered="#{cadPjausPaaotBean.canUpdate}" value="#{cadPjausPaaotBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessagepjtrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadPjausPaaotBean.canUpdate}" action="#{cadPjausPaaotBean.doValidate}" onmousedown="msgw('aMessagepjtrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="pjaus_id1" >
<h:outputText styleClass="tip" value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="pjaus_id1" value="#{cadPjausPaaotBean.pjaus_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Pjaus_pjaus_nm_title_tt}"/>
<h:outputText id="pjaus_id_dsc1" value="#{cadPjausPaaotBean.pjaus_nm_title}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_status_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_geral" for="pjaus_st_geral"  value="#{iimsg.PjausPaaot_pjaus_st_geral_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_geral" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_st_geral}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_geral','1','SGPOT',this.value);;" size="7" maxlength="5" tabindex="3" />
<h:commandButton id="pjaus_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SGPOT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_geral_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_st_geral_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_st_geral_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_obra" for="pjaus_tp_obra"  value="#{iimsg.PjausPaaot_pjaus_tp_obra_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_obra" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_obra}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_obra','1','TPOBR',this.value);;" size="7" maxlength="5" tabindex="4" />
<h:commandButton id="pjaus_tp_obra_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPOBR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_obra_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_obra_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_obra_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_obra_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_st" value="#{cadPjausPaaotBean.pjaus_st}"/>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_analise" for="pjaus_st_analise"  value="#{iimsg.PjausPaaot_pjaus_st_analise_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_st_analise" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_st_analise}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_st_analise','1','STAOT',this.value);;" size="7" maxlength="5" tabindex="5" />
<h:commandButton id="pjaus_st_analise_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STAOT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_st_analise_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_st_analise_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_st_analise_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_st_analise_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_st_vpx" value="#{cadPjausPaaotBean.pjaus_st_vpx}"/>
<td       width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_st_checklist" for="pjaus_st_checklist"  value="#{iimsg.PjausPaaot_pjaus_st_checklist_tt}"/>  </td> <%-- <top> --%>
<%-- outputText --%>
<td    width="700" > <h:inputText id="pjaus_st_checklist" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_st_checklist}" size="10" maxlength="10"  styleClass="txl pl5 tbxr"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_ident_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id" for="pjaus_id"  value="#{iimsg.PjausPaaot_pjaus_id_tt}"/>  </td> <%-- <top> --%>
<%-- prop Primary Key --%>
<%-- Processing Pk --%>
<%-- Processing Pk ccc --%>
<td  width="700" > <h:inputText id="pjaus_id" tabindex="7"  value="#{cadPjausPaaotBean.pjaus_id}"  styleClass="txl pl5 tbx" size="29" maxlength="27" onchange="this.value=this.value.toUpperCase();bv('','pjaus_id','1',this.value);"/>
<ps:psGraphicImage id="pjaus_id_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_id_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- Hidden --%>
<h:inputHidden id="pjaus_nm_title" value="#{cadPjausPaaotBean.pjaus_nm_title}"/>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_emergencial" for="pjaus_in_emergencial"  value="#{iimsg.PjausPaaot_pjaus_in_emergencial_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_emergencial" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_in_emergencial}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_emergencial','1','TPAEM',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="pjaus_in_emergencial_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPAEM', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_emergencial_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_in_emergencial_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_emergencial_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_in_emergencial_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_id_solicitante" for="pjaus_id_solicitante"  value="#{iimsg.PjausPaaot_pjaus_id_solicitante_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="pjaus_id_solicitante" tabindex="9"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_id_solicitante}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="this.value=this.value.toUpperCase();Transfk('','','1','pjaus_id_solicitante','Solic','solic_cd','solic_nm_razaosocial',this.value);" size="12" maxlength="10" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="pjaus_id_solicitante_xsel" tabindex="-1" immediate="true" onmousedown="pw('solexpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_id_solicitante_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_id_solicitante_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="pjaus_id_solicitante_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_id_solicitante_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_in_ipa" for="pjaus_in_ipa"  value="#{iimsg.PjausPaaot_pjaus_in_ipa_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_in_ipa" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_in_ipa}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_in_ipa','1','STIPA',this.value);;" size="5" maxlength="3" tabindex="10" />
<h:commandButton id="pjaus_in_ipa_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STIPA', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_in_ipa_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_in_ipa_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_in_ipa_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_in_ipa_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table     align="left"  >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="14"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="14" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_local_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_cfresid" for="pjaus_cd_cfresid"  value="#{iimsg.PjausPaaot_pjaus_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="6" width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_cfresid" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_cd_cfresid}" onkeydown="keypress=1;"  styleClass="txl pl1 tbx" onchange="bdcd('','pjaus_cd_cfresid','1','RESID',this.value);;" size="7" maxlength="5" tabindex="11" />
<h:commandButton id="pjaus_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_cfresid_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td       width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_uf" for="pjaus_cd_uf"  value="#{iimsg.PjausPaaot_pjaus_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="150"   >
<%-- Processing Codf 1--%>
<h:inputText id="pjaus_cd_uf" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_uf}" size="3" maxlength="3"  styleClass="txl pl1 tbxr"/>
<ps:psGraphicImage id="pjaus_cd_uf_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_uf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_uf_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_cd_trecho" for="pjaus_cd_trecho"  value="#{iimsg.PjausPaaot_pjaus_cd_trecho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_cd_trecho" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_cd_trecho}" onkeydown="keypress=1;"  styleClass="txl pl1 tbx" onchange="bdcd('','pjaus_cd_trecho','1','TRCHO',this.value);;" size="7" maxlength="5" tabindex="13" />
<h:commandButton id="pjaus_cd_trecho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCHO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_cd_trecho_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_cd_trecho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_cd_trecho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_cd_trecho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ps_km_1" for="pjaus_ps_km_1"  value="#{iimsg.PjausPaaot_pjaus_ps_km_1_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_1" tabindex="14"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_1}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_1','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_2" tabindex="15"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_2}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_2','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_3" tabindex="16"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_3}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_3','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_4" tabindex="17"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_4}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_4','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_5" tabindex="18"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_5}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_5','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_6" tabindex="19"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_6}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_6','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_7" tabindex="20"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_7}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_7','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_8" tabindex="21"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_8}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_8','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_9" tabindex="22"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_9}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_9','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="50"   >
<h:inputText id="pjaus_ps_km_a" tabindex="23"  onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_ps_km_a}" size="7" maxlength="7"  styleClass="txl pl1 tbx" onchange="bv('','pjaus_ps_km_a','1',valDecx(this.value));"/>
</td> <%-- <close td> ccc --%>
<td        width="50" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
<td        width="600" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="8"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="8" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.PjausPaaot_datas_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_solicitacao_cliente" for="pjaus_dt_solicitacao_cliente"  value="#{iimsg.PjausPaaot_pjaus_dt_solicitacao_cliente_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="pjaus_dt_solicitacao_cliente_str" tabindex="24"  value="#{cadPjausPaaotBean.pjaus_dt_solicitacao_cliente_str}"  styleClass="txl pl5 tbDt" size="14" maxlength="12" onkeydown="formataData('cadForm:pjaus_dt_solicitacao_cliente_str', event);" onkeyup="SaltaCampo('cadForm:pjaus_dt_solicitacao_cliente_str', 'cadForm:pjaus_dt_prss_antt_ptc_var', 8 , event);" onchange="validaDatas2(this);bv('','pjaus_dt_solicitacao_cliente_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:pjaus_dt_solicitacao_cliente_str', 'pjaus_dt_solicitacao_clienteCal');" style="cursor: hand"/>
<ps:psGraphicImage id="pjaus_dt_solicitacao_cliente_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_solicitacao_cliente_vc}" styleClass="btp"/>
<div id="pjaus_dt_solicitacao_clienteCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td       width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_prss_antt_ptc_var" for="pjaus_dt_prss_antt_ptc_var"  value="#{iimsg.PjausPaaot_pjaus_dt_prss_antt_ptc_var_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="pjaus_dt_prss_antt_ptc_var" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_dt_prss_antt_ptc_var_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_dt_prss_antt_ptc_var_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_prss_antt_ptc_var_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_pz_prss_antt_var" for="pjaus_pz_prss_antt_var"  value="#{iimsg.PjausPaaot_pjaus_pz_prss_antt_var_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="pjaus_pz_prss_antt_var" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_pz_prss_antt_var_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_pz_prss_antt_var_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_pz_prss_antt_var_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dd_atraso_var" for="pjaus_dd_atraso_var"  value="#{iimsg.PjausPaaot_pjaus_dd_atraso_var_tt}"/>  </td> <%-- <top> --%>
<%-- outputText Number or NoLabel --%>
<td    width="500" > <h:inputText id="pjaus_dd_atraso_var" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_dd_atraso_var}" size="3" maxlength="3"  styleClass="txr pr5 tbxr"/>
<ps:psGraphicImage id="pjaus_dd_atraso_var_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dd_atraso_var_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_abertura" for="pjaus_dt_abertura"  value="#{iimsg.PjausPaaot_pjaus_dt_abertura_tt}"/>  </td> <%-- <top> --%>
<%-- current Date --%>
<td  width="600" > <h:inputText id="pjaus_dt_abertura_str" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_dt_abertura_str}" onchange="uf();" size="0" maxlength="10"  styleClass="txl pl5 tbDtr"/>
<ps:psGraphicImage id="pjaus_dt_abertura_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_abertura_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_dt_ultm_mov" for="pjaus_dt_ultm_mov"  value="#{iimsg.PjausPaaot_pjaus_dt_ultm_mov_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="pjaus_dt_ultm_mov" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_dt_ultm_mov_str}" size="0" maxlength="10"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_dt_ultm_mov_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_dt_ultm_mov_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td       width="550" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_df_prss_antt_var" for="pjaus_df_prss_antt_var"  value="#{iimsg.PjausPaaot_pjaus_df_prss_antt_var_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="pjaus_df_prss_antt_var" tabindex="-1"  onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_df_prss_antt_var_str}" size="12" maxlength="12"  styleClass="txl pl5 tbDtr" />
<ps:psGraphicImage id="pjaus_df_prss_antt_var_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_df_prss_antt_var_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="550" > <%-- open w/ inputText 222a--%>
<%-- filler2 --%> &nbsp &nbsp
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="150" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaot_pjaus_pj_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<h:outputLabel  styleClass="tts"  value="#{iimsg.PjausPaaot_pjaus_sl_tt_tt}"/>
<%-- filler4 --%> &nbsp &nbsp &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uv --%> <h:commandButton id="pjaus_conts_xsel" immediate="true" action="#{cadObcntpjBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaotcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;" image="../imagens/btPeople.gif" title="#{iimsg.obcntpj_TT}"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docsckl_xsel" immediate="true" action="#{cadObdocpjcklBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaotcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaotBean.obdocpjckl_im}" title="#{iimsg.obdocpjckl_TT}"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="pjaus_docseml_xsel" immediate="true" action="#{cadObdocpjemlBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaotcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;"  image="#{cadPjausPaaotBean.obdocpjeml_im}" title="#{iimsg.obdocpjeml_TT}"/>
<%-- filler2 --%> &nbsp &nbsp
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimgpj" tabindex="-1" immediate="true" action="#{cadObimgpjBean.doObternull}" onmousedown="wtran='obimgpjcad';el('hiddenform').target=tran;valor1=el('cadForm:pjaus_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=pjauspaaotcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadPjausPaaotBean.imag_im}" />
<%-- filler2 --%> &nbsp &nbsp
<%-- prop Dao Search Button with Parms  --%>
<%-- uv --%> <h:commandButton id="pjaus_pjhsogpt_xsel" immediate="true" action="#{cadPjhsogpBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=pjauspaaotcad&campo=campo1&valor='+el('cadForm:pjaus_id').value;" image="../imagens/process.ico" title="#{iimsg.pjhsogp_TT}"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_catgr" for="pjaus_tp_catgr"  value="#{iimsg.PjausPaaot_pjaus_tp_catgr_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_catgr" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_catgr}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_catgr','1','CATGR',this.value);;" size="7" maxlength="5" tabindex="35" />
<h:commandButton id="pjaus_tp_catgr_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CATGR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_catgr_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_catgr_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_catgr_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_catgr_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_tp_catdt" for="pjaus_tp_catdt"  value="#{iimsg.PjausPaaot_pjaus_tp_catdt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="pjaus_tp_catdt" onclick="clf(this);" value="#{cadPjausPaaotBean.pjaus_tp_catdt}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','pjaus_tp_catdt','1','CATDT',this.value);;" size="7" maxlength="5" tabindex="36" />
<h:commandButton id="pjaus_tp_catdt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CATDT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="pjaus_tp_catdt_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_tp_catdt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="pjaus_tp_catdt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadPjausPaaotBean.pjaus_tp_catdt_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_caracteristicas" for="pjaus_ds_caracteristicas"  value="#{iimsg.PjausPaaot_pjaus_ds_caracteristicas_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_caracteristicas" tabindex="37"  value="#{cadPjausPaaotBean.pjaus_ds_caracteristicas}" cols="100" rows="4" styleClass="pjaus_ds_caracteristicas_" onchange="bv('','pjaus_ds_caracteristicas','1',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_caracteristicas_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_caracteristicas_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="null" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_pjaus_ds_suscinta" for="pjaus_ds_suscinta"  value="#{iimsg.PjausPaaot_pjaus_ds_suscinta_tt}"/>  </td> <%-- <top> --%>
<%-- inputTextArea --%>
<td   colspan="4" >  <h:inputTextarea id="pjaus_ds_suscinta" tabindex="38"  value="#{cadPjausPaaotBean.pjaus_ds_suscinta}" cols="100" rows="2" styleClass="pjaus_ds_suscinta_" onchange="bv('','pjaus_ds_suscinta','1',this.value);"/>
<ps:psGraphicImage id="pjaus_ds_suscinta_vc" flagType="val" flag="#{cadPjausPaaotBean.pjaus_ds_suscinta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
