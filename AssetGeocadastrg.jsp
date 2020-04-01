<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastrg" rendered="#{cadAssetGeoBean.canUpdate}" value="#{cadAssetGeoBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastrg" rendered="#{cadAssetGeoBean.canUpdate}" action="#{cadAssetGeoBean.doValidate}" onmousedown="msgw('aMessageastrg');">
<ps:psGraphicImage id="iMessageastrg" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
&nbsp&nbsp
<ps:psCommandLink id="aUpdateastrg" styleClass="btp" enabled="#{cadAssetGeoBean.canac_astrg}" ativo="../imagens/btSave.gif"  disabled="" onmousedown="if(abatp=='m'){ufmsg1();return;};if(keypress==1){ufmsg2();return;};document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'assetgeocad'+'&ufmv='+stx;msgwr();upflag=0;AlternarTabsvf();" title="#{iimsg.botao_update}" action="#{cadAssetGeoBean.doUpdate}">
<f:param name="cadbeanx" value="cadAssetGeoBean"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id1" >
<h:outputText styleClass="tip" value="#{iimsg.AssetGeo_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id1" value="#{cadAssetGeoBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc1" value="#{cadAssetGeoBean.asset_nu}" styleClass="tip"/>
</td> </tr>
</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<%-- Hidden --%>
<h:inputHidden id="asset_id" value="#{cadAssetGeoBean.asset_id}"/>
<%-- Hidden --%>
<h:inputHidden id="asset_tp_cfasttp" value="#{cadAssetGeoBean.asset_tp_cfasttp}"/>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetGeo_regis_id_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_nu" for="asset_nu"  value="#{iimsg.AssetGeo_asset_nu_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_nu" tabindex="8"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetGeoBean.asset_nu}" size="14" maxlength="12"  styleClass="txl pl5 tbx" onchange="bv('','asset_nu','1',this.value);"/>
<ps:psGraphicImage id="asset_nu_vc" flagType="val" flag="#{cadAssetGeoBean.asset_nu_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_hierarquico" for="asset_cd_hierarquico"  value="#{iimsg.AssetGeo_asset_cd_hierarquico_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_cd_hierarquico" tabindex="9"  onkeypress="vlfm999(this);"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetGeoBean.asset_cd_hierarquico}" size="6" maxlength="4"  styleClass="txl pl5 tbx" onchange="bv('','asset_cd_hierarquico','1',valNum(this.value));"/>
<ps:psGraphicImage id="asset_cd_hierarquico_vc" flagType="val" flag="#{cadAssetGeoBean.asset_cd_hierarquico_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_cd_cfinvty" for="asset_cd_cfinvty"  value="#{iimsg.AssetGeo_asset_cd_cfinvty_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Pk dddd --%>
<td  width="700" >
<%-- Processing Fk --%>
<%-- Processing Fk 333--%>
<h:inputText id="asset_cd_cfinvty" tabindex="10"  onclick="if (retSubSel('asset_id') != '') {this.blur();alert('Campo não modificavel')}; " value="#{cadAssetGeoBean.asset_cd_cfinvty}"  styleClass="txl pl5 tbx" onkeydown="keypress=1;" onchange="Transfk('','','1','asset_cd_cfinvty','Invty','invty_cd','invty_nm',this.value);" size="6" maxlength="4" />
<%-- Avoid Fks that are recursive fks --%>
<%-- prop BBB --%>
<%-- ak/fk --%>
<h:commandButton id="asset_cd_cfinvty_xsel" tabindex="-1" immediate="true" onmousedown="pw('invtypsq', tran, this.id, 'no');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_cd_cfinvty_vc" flagType="val" flag="#{cadAssetGeoBean.asset_cd_cfinvty_vc}" styleClass="btp"/>
<%-- ak/fk else akhidden --%>
<h:inputText id="asset_cd_cfinvty_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetGeoBean.asset_cd_cfinvty_desc}" styleClass="txlr pr5 tb200r"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_operacional_cfoperc" for="asset_st_operacional_cfoperc"  value="#{iimsg.AssetGeo_asset_st_operacional_cfoperc_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_operacional_cfoperc" onclick="clf(this);" value="#{cadAssetGeoBean.asset_st_operacional_cfoperc}" onkeydown="keypress=1;"  styleClass="txl pl5 tbx" onchange="bdcd('','asset_st_operacional_cfoperc','1','OPERC',this.value);;" size="5" maxlength="3" tabindex="11" />
<h:commandButton id="asset_st_operacional_cfoperc_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'OPERC', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_operacional_cfoperc_vc" flagType="val" flag="#{cadAssetGeoBean.asset_st_operacional_cfoperc_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_operacional_cfoperc_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetGeoBean.asset_st_operacional_cfoperc_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- pageBlankRow --%>
<td colspan ="4" ><br/></td>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetGeo_gmap_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td  colspan ="2" width="900" class="tip txl pl0"> <%-- pageOutputLabel --%>
<h:outputLabel   value="#{iimsg.AssetGeo_asset_tt1_tt}"/>
</td> <%-- <close td> ccc --%>
<td  colspan ="2" width="1000" class="tip txl pl0"> <%-- pageOutputLabel --%>
<h:outputLabel   value="#{iimsg.AssetGeo_asset_tt2_tt}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_cd_geourl" tabindex="12"  value="#{cadAssetGeoBean.asset_cd_geourl}" cols="55" rows="3" styleClass="asset_cd_geourl_" onchange="bv('','asset_cd_geourl','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_geourl_vc" flagType="val" flag="#{cadAssetGeoBean.asset_cd_geourl_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
<%-- inputTextArea --%>
<td   colspan="2" >  <h:inputTextarea id="asset_cd_geourl_exp" tabindex="13"  value="#{cadAssetGeoBean.asset_cd_geourl_exp}" cols="55" rows="3" styleClass="asset_cd_geourl_exp_" onchange="bv('','asset_cd_geourl_exp','1',this.value);"/>
<ps:psGraphicImage id="asset_cd_geourl_exp_vc" flagType="val" flag="#{cadAssetGeoBean.asset_cd_geourl_exp_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="2"   width="200" > <%-- open w/ inputText 222a--%>
<iframe width="426" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="googlemaps.jsp?tipo=assetgeocad"></iframe><br />
<h:outputLink id="asset_ds_googlemap" value="#{cadAssetGeoBean.asset_cd_geourl_exp}"   >
<h:outputText value="#{iimsg.label_googleMapExpanded}"/>
</h:outputLink>
</td> <%-- <close td> ccc --%>
<td    colspan ="2"   width="300" > <%-- open w/ inputText 222a--%>
<h:outputLink id="asset_cd_geolink" value="https://maps.google.com/"   >
<h:outputText value="#{iimsg.AssetGeo_asset_cd_geolink_tt}"/>
</h:outputLink>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetGeo_imags_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="200" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_imags" for="asset_imags"  value="#{iimsg.AssetGeo_asset_imags_tt}"/>  </td> <%-- <top> --%>
<td width="0"  >
<%-- prop buttonOpenChild --%>
<td   > <h:commandButton id="obimg" tabindex="-1" immediate="true" action="#{cadObimgBean.doObternull}" onmousedown="wtran='obimgcad';el('hiddenform').target=tran;valor1=el('cadForm:asset_id').value;msgwr();el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=assetgeocad&tipo='+wtran+'&valor='+valor1;"  image="#{cadAssetGeoBean.imag_im}" />
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_docs" for="asset_docs"  value="#{iimsg.AssetGeo_asset_docs_tt}"/>  </td> <%-- <top> --%>
<%-- prop Dao Search Button with Parms  --%>
<%-- nowrap 5676button --%>
<td   width="700"   >
<%-- xx --%> <h:commandButton id="asset_docs_xsel" immediate="true" action="#{cadObdocBean.doSelecionar}" onmousedown="msgwr();el('fiiSaveFieldx').src='iiSaveFieldx.jsp?tbak=assetgeocad&campo=campo1&valor='+el('cadForm:asset_id').value;"  image="#{cadAssetGeoBean.file_im}"title="#{iimsg.obdoc_TT}"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
