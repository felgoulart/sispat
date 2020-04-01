<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>
<td   colspan="2"  align="center" >
<%-- // Property Title Unfolding contentGen --%>
<h:inputText id="mesg_varastsv" rendered="#{cadAssetSupersvBean.canUpdate}" value="#{cadAssetSupersvBean.mesg_var}"  styleClass="txrr pr5 tb450r" tabindex="-1" readonly="true"/>
<ps:psCommandLink id="aMessageastsv" rendered="#{cadAssetSupersvBean.canUpdate}" action="#{cadAssetSupersvBean.doValidate}" onmousedown="msgw('aMessageastsv');">
<ps:psGraphicImage id="iMessageastsv" url="../imagens/btMessage_off.gif" styleClass="btp" alt="#{iimsg.botao_message}"/>
</ps:psCommandLink>
</td> <%-- <close td> aaa --%>
</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>
<tr>  <td  width="200" class="tip" >
<h:outputLabel for="asset_id8" >
<h:outputText styleClass="tip" value="#{iimsg.AssetSupersv_asset_id_tt}"/>
</h:outputLabel> </td>
<td>
<h:outputText id="asset_id8" value="#{cadAssetSupersvBean.asset_id}"  styleClass="tip" />
&nbsp&nbsp
<h:outputText styleClass="tip" value="#{iimsg.Asset_asset_nu_tt}"/>
<h:outputText id="asset_id_dsc8" value="#{cadAssetSupersvBean.asset_nu}" styleClass="tip"/>
</td> </tr>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_cond_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_cong_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_box_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_estrutura_cx_cfconvt" for="asset_in_estrutura_cx_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_estrutura_cx_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_estrutura_cx_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_estrutura_cx_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_estrutura_cx_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="229" />
<h:commandButton id="asset_in_estrutura_cx_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_estrutura_cx_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_estrutura_cx_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_estrutura_cx_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_estrutura_cx_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_portas_cfconvt" for="asset_in_portas_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_portas_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_portas_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_portas_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_portas_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="230" />
<h:commandButton id="asset_in_portas_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_portas_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_portas_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_portas_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_portas_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_sbplt_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_reserv_ar_cfconvt" for="asset_in_reserv_ar_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_reserv_ar_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_reserv_ar_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_reserv_ar_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_reserv_ar_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="231" />
<h:commandButton id="asset_in_reserv_ar_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_reserv_ar_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_reserv_ar_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_reserv_ar_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_reserv_ar_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_sist_freio_cfconvt" for="asset_in_sist_freio_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_sist_freio_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_sist_freio_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_sist_freio_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_sist_freio_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="232" />
<h:commandButton id="asset_in_sist_freio_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_sist_freio_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_sist_freio_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_sist_freio_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_sist_freio_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_truqe_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_rodeiros_cfconvt" for="asset_in_rodeiros_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_rodeiros_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_rodeiros_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_rodeiros_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_rodeiros_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="233" />
<h:commandButton id="asset_in_rodeiros_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_rodeiros_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_rodeiros_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_rodeiros_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_rodeiros_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%" style="border:solid 1px slategray;" bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<td align="left"  colspan ="4"   class="tts"> <%-- tittle underlined bbx --%>
<h:outputText value="#{iimsg.AssetSupersv_boxin_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_motor_diesel_cfconvt" for="asset_in_motor_diesel_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_motor_diesel_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_motor_diesel_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_motor_diesel_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_motor_diesel_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="234" />
<h:commandButton id="asset_in_motor_diesel_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_motor_diesel_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_motor_diesel_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_motor_diesel_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_motor_diesel_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_blower_cfconvt" for="asset_in_blower_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_blower_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_blower_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_blower_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_blower_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="235" />
<h:commandButton id="asset_in_blower_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_blower_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_blower_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_blower_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_blower_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gerador_cfgenyn" for="asset_in_gerador_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_gerador_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gerador_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_gerador_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_gerador_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="236" />
<h:commandButton id="asset_in_gerador_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gerador_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_gerador_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gerador_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_gerador_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_resev_agua_cfconvt" for="asset_in_resev_agua_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_resev_agua_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_resev_agua_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_resev_agua_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_resev_agua_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="237" />
<h:commandButton id="asset_in_resev_agua_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_resev_agua_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_resev_agua_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_resev_agua_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_resev_agua_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cx_mult_vel_cfconvt" for="asset_in_cx_mult_vel_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_cx_mult_vel_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cx_mult_vel_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cx_mult_vel_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cx_mult_vel_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="238" />
<h:commandButton id="asset_in_cx_mult_vel_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cx_mult_vel_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cx_mult_vel_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cx_mult_vel_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cx_mult_vel_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_radiador_cfconvt" for="asset_in_radiador_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_radiador_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_radiador_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_radiador_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_radiador_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="239" />
<h:commandButton id="asset_in_radiador_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_radiador_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_radiador_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_radiador_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_radiador_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_truque_cfconvt" for="asset_in_truque_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_truque_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_truque_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_truque_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_truque_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="240" />
<h:commandButton id="asset_in_truque_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_truque_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_truque_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_truque_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_truque_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_bateria_cfconvt" for="asset_in_bateria_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_bateria_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_bateria_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_bateria_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_bateria_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="241" />
<h:commandButton id="asset_in_bateria_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_bateria_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_bateria_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_bateria_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_bateria_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_console_comd_cfconvt" for="asset_in_console_comd_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_console_comd_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_console_comd_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_console_comd_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_console_comd_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="242" />
<h:commandButton id="asset_in_console_comd_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_console_comd_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_console_comd_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_console_comd_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_console_comd_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_painel_cfconvt" for="asset_in_painel_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_painel_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_painel_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_painel_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_painel_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="243" />
<h:commandButton id="asset_in_painel_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_painel_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_painel_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_painel_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_painel_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_motor_bombcb_cfconvt" for="asset_in_motor_bombcb_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_motor_bombcb_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_motor_bombcb_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_motor_bombcb_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_motor_bombcb_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="244" />
<h:commandButton id="asset_in_motor_bombcb_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_motor_bombcb_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_motor_bombcb_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_motor_bombcb_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_motor_bombcb_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_reg_carga_cfconvt" for="asset_in_reg_carga_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_reg_carga_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_reg_carga_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_reg_carga_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_reg_carga_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="245" />
<h:commandButton id="asset_in_reg_carga_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_reg_carga_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_reg_carga_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_reg_carga_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_reg_carga_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gerador_aux_cfconvt" for="asset_in_gerador_aux_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_gerador_aux_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gerador_aux_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_gerador_aux_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_gerador_aux_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="246" />
<h:commandButton id="asset_in_gerador_aux_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gerador_aux_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_gerador_aux_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gerador_aux_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_gerador_aux_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_gerador_prc_cfconvt" for="asset_in_gerador_prc_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_gerador_prc_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_gerador_prc_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_gerador_prc_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_gerador_prc_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="247" />
<h:commandButton id="asset_in_gerador_prc_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_gerador_prc_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_gerador_prc_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_gerador_prc_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_gerador_prc_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_motor_tracao_cfconvt" for="asset_in_motor_tracao_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_motor_tracao_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_motor_tracao_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_motor_tracao_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_motor_tracao_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="248" />
<h:commandButton id="asset_in_motor_tracao_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_motor_tracao_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_motor_tracao_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_motor_tracao_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_motor_tracao_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_vent_din_cfconvt" for="asset_in_vent_din_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_vent_din_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_vent_din_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_vent_din_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_vent_din_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="249" />
<h:commandButton id="asset_in_vent_din_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_vent_din_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_vent_din_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_vent_din_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_vent_din_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_freio_equip_cfconvt" for="asset_in_freio_equip_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_freio_equip_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_freio_equip_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_freio_equip_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_freio_equip_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="250" />
<h:commandButton id="asset_in_freio_equip_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_freio_equip_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_freio_equip_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_freio_equip_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_freio_equip_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_freio_console_cfconvt" for="asset_in_freio_console_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_freio_console_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_freio_console_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_freio_console_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_freio_console_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="251" />
<h:commandButton id="asset_in_freio_console_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_freio_console_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_freio_console_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_freio_console_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_freio_console_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_compressor_cfconvt" for="asset_in_compressor_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_compressor_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_compressor_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_compressor_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_compressor_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="252" />
<h:commandButton id="asset_in_compressor_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_compressor_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_compressor_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_compressor_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_compressor_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esc_portas_cfconvt" for="asset_in_esc_portas_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_esc_portas_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_esc_portas_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_esc_portas_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_esc_portas_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="253" />
<h:commandButton id="asset_in_esc_portas_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_esc_portas_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_esc_portas_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_esc_portas_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_esc_portas_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_engates_cfconvt" for="asset_in_engates_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_engates_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_engates_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_engates_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_engates_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="254" />
<h:commandButton id="asset_in_engates_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_engates_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_engates_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_engates_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_engates_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_vvl_freio_cfconvt" for="asset_in_vvl_freio_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_vvl_freio_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_vvl_freio_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_vvl_freio_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_vvl_freio_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="255" />
<h:commandButton id="asset_in_vvl_freio_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_vvl_freio_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_vvl_freio_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_vvl_freio_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_vvl_freio_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_estr_truque_cfconvt" for="asset_in_estr_truque_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_estr_truque_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_estr_truque_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_estr_truque_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_estr_truque_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="256" />
<h:commandButton id="asset_in_estr_truque_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_estr_truque_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_estr_truque_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_estr_truque_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_estr_truque_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_tim_freio_cfconvt" for="asset_in_tim_freio_cfconvt"  value="#{iimsg.AssetSupersv_asset_in_tim_freio_cfconvt_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_tim_freio_cfconvt" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_tim_freio_cfconvt}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_tim_freio_cfconvt','8','GENST',this.value);;" size="5" maxlength="3" tabindex="257" />
<h:commandButton id="asset_in_tim_freio_cfconvt_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_tim_freio_cfconvt_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_tim_freio_cfconvt_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_tim_freio_cfconvt_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_tim_freio_cfconvt_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_fuel_tank_cfgenyn" for="asset_in_fuel_tank_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_fuel_tank_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_fuel_tank_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_fuel_tank_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_fuel_tank_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="258" />
<h:commandButton id="asset_in_fuel_tank_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_fuel_tank_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_fuel_tank_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_fuel_tank_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_fuel_tank_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_estrutura_trq_cfgenyn" for="asset_in_estrutura_trq_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_estrutura_trq_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_estrutura_trq_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_estrutura_trq_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_estrutura_trq_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="259" />
<h:commandButton id="asset_in_estrutura_trq_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_estrutura_trq_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_estrutura_trq_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_estrutura_trq_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_estrutura_trq_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_motor_cfgenyn" for="asset_in_motor_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_motor_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_motor_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_motor_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_motor_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="260" />
<h:commandButton id="asset_in_motor_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_motor_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_motor_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_motor_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_motor_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cx_bateria_cfgenyn" for="asset_in_cx_bateria_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_cx_bateria_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cx_bateria_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cx_bateria_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cx_bateria_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="261" />
<h:commandButton id="asset_in_cx_bateria_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cx_bateria_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cx_bateria_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cx_bateria_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cx_bateria_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_janelas_cfgenyn" for="asset_in_janelas_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_janelas_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_janelas_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_janelas_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_janelas_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="262" />
<h:commandButton id="asset_in_janelas_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_janelas_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_janelas_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_janelas_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_janelas_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_cabines_cfgenyn" for="asset_in_cabines_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_cabines_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_cabines_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_cabines_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_cabines_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="263" />
<h:commandButton id="asset_in_cabines_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_cabines_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_cabines_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_cabines_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_cabines_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_equips_cfgenyn" for="asset_in_equips_cfgenyn"  value="#{iimsg.AssetSupersv_asset_in_equips_cfgenyn_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_in_equips_cfgenyn" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_in_equips_cfgenyn}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_in_equips_cfgenyn','8','GENST',this.value);;" size="5" maxlength="3" tabindex="264" />
<h:commandButton id="asset_in_equips_cfgenyn_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'GENST', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_in_equips_cfgenyn_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_equips_cfgenyn_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_in_equips_cfgenyn_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_in_equips_cfgenyn_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_in_esconsidade" for="asset_in_esconsidade"  value="#{iimsg.AssetSupersv_asset_in_esconsidade_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<h:inputHidden id="asset_in_esconsidade_bol" value="#{cadAssetSupersvBean.asset_in_esconsidade}"/>
<h:selectBooleanCheckbox id="asset_in_esconsidade" tabindex="265"  value="#{cadAssetSupersvBean.asset_in_esconsidade_bol}" onclick="chkBoolean(this, 'cadForm:asset_in_esconsidade_bol');"/>
<ps:psGraphicImage id="asset_in_esconsidade_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_in_esconsidade_vc}" styleClass="btp"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_trilho" for="asset_st_trilho"  value="#{iimsg.AssetSupersv_asset_st_trilho_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_trilho" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_trilho}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_trilho','8','CONVE',this.value);;" size="5" maxlength="3" tabindex="266" />
<h:commandButton id="asset_st_trilho_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_trilho_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_trilho_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_trilho_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_trilho_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_dormente" for="asset_st_dormente"  value="#{iimsg.AssetSupersv_asset_st_dormente_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_dormente" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_dormente}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_dormente','8','CONVE',this.value);;" size="5" maxlength="3" tabindex="267" />
<h:commandButton id="asset_st_dormente_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_dormente_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_dormente_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_dormente_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_dormente_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="140" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="tip txl pl0"  id="lbl_asset_st_lastro" for="asset_st_lastro"  value="#{iimsg.AssetSupersv_asset_st_lastro_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="400"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
<h:inputText  id="asset_st_lastro" onclick="clf(this);" value="#{cadAssetSupersvBean.asset_st_lastro}" onkeydown="keypress=1;"  styleClass="tbx" onchange="bdcd('','asset_st_lastro','8','CONVE',this.value);;" size="5" maxlength="3" tabindex="268" />
<h:commandButton id="asset_st_lastro_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" image="../imagens/btPesquisar.gif"/>
<ps:psGraphicImage id="asset_st_lastro_vc" flagType="val" flag="#{cadAssetSupersvBean.asset_st_lastro_vc}" styleClass="btp"/>
<%-- Processing Codf 1 AAA --%>
<h:inputText id="asset_st_lastro_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetSupersvBean.asset_st_lastro_desc}" styleClass="txlr pr5 tb100r"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- xx <last frame close> if no Frames--%>
