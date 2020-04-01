<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastex" rendered="#{cadAssetCulvtBean.canUpdate}" value="#{cadAssetCulvtBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastex" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetCulvtBean.canUpdate}" action="#{cadAssetCulvtBean.doValidate}" onmousedown="msgw('aMessageastex');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id7" >
<h:outputText styleClass="tip" value="#{iimsg.AssetCulvt_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id7" value="#{cadAssetCulvtBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetCulvt_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc7" value="#{cadAssetCulvtBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetCulvt_expt_ex_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_perito" for="asset_cd_perito"  value="#{iimsg.AssetCulvt_asset_cd_perito_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_perito" tabindex="72"  value="#{cadAssetCulvtBean.asset_cd_perito}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_perito','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_perito_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_perito_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_auxiliar" for="asset_cd_auxiliar"  value="#{iimsg.AssetCulvt_asset_cd_auxiliar_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_auxiliar" tabindex="73"  value="#{cadAssetCulvtBean.asset_cd_auxiliar}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_auxiliar','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_auxiliar_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_auxiliar_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetCulvt_expt_ip_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetCulvt_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan=""  width="600"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="74"  value="#{cadAssetCulvtBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_nu_doc_inspecao', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','7',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_vistoria_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_dt_vistoria_vc}" styleClass="btp"/>
<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_doc_inspecao" for="asset_nu_doc_inspecao"  value="#{iimsg.AssetCulvt_asset_nu_doc_inspecao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_doc_inspecao" tabindex="75"  value="#{cadAssetCulvtBean.asset_nu_doc_inspecao}" size="7" maxlength="5"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_doc_inspecao','7',this.value);"/>
<ps:psGraphicImage id="asset_nu_doc_inspecao_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_nu_doc_inspecao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetCulvt_expt_cl_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id_atdm" for="asset_id_atdm"  value="#{iimsg.AssetCulvt_asset_id_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_id_atdm" tabindex="76"  value="#{cadAssetCulvtBean.asset_id_atdm}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_id_atdm','7',this.value);"/>
<ps:psGraphicImage id="asset_id_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_id_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_atdm" for="asset_nu_atdm"  value="#{iimsg.AssetCulvt_asset_nu_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_nu_atdm" tabindex="77"  value="#{cadAssetCulvtBean.asset_nu_atdm}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_atdm','7',this.value);"/>
<ps:psGraphicImage id="asset_nu_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_nu_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_di_atdm" for="asset_di_atdm"  value="#{iimsg.AssetCulvt_asset_di_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="asset_di_atdm" tabindex="78"  value="#{cadAssetCulvtBean.asset_di_atdm_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_di_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_di_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_df_atdm" for="asset_df_atdm"  value="#{iimsg.AssetCulvt_asset_df_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- Date --%>
<td  width="600" > <h:inputText id="asset_df_atdm" tabindex="79"  value="#{cadAssetCulvtBean.asset_df_atdm_str}" size="12" maxlength="10"  styleClass="txl pl5 tbDt" />
<ps:psGraphicImage id="asset_df_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_df_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ponto_atdm" for="asset_cd_ponto_atdm"  value="#{iimsg.AssetCulvt_asset_cd_ponto_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_ponto_atdm" tabindex="80"  value="#{cadAssetCulvtBean.asset_cd_ponto_atdm}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ponto_atdm','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_ponto_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_ponto_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_stat_atdm" for="asset_cd_stat_atdm"  value="#{iimsg.AssetCulvt_asset_cd_stat_atdm_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_stat_atdm" tabindex="81"  value="#{cadAssetCulvtBean.asset_cd_stat_atdm}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_stat_atdm','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_stat_atdm_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_stat_atdm_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_tipo_vsta" for="asset_cd_tipo_vsta"  value="#{iimsg.AssetCulvt_asset_cd_tipo_vsta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_cd_tipo_vsta" tabindex="82"  value="#{cadAssetCulvtBean.asset_cd_tipo_vsta}" size="37" maxlength="35"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_tipo_vsta','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_tipo_vsta_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_tipo_vsta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_acao" for="asset_tp_acao"  value="#{iimsg.AssetCulvt_asset_tp_acao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="600"   >
<h:inputText id="asset_tp_acao" tabindex="83"  value="#{cadAssetCulvtBean.asset_tp_acao}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_tp_acao','7',this.value);"/>
<ps:psGraphicImage id="asset_tp_acao_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_tp_acao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="350" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_sist_orig" for="asset_cd_sist_orig"  value="#{iimsg.AssetCulvt_asset_cd_sist_orig_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="350"   >
<h:inputText id="asset_cd_sist_orig" tabindex="84"  value="#{cadAssetCulvtBean.asset_cd_sist_orig}" size="47" maxlength="45"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_sist_orig','7',this.value);"/>
<ps:psGraphicImage id="asset_cd_sist_orig_vc" flagType="val" flag="#{cadAssetCulvtBean.asset_cd_sist_orig_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
