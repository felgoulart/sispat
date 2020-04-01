<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastif" rendered="#{cadAssetLbdldBean.canUpdate}" value="#{cadAssetLbdldBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<h:commandButton id="aMessageastif" image="../imagens/btMessage_off.gif" styleClass="btp" title="#{iimsg.botao_message}" rendered="#{cadAssetLbdldBean.canUpdate}" action="#{cadAssetLbdldBean.doValidate}" onmousedown="msgw('aMessageastif');"/>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetLbdldBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.AssetLbdld_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetLbdldBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_id" for="asset_id"  value="#{iimsg.AssetLbdld_asset_id_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_id" tabindex="-1"  readonly="true" value="#{cadAssetLbdldBean.asset_id}"  styleClass="txl pl5 tbxr" onkeydown="keypress=1;" size="20" maxlength="20" />
<%-- Avoid Fks that are recursive fks --%>
</td> <%-- <close td> ccc --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_infger_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetLbdld_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_nu" tabindex="2"  value="#{cadAssetLbdldBean.asset_nu}" size="32" maxlength="30"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_hierarquico" value="#{cadAssetLbdldBean.asset_cd_hierarquico}"/>
<%-- Hidden --%>
<h:inputHidden id="asset_cd_cfinvty" value="#{cadAssetLbdldBean.asset_cd_cfinvty}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="tts"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetLbdld_loca_zp_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc" for="asset_cd_cfreslc"  value="#{iimsg.AssetLbdld_asset_cd_cfreslc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc" value="#{cadAssetLbdldBean.asset_cd_cfreslc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="3" />
<h:commandButton id="asset_cd_cfreslc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfreslc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfreslc_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfreslc_prx" for="asset_cd_cfreslc_prx"  value="#{iimsg.AssetLbdld_asset_cd_cfreslc_prx_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfreslc_prx" value="#{cadAssetLbdldBean.asset_cd_cfreslc_prx}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfreslc_prx','1','RESLC',this.value);;" size="12" maxlength="10" tabindex="4" />
<h:commandButton id="asset_cd_cfreslc_prx_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESLC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfreslc_prx_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfreslc_prx_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfreslc_prx_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfreslc_prx_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_ini" for="asset_km_ini"  value="#{iimsg.AssetLbdld_asset_km_ini_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_ini" tabindex="5"  value="#{cadAssetLbdldBean.asset_km_ini_str}"  styleClass="txr pr5 tbx" size="9" maxlength="7" onchange="bv('','asset_km_ini','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_ini_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_ini_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_km_fim" for="asset_km_fim"  value="#{iimsg.AssetLbdld_asset_km_fim_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_km_fim" tabindex="6"  value="#{cadAssetLbdldBean.asset_km_fim_str}"  styleClass="txr pr5 tbx" size="12" maxlength="10" onchange="bv('','asset_km_fim','1',valDec(this.value));"/>
<ps:psGraphicImage id="asset_km_fim_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_km_fim_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_corredor" for="asset_cd_corredor"  value="#{iimsg.AssetLbdld_asset_cd_corredor_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_corredor" value="#{cadAssetLbdldBean.asset_cd_corredor}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_corredor','1','CDCRR',this.value);;" size="7" maxlength="5" tabindex="7" />
<h:commandButton id="asset_cd_corredor_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CDCRR', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_corredor_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_corredor_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_corredor_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_corredor_desc}" styleClass="txlr pr5 tb150r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_zona_cflczon" for="asset_cd_zona_cflczon"  value="#{iimsg.AssetLbdld_asset_cd_zona_cflczon_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_zona_cflczon" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_zona_cflczon','1','LOCZO',this.value);;" size="7" maxlength="5" tabindex="8" />
<h:commandButton id="asset_cd_zona_cflczon_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'LOCZO', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_zona_cflczon_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_zona_cflczon_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_zona_cflczon_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_zona_cflczon_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_vl_coords" for="asset_vl_coords"  value="#{iimsg.AssetLbdld_asset_vl_coords_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td  colspan ="4" width="200"   >
<h:inputText id="asset_vl_coords" tabindex="9"  value="#{cadAssetLbdldBean.asset_vl_coords}" size="24" maxlength="22"  styleClass="txl pl5 tbx" onchange="bv('','asset_vl_coords','1',this.value);"/>
<ps:psGraphicImage id="asset_vl_coords_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_vl_coords_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfresid" for="asset_cd_cfresid"  value="#{iimsg.AssetLbdld_asset_cd_cfresid_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_cfresid" value="#{cadAssetLbdldBean.asset_cd_cfresid}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_cfresid','1','RESID',this.value);;" size="7" maxlength="5" tabindex="10" />
<h:commandButton id="asset_cd_cfresid_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RESID', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfresid_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_cfresid_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_cfresid_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_cfresid_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_uf" for="asset_cd_uf"  value="#{iimsg.AssetLbdld_asset_cd_uf_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_cd_uf" value="#{cadAssetLbdldBean.asset_cd_uf}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_cd_uf','1','GUF',this.value);;" size="5" maxlength="3" tabindex="11" />
<h:commandButton id="asset_cd_uf_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GUF', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_uf_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_cd_uf_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_cd_uf_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetLbdldBean.asset_cd_uf_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_bairro" for="asset_nm_bairro"  value="#{iimsg.AssetLbdld_asset_nm_bairro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_bairro" tabindex="12"  value="#{cadAssetLbdldBean.asset_nm_bairro}" size="27" maxlength="25"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_bairro','1',this.value);"/>
<ps:psGraphicImage id="asset_nm_bairro_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_bairro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nm_logradouro" for="asset_nm_logradouro"  value="#{iimsg.AssetLbdld_asset_nm_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nm_logradouro" tabindex="13"  value="#{cadAssetLbdldBean.asset_nm_logradouro}" size="52" maxlength="50"  styleClass="txl pl5 tbx" onchange="bv('','asset_nm_logradouro','1',this.value);"/>
<ps:psGraphicImage id="asset_nm_logradouro_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nm_logradouro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu_logradouro" for="asset_nu_logradouro"  value="#{iimsg.AssetLbdld_asset_nu_logradouro_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu_logradouro" tabindex="14"  value="#{cadAssetLbdldBean.asset_nu_logradouro}" size="12" maxlength="10"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu_logradouro','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_logradouro_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_nu_logradouro_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_ds_compl" for="asset_ds_compl"  value="#{iimsg.AssetLbdld_asset_ds_compl_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_ds_compl" tabindex="15"  value="#{cadAssetLbdldBean.asset_ds_compl}" size="22" maxlength="20"  styleClass="txl pl5 tbx" onchange="bv('','asset_ds_compl','1',this.value);"/>
<ps:psGraphicImage id="asset_ds_compl_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_ds_compl_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_dt_vistoria" for="asset_dt_vistoria"  value="#{iimsg.AssetLbdld_asset_dt_vistoria_tt}"/>  </td> <%-- <top> --%>
<%-- selDate / Time --%>
<td colspan="4"  width="200"   >
<h:inputText id="asset_dt_vistoria_str" tabindex="16"  value="#{cadAssetLbdldBean.asset_dt_vistoria_str}"  styleClass="txl pl5 tbDt" size="10" maxlength="8" onkeydown="formataData('cadForm:asset_dt_vistoria_str', event);" onkeyup="SaltaCampo('cadForm:asset_dt_vistoria_str', 'cadForm:asset_tp_situacao', 8 , event);" onchange="validaDatas2(this);bv('','asset_dt_vistoria_str','1',this.value);"  />
<img src="../imagens/btCalendar.gif" onclick="mostraCalendario('cadForm:asset_dt_vistoria_str', 'asset_dt_vistoriaCal');" style="cursor: hand"/>
<ps:psGraphicImage id="asset_dt_vistoria_vc" flagType="val" flag="#{cadAssetLbdldBean.asset_dt_vistoria_vc}" styleClass="btp"/>
<div id="asset_dt_vistoriaCal" style="position: absolute; z-index: 1;">
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_tp_situacao" value="#{cadAssetLbdldBean.asset_tp_situacao}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table Ext>--%>
<td    width="400" class="tts"> <%-- pageOutputLabel --%>
<h:outputLabel  styleClass="tts"  value="#{iimsg.AssetLbdld_asset_im_tt_tt}"/>
<%-- prop buttonOpenChild --%>
<h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetlbdldcad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetLbdldBean.imag_im}"  onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
<%-- prop Dao Search Button with Parms  --%>
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionarFromMenu}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetlbdldcad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetLbdldBean.file_im}" title="#{iimsg.obdoc_TT}" onmouseup="this.form.target='_blank';" onblur="this.form.target='_self';"/>
</td>
</table >
<tr>  <%-- <tr open> open after toolbarUseExt --%>
<td  colspan ="4"   width="1900" > <%-- open w/ inputText 222aimg--%>
<%-- prop imageExpanded X --%>
<img src="" id="img_grande1" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande2" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
<img src="" id="img_grande3" height="null" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;" />
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
<script>
function mostraDados1( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande1").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande1").style.display = 'block';
}
}
function mostraDados2( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande2").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande2").style.display = 'block';
}
}
function mostraDados3( obimg_id, obimg_sq, obimg_ds, obimg_nm_file){
if (obimg_nm_file.length > 0) {
parm = "parm=" + obimg_id.substring(obimg_id.length - 5, obimg_id.length);
if (parm.indexOf("-") == 5) {} else {parm = parm.replace("m=","m=-");}
document.getElementById( "img_grande3").src = '<%= request.getContextPath()%>/servlet/ShowImageServlet.jpg?img='+ obimg_nm_file + parm +'&tipo=imagem';
document.getElementById( "img_grande3").style.display = 'block';
}
}
<c:if test="${ cadAssetLbdldBean.asset_id != null }">
mostraDados1('<c:out value="${  cadAssetLbdldBean.asset_id }" />','','','<c:out value="${  cadAssetLbdldBean.assetlbdld_nm_image1 }" />');
mostraDados2('<c:out value="${  cadAssetLbdldBean.asset_id }" />','','','<c:out value="${  cadAssetLbdldBean.assetlbdld_nm_image2 }" />');
mostraDados3('<c:out value="${  cadAssetLbdldBean.asset_id }" />','','','<c:out value="${  cadAssetLbdldBean.assetlbdld_nm_image3 }" />');
</c:if>
</script>
