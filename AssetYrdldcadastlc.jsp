<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="left" align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastlc" rendered="#{cadAssetYrdldBean.canUpdate}" value="#{cadAssetYrdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastlc" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetYrdldBean.canUpdate}" action="#{cadAssetYrdldBean.doValidate}" onmousedown="msgw('aMessageastlc');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id2" >
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id2" value="#{cadAssetYrdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetYrdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc2" value="#{cadAssetYrdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_uf" for="asset_cd_uf"  value="#{iimsg.AssetYrdld_asset_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_uf" value="#{cadAssetYrdldBean.asset_cd_uf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_uf','2','GUF',this.value);;" size="5" maxlength="3" tabindex="17" />
<h:commandButton id="asset_cd_uf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_uf_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_uf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_uf_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cep" for="asset_cd_cep"  value="#{iimsg.AssetYrdld_asset_cd_cep_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_cep" tabindex="18"  value="#{cadAssetYrdldBean.asset_cd_cep}" size="10" maxlength="8"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_cep','2',this.value);"/>
<ps:psGraphicImage id="asset_cd_cep_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_cep_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetYrdld_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfresid" value="#{cadAssetYrdldBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfresid','2','RESID',this.value);;" size="7" maxlength="5" tabindex="19" />
<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfresid_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_bairro" for="asset_nm_bairro"  value="#{iimsg.AssetYrdld_asset_nm_bairro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_bairro" tabindex="20"  value="#{cadAssetYrdldBean.asset_nm_bairro}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_bairro','2',this.value);"/>
<ps:psGraphicImage id="asset_nm_bairro_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nm_bairro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_tp_logradouro" for="asset_tp_logradouro"  value="#{iimsg.AssetYrdld_asset_tp_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_tp_logradouro" value="#{cadAssetYrdldBean.asset_tp_logradouro}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_tp_logradouro','2','TILOG',this.value);;" size="5" maxlength="3" tabindex="21" />
<h:commandButton id="asset_tp_logradouro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TILOG', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_tp_logradouro_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_tp_logradouro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_tp_logradouro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_tp_logradouro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_logradouro" for="asset_nm_logradouro"  value="#{iimsg.AssetYrdld_asset_nm_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_logradouro" tabindex="22"  value="#{cadAssetYrdldBean.asset_nm_logradouro}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_logradouro','2',this.value);"/>
<ps:psGraphicImage id="asset_nm_logradouro_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nm_logradouro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_logradouro" for="asset_nu_logradouro"  value="#{iimsg.AssetYrdld_asset_nu_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_logradouro" tabindex="23"  value="#{cadAssetYrdldBean.asset_nu_logradouro}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_logradouro','2',this.value);"/>
<ps:psGraphicImage id="asset_nu_logradouro_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nu_logradouro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetYrdld_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" value="#{cadAssetYrdldBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_zona_cflczon','2','LOCZO',this.value);;" size="7" maxlength="5" tabindex="24" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_compl" for="asset_ds_compl"  value="#{iimsg.AssetYrdld_asset_ds_compl_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_compl" tabindex="25"  value="#{cadAssetYrdldBean.asset_ds_compl}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="clFields(1);bv('','asset_ds_compl','2',this.value);"/>
<ps:psGraphicImage id="asset_ds_compl_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_compl_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_ds_compl_nap" for="asset_ds_compl_nap"  value="#{iimsg.AssetYrdld_asset_ds_compl_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_ds_compl_nap" value="#{cadAssetYrdldBean.asset_ds_compl_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(2);bdcd('','asset_ds_compl_nap','2','TPNPI',this.value);;" size="14" maxlength="12" tabindex="26" />
<h:commandButton id="asset_ds_compl_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_ds_compl_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_ds_compl_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_ds_compl_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_ds_compl_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_loca_rw_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_patio_ferrv" for="asset_nm_patio_ferrv"  value="#{iimsg.AssetYrdld_asset_nm_patio_ferrv_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_patio_ferrv" tabindex="27"  value="#{cadAssetYrdldBean.asset_nm_patio_ferrv}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="clFields(3);bv('','asset_nm_patio_ferrv','2',this.value);"/>
<ps:psGraphicImage id="asset_nm_patio_ferrv_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nm_patio_ferrv_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tipb txl pl0"  id="lbl_asset_nm_patio_ferrv_nap" for="asset_nm_patio_ferrv_nap"  value="#{iimsg.AssetYrdld_asset_nm_patio_ferrv_nap_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_nm_patio_ferrv_nap" value="#{cadAssetYrdldBean.asset_nm_patio_ferrv_nap}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="clFields(4);cleSubSel_uv('asset_nm_patio_ferrv');bdcd('','asset_nm_patio_ferrv_nap','2','TPNPI',this.value);;" size="14" maxlength="12" tabindex="28" />
<h:commandButton id="asset_nm_patio_ferrv_nap_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPNPI', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_nm_patio_ferrv_nap_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_nm_patio_ferrv_nap_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_nm_patio_ferrv_nap_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_nm_patio_ferrv_nap_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_trecho" for="asset_cd_trecho"  value="#{iimsg.AssetYrdld_asset_cd_trecho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_trecho" value="#{cadAssetYrdldBean.asset_cd_trecho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_trecho','2','TRCHO',this.value);;" size="7" maxlength="5" tabindex="29" />
<h:commandButton id="asset_cd_trecho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TRCHO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_trecho_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_trecho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_trecho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_trecho_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_subtrecho" for="asset_cd_subtrecho"  value="#{iimsg.AssetYrdld_asset_cd_subtrecho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputText  id="asset_cd_subtrecho" onclick="clf(this);" value="#{cadAssetYrdldBean.asset_cd_subtrecho}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcdsp('','asset_cd_subtrecho','asset_cd_trecho','TRCHO','2','SBTCH',this.value);;" size="7" maxlength="5" tabindex="30" />
<h:commandButton id="asset_cd_subtrecho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SBTCH', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_subtrecho_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_subtrecho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_subtrecho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_subtrecho_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetYrdld_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetYrdldBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc','2','RESLC',this.value);;" size="12" maxlength="10" tabindex="31" />
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc_prx" for="asset_cd_cfreslc_prx"  value="#{iimsg.AssetYrdld_asset_cd_cfreslc_prx_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc_prx" value="#{cadAssetYrdldBean.asset_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc_prx','2','RESLC',this.value);;" size="12" maxlength="10" tabindex="32" />
<h:commandButton id="asset_cd_cfreslc_prx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_prx_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_cd_cfreslc_prx_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_prx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetYrdldBean.asset_cd_cfreslc_prx_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetYrdld_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_ini" tabindex="33"  value="#{cadAssetYrdldBean.asset_km_ini_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_km_ini','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_ini_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_km_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetYrdld_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="34"  value="#{cadAssetYrdldBean.asset_km_fim_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_km_fim','2',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_fim_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_km_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_ltde" for="asset_vl_ltde"  value="#{iimsg.AssetYrdld_asset_vl_ltde_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_ltde" tabindex="35"  value="#{cadAssetYrdldBean.asset_vl_ltde}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_ltde','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_ltde_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_vl_ltde_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_lgtd" for="asset_vl_lgtd"  value="#{iimsg.AssetYrdld_asset_vl_lgtd_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_vl_lgtd" tabindex="36"  value="#{cadAssetYrdldBean.asset_vl_lgtd}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_lgtd','2',this.value);"/>
<ps:psGraphicImage id="asset_vl_lgtd_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_vl_lgtd_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetYrdld_serv_tt_adj_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_residencial_cfgenyn" for="asset_in_residencial_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_residencial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_residencial_cfgenyn_bol" value="#{cadAssetYrdldBean.asset_in_residencial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_residencial_cfgenyn" tabindex="37"  value="#{cadAssetYrdldBean.asset_in_residencial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_residencial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_residencial_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_residencial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_comercial_cfgenyn" for="asset_in_comercial_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_comercial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_comercial_cfgenyn_bol" value="#{cadAssetYrdldBean.asset_in_comercial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_comercial_cfgenyn" tabindex="38"  value="#{cadAssetYrdldBean.asset_in_comercial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_comercial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_comercial_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_comercial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_industrial_cfgenyn" for="asset_in_industrial_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_industrial_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_industrial_cfgenyn_bol" value="#{cadAssetYrdldBean.asset_in_industrial_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_industrial_cfgenyn" tabindex="39"  value="#{cadAssetYrdldBean.asset_in_industrial_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_industrial_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_industrial_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_industrial_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_favela_cfgenyn" for="asset_in_favela_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_favela_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_favela_cfgenyn_bol" value="#{cadAssetYrdldBean.asset_in_favela_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_favela_cfgenyn" tabindex="40"  value="#{cadAssetYrdldBean.asset_in_favela_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_favela_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_favela_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_favela_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_fazenda_cfgenyn" for="asset_in_fazenda_cfgenyn"  value="#{iimsg.AssetYrdld_asset_in_fazenda_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_fazenda_cfgenyn_bol" value="#{cadAssetYrdldBean.asset_in_fazenda_cfgenyn}"/>
<h:selectBooleanCheckbox id="asset_in_fazenda_cfgenyn" tabindex="41"  value="#{cadAssetYrdldBean.asset_in_fazenda_cfgenyn_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_fazenda_cfgenyn_bol');"/>
<ps:psGraphicImage id="asset_in_fazenda_cfgenyn_vc" flagType="val" flag="#{cadAssetYrdldBean.asset_in_fazenda_cfgenyn_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
