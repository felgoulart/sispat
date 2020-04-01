<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastex" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastex" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastex');">
<ps:psGraphicImage id="iMessageastex" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id10" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id10" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc10" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_expt_ex_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_perito" for="asset_cd_perito"  value="#{iimsg.AssetSupersv_asset_cd_perito_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_perito" tabindex="299"  value="#{cadAssetSupersvBean.asset_cd_perito}" size="17" maxlength="15"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_perito','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_perito_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_perito_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_auxiliar" for="asset_cd_auxiliar"  value="#{iimsg.AssetSupersv_asset_cd_auxiliar_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_auxiliar" tabindex="300"  value="#{cadAssetSupersvBean.asset_cd_auxiliar}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_auxiliar','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_auxiliar_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_auxiliar_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_expt_ip_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetSupersv_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_vistoria" tabindex="301"  value="#{cadAssetSupersvBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria', 'cadForm:asset_nu_doc_inspecao', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria','10',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria', 'asset_dt_vistoriaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_vistoria_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_dt_vistoria_vc}" styleClass="btp"/>
<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_doc_inspecao" for="asset_nu_doc_inspecao"  value="#{iimsg.AssetSupersv_asset_nu_doc_inspecao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_doc_inspecao" tabindex="302"  value="#{cadAssetSupersvBean.asset_nu_doc_inspecao}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_doc_inspecao','10',this.value);"/>
<ps:psGraphicImage id="asset_nu_doc_inspecao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_doc_inspecao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_expt_cl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id_atdm" for="asset_id_atdm"  value="#{iimsg.AssetSupersv_asset_id_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_id_atdm" tabindex="303"  value="#{cadAssetSupersvBean.asset_id_atdm}" size="8" maxlength="6"  styleClass="txl pl5 tbx" onchange="bv('','asset_id_atdm','10',this.value);"/>
<ps:psGraphicImage id="asset_id_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_id_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_atdm" for="asset_nu_atdm"  value="#{iimsg.AssetSupersv_asset_nu_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_atdm" tabindex="304"  value="#{cadAssetSupersvBean.asset_nu_atdm}" size="8" maxlength="6"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_atdm','10',this.value);"/>
<ps:psGraphicImage id="asset_nu_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_nu_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_di_atdm" for="asset_di_atdm"  value="#{iimsg.AssetSupersv_asset_di_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="asset_di_atdm" tabindex="305"  value="#{cadAssetSupersvBean.asset_di_atdm_str}" size="10" maxlength="8"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_di_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_di_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_df_atdm" for="asset_df_atdm"  value="#{iimsg.AssetSupersv_asset_df_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="asset_df_atdm" tabindex="306"  value="#{cadAssetSupersvBean.asset_df_atdm_str}" size="10" maxlength="8"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_df_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_df_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ponto_atdm" for="asset_cd_ponto_atdm"  value="#{iimsg.AssetSupersv_asset_cd_ponto_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_ponto_atdm" tabindex="307"  value="#{cadAssetSupersvBean.asset_cd_ponto_atdm}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ponto_atdm','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_ponto_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_ponto_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_stat_atdm" for="asset_cd_stat_atdm"  value="#{iimsg.AssetSupersv_asset_cd_stat_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_stat_atdm" tabindex="308"  value="#{cadAssetSupersvBean.asset_cd_stat_atdm}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_stat_atdm','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_stat_atdm_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_stat_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tipo_vsta" for="asset_cd_tipo_vsta"  value="#{iimsg.AssetSupersv_asset_cd_tipo_vsta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_tipo_vsta" tabindex="309"  value="#{cadAssetSupersvBean.asset_cd_tipo_vsta}" size="8" maxlength="6"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tipo_vsta','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_tipo_vsta_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_tipo_vsta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acao" for="asset_tp_acao"  value="#{iimsg.AssetSupersv_asset_tp_acao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="600"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_acao" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_tp_acao}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_acao','10','GENST',this.value);;" size="5" maxlength="3" tabindex="310" />
<h:commandButton id="asset_tp_acao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_acao_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_tp_acao_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_acao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_tp_acao_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_sist_orig" for="asset_cd_sist_orig"  value="#{iimsg.AssetSupersv_asset_cd_sist_orig_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="350"   >
<h:inputText id="asset_cd_sist_orig" tabindex="311"  value="#{cadAssetSupersvBean.asset_cd_sist_orig}" size="8" maxlength="6"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_sist_orig','10',this.value);"/>
<ps:psGraphicImage id="asset_cd_sist_orig_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_cd_sist_orig_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
