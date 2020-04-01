<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastrg" rendered="#{cadAssetSuperBean.canUpdate}" value="#{cadAssetSuperBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastrg" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetSuperBean.canUpdate}" action="#{cadAssetSuperBean.doValidate}" onmousedown="msgw('aMessageastrg');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSuper_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetSuperBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetSuper_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetSuperBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetSuper_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="400" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="-1"  readonly="true" value="#{cadAssetSuperBean.asset_id}"  styleClass="tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_cfasttp" for="asset_tp_cfasttp"  value="#{iimsg.AssetSuper_asset_tp_cfasttp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_cfasttp" value="#{cadAssetSuperBean.asset_tp_cfasttp}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_tp_cfasttp','1','ASTTP',this.value);;" size="5" maxlength="3" tabindex="2" />
<h:commandButton id="asset_tp_cfasttp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ASTTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_cfasttp_vc" flagType="val" flag="#{cadAssetSuperBean.asset_tp_cfasttp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_cfasttp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_tp_cfasttp_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_cd_geourl" tabindex="3"  value="#{cadAssetSuperBean.asset_cd_geourl}"  cols="55" rows="3" styleClass="asset_cd_geourl_" onchange="bv('','asset_cd_geourl','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_geourl_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_geourl_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_cd_geourl_exp" tabindex="4"  value="#{cadAssetSuperBean.asset_cd_geourl_exp}"  cols="55" rows="3" styleClass="asset_cd_geourl_exp_" onchange="bv('','asset_cd_geourl_exp','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_geourl_exp_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_geourl_exp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetSuper_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetSuper_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_nu" tabindex="5"  value="#{cadAssetSuperBean.asset_nu}" size="32" maxlength="30"  styleClass="tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetSuperBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_hierarquico" for="asset_cd_hierarquico"  value="#{iimsg.AssetSuper_asset_cd_hierarquico_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="400"   >
<h:inputText id="asset_cd_hierarquico" tabindex="6"  onkeypress="vlfm999(this);"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetSuperBean.asset_cd_hierarquico}" size="6" maxlength="4"  styleClass="tbx" onchange="bv('','asset_cd_hierarquico','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cd_hierarquico_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_hierarquico_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetSuperBean.asset_cd_cfinvty}"/>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_operacional_cfoperc" for="asset_st_operacional_cfoperc"  value="#{iimsg.AssetSuper_asset_st_operacional_cfoperc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_operacional_cfoperc" value="#{cadAssetSuperBean.asset_st_operacional_cfoperc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_operacional_cfoperc','1','OPERC',this.value);;" size="5" maxlength="3" tabindex="7" />
<h:commandButton id="asset_st_operacional_cfoperc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'OPERC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_operacional_cfoperc_vc" flagType="val" flag="#{cadAssetSuperBean.asset_st_operacional_cfoperc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_operacional_cfoperc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_st_operacional_cfoperc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_operacional_veic" for="asset_st_operacional_veic"  value="#{iimsg.AssetSuper_asset_st_operacional_veic_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_operacional_veic" value="#{cadAssetSuperBean.asset_st_operacional_veic}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_operacional_veic','1','STOVC',this.value);;" size="5" maxlength="3" tabindex="8" />
<h:commandButton id="asset_st_operacional_veic_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'STOVC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_operacional_veic_vc" flagType="val" flag="#{cadAssetSuperBean.asset_st_operacional_veic_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_operacional_veic_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_st_operacional_veic_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ccusto" for="asset_cd_ccusto"  value="#{iimsg.AssetSuper_asset_cd_ccusto_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_cd_ccusto" tabindex="9"  onclick="clf(this);" value="#{cadAssetSuperBean.asset_cd_ccusto}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_cd_ccusto','Ixccust','ccust_cd','ccust_ds',this.value);" size="8" maxlength="6" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="asset_cd_ccusto_xsel" tabindex="-1" immediate="true" onmousedown="pw('ixccustpsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_ccusto_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_ccusto_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="asset_cd_ccusto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_cd_ccusto_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_ue" for="asset_cd_ue"  value="#{iimsg.AssetSuper_asset_cd_ue_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_ue" tabindex="10"  value="#{cadAssetSuperBean.asset_cd_ue}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_ue','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_ue_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_ue_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_pconta" for="asset_cd_pconta"  value="#{iimsg.AssetSuper_asset_cd_pconta_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_pconta" tabindex="11"  value="#{cadAssetSuperBean.asset_cd_pconta}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_pconta','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_pconta_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_pconta_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cls" for="asset_cd_cls"  value="#{iimsg.AssetSuper_asset_cd_cls_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_cls" tabindex="12"  value="#{cadAssetSuperBean.asset_cd_cls}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_cls','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_cls_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_cls_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_cfsitbm" for="asset_st_cfsitbm"  value="#{iimsg.AssetSuper_asset_st_cfsitbm_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_cfsitbm" value="#{cadAssetSuperBean.asset_st_cfsitbm}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_cfsitbm','1','SQSIT',this.value);;" size="119" maxlength="117" tabindex="13" />
<h:commandButton id="asset_st_cfsitbm_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SQSIT', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_cfsitbm_vc" flagType="val" flag="#{cadAssetSuperBean.asset_st_cfsitbm_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_cfsitbm_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_st_cfsitbm_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_vagao_cfwagtp" for="asset_tp_vagao_cfwagtp"  value="#{iimsg.AssetSuper_asset_tp_vagao_cfwagtp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_vagao_cfwagtp" value="#{cadAssetSuperBean.asset_tp_vagao_cfwagtp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_vagao_cfwagtp','1','WAGTP',this.value);;" size="5" maxlength="3" tabindex="14" />
<h:commandButton id="asset_tp_vagao_cfwagtp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'WAGTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_vagao_cfwagtp_vc" flagType="val" flag="#{cadAssetSuperBean.asset_tp_vagao_cfwagtp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_vagao_cfwagtp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_tp_vagao_cfwagtp_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_vagao_serie_cfwagse" for="asset_cd_vagao_serie_cfwagse"  value="#{iimsg.AssetSuper_asset_cd_vagao_serie_cfwagse_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_vagao_serie_cfwagse" value="#{cadAssetSuperBean.asset_cd_vagao_serie_cfwagse}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_vagao_serie_cfwagse','1','WAGSE',this.value);;" size="7" maxlength="5" tabindex="15" />
<h:commandButton id="asset_cd_vagao_serie_cfwagse_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'WAGSE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_vagao_serie_cfwagse_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_vagao_serie_cfwagse_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_vagao_serie_cfwagse_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_cd_vagao_serie_cfwagse_desc}" styleClass="txlr pr5 tb175r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_vagao" for="asset_nu_vagao"  value="#{iimsg.AssetSuper_asset_nu_vagao_tt}"/>  </td> <%-- <top> --%>
<%-- Number / Integer Fields  --%>
<td   width="700"  > <h:inputText id="asset_nu_vagao" tabindex="16"  value="#{cadAssetSuperBean.asset_nu_vagao}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_nu_vagao','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_nu_vagao_vc" flagType="val" flag="#{cadAssetSuperBean.asset_nu_vagao_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_vagao_placa" for="asset_nu_vagao_placa"  value="#{iimsg.AssetSuper_asset_nu_vagao_placa_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_vagao_placa" tabindex="17"  value="#{cadAssetSuperBean.asset_nu_vagao_placa}" size="9" maxlength="7"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_vagao_placa','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vagao_placa_vc" flagType="val" flag="#{cadAssetSuperBean.asset_nu_vagao_placa_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_vagao_fabr_cfwagmf" for="asset_cd_vagao_fabr_cfwagmf"  value="#{iimsg.AssetSuper_asset_cd_vagao_fabr_cfwagmf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_vagao_fabr_cfwagmf" value="#{cadAssetSuperBean.asset_cd_vagao_fabr_cfwagmf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_vagao_fabr_cfwagmf','1','WAGMF',this.value);;" size="5" maxlength="3" tabindex="18" />
<h:commandButton id="asset_cd_vagao_fabr_cfwagmf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'WAGMF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_vagao_fabr_cfwagmf_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_vagao_fabr_cfwagmf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_vagao_fabr_cfwagmf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_cd_vagao_fabr_cfwagmf_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_locom_cfengtp" for="asset_tp_locom_cfengtp"  value="#{iimsg.AssetSuper_asset_tp_locom_cfengtp_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_locom_cfengtp" value="#{cadAssetSuperBean.asset_tp_locom_cfengtp}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_locom_cfengtp','1','ENGTP',this.value);;" size="5" maxlength="3" tabindex="19" />
<h:commandButton id="asset_tp_locom_cfengtp_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ENGTP', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_locom_cfengtp_vc" flagType="val" flag="#{cadAssetSuperBean.asset_tp_locom_cfengtp_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_locom_cfengtp_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_tp_locom_cfengtp_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_locom_model_cfengmd" for="asset_cd_locom_model_cfengmd"  value="#{iimsg.AssetSuper_asset_cd_locom_model_cfengmd_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_locom_model_cfengmd" value="#{cadAssetSuperBean.asset_cd_locom_model_cfengmd}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_locom_model_cfengmd','1','ENGMD',this.value);;" size="5" maxlength="3" tabindex="20" />
<h:commandButton id="asset_cd_locom_model_cfengmd_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'ENGMD', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_locom_model_cfengmd_vc" flagType="val" flag="#{cadAssetSuperBean.asset_cd_locom_model_cfengmd_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_locom_model_cfengmd_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSuperBean.asset_cd_locom_model_cfengmd_desc}" styleClass="txlr pr5 tb230r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_locomotiva" for="asset_nu_locomotiva"  value="#{iimsg.AssetSuper_asset_nu_locomotiva_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_locomotiva" tabindex="21"  value="#{cadAssetSuperBean.asset_nu_locomotiva}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_locomotiva','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_locomotiva_vc" flagType="val" flag="#{cadAssetSuperBean.asset_nu_locomotiva_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</table> <%-- xxaa <last frame close> if no Frames--%>
