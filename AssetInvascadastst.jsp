<table>  <%-- Stub Tab if no Frames --%>
<tr>  <%-- <tr open> aaa --%>
<%-- CRUD Stubbed Form Std Message --%>

</tr> <%-- <tr close aaa> --%>
<%-- prop parentKey - contentGen UV --%>

</table> <%-- <last frame close> if no Frames--%>
<table      >  <%-- <explicit frame open> --%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_invasao_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_invasao" for="asset_tp_invasao"  value="#{iimsg.AssetInvas_asset_tp_invasao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_invasao" value="#{cadAssetInvasBean.asset_tp_invasao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_invasao','2','TPIVS',this.value);;" size="5" maxlength="3" tabindex="21" />
		</div>
<h:commandButton id="asset_tp_invasao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPIVS', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_tp_invasao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_invasao_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_edificacao" for="asset_tp_edificacao"  value="#{iimsg.AssetInvas_asset_tp_edificacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_edificacao" value="#{cadAssetInvasBean.asset_tp_edificacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_edificacao','2','TPEDF',this.value);;" size="7" maxlength="5" tabindex="22" />
		</div>
<h:commandButton id="asset_tp_edificacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPEDF', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_tp_edificacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_edificacao_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_aa_construcao" for="asset_aa_construcao"  value="#{iimsg.AssetInvas_asset_aa_construcao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_aa_construcao" tabindex="23"  value="#{cadAssetInvasBean.asset_aa_construcao}" size="6" maxlength="4"  styleClass="form-control form-control-sm" onchange="bv('','asset_aa_construcao','2',this.value);"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_cl_dist_boleto" for="asset_cl_dist_boleto"  value="#{iimsg.AssetInvas_asset_cl_dist_boleto_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_cl_dist_boleto" tabindex="24"  value="#{cadAssetInvasBean.asset_cl_dist_boleto_str}"  styleClass="form-control form-control-sm" size="9" maxlength="7" onchange="bv('','asset_cl_dist_boleto','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_total" for="asset_ar_total"  value="#{iimsg.AssetInvas_asset_ar_total_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_total" tabindex="25"  value="#{cadAssetInvasBean.asset_ar_total_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_total','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_pz_ocupacao" for="asset_pz_ocupacao"  value="#{iimsg.AssetInvas_asset_pz_ocupacao_tt}"/>  </td> <%-- <top> --%>
<%-- inputText --%>
<%-- nowrap 5676 --%>
<td   width="700"   >
<h:inputText id="asset_pz_ocupacao" tabindex="26"  value="#{cadAssetInvasBean.asset_pz_ocupacao}" size="22" maxlength="20"  styleClass="form-control form-control-sm" onchange="bv('','asset_pz_ocupacao','2',this.value);"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_edif_ferrov" for="asset_ar_edif_ferrov"  value="#{iimsg.AssetInvas_asset_ar_edif_ferrov_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_edif_ferrov" tabindex="27"  value="#{cadAssetInvasBean.asset_ar_edif_ferrov_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_edif_ferrov','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_ar_nao_edif" for="asset_ar_nao_edif"  value="#{iimsg.AssetInvas_asset_ar_nao_edif_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_ar_nao_edif" tabindex="28"  value="#{cadAssetInvasBean.asset_ar_nao_edif_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_ar_nao_edif','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_comprimento" for="asset_vl_comprimento"  value="#{iimsg.AssetInvas_asset_vl_comprimento_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_comprimento" tabindex="29"  value="#{cadAssetInvasBean.asset_vl_comprimento_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_vl_comprimento','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_vl_largura" for="asset_vl_largura"  value="#{iimsg.AssetInvas_asset_vl_largura_tt}"/>  </td> <%-- <top> --%>
<%-- BigDecimal Fields --%>
<td   width="700" class="pr5"> <h:inputText id="asset_vl_largura" tabindex="30"  value="#{cadAssetInvasBean.asset_vl_largura_str}"  styleClass="form-control form-control-sm" size="16" maxlength="14" onchange="bv('','asset_vl_largura','2',valDec(this.value));"/>

</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_in_edificacao_unica" for="asset_in_edificacao_unica"  value="#{iimsg.AssetInvas_asset_in_edificacao_unica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td  colspan ="4" width="300"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_in_edificacao_unica" value="#{cadAssetInvasBean.asset_in_edificacao_unica}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_in_edificacao_unica','2','SNNPI',this.value);;" size="5" maxlength="3" tabindex="31" />
		</div>
<h:commandButton id="asset_in_edificacao_unica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNPI', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_in_edificacao_unica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_in_edificacao_unica_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td    colspan ="4"   width="100%" > <%-- open w/ inputText 222a--%>
<table width="100%"  bgcolor="D4DDE6" >  <%-- <open a Toolbar Table>--%>
<tr>
<td align="left"  colspan ="4" width="0%"  class="ttsmod"> <%-- tittle underlined --%>
<h:outputText value="#{iimsg.AssetInvas_carcons_tt_tt}"/>
</td>
</td>  <%-- <close a Toolbar /td--%>
</tr>
</table >
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetInvas_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_estrutura" value="#{cadAssetInvasBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_estrutura','2','TIPES',this.value);;" size="5" maxlength="3" tabindex="32" />
		</div>
<h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_estrutura_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_st_conservacao" for="asset_st_conservacao"  value="#{iimsg.AssetInvas_asset_st_conservacao_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_st_conservacao" value="#{cadAssetInvasBean.asset_st_conservacao}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_conservacao','2','CONVE',this.value);;" size="5" maxlength="3" tabindex="33" />
		</div>
<h:commandButton id="asset_st_conservacao_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONVE', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_st_conservacao_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_st_conservacao_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_revest_int_parede" for="asset_tp_revest_int_parede"  value="#{iimsg.AssetInvas_asset_tp_revest_int_parede_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_revest_int_parede" value="#{cadAssetInvasBean.asset_tp_revest_int_parede}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_revest_int_parede','2','RVIPD',this.value);;" size="5" maxlength="3" tabindex="34" />
		</div>
<h:commandButton id="asset_tp_revest_int_parede_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'RVIPD', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_tp_revest_int_parede_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_revest_int_parede_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetInvas_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_tp_cobertura" value="#{cadAssetInvasBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_cobertura','2','TPCOB',this.value);;" size="5" maxlength="3" tabindex="35" />
		</div>
<h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCOB', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_tp_cobertura_desc}" style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
<tr>   <%-- <tr open> vvv --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_in_inst_eletrica" for="asset_in_inst_eletrica"  value="#{iimsg.AssetInvas_asset_in_inst_eletrica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_in_inst_eletrica" value="#{cadAssetInvasBean.asset_in_inst_eletrica}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_in_inst_eletrica','2','SNNID',this.value);;" size="5" maxlength="3" tabindex="36" />
		</div>
<h:commandButton id="asset_in_inst_eletrica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_in_inst_eletrica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_in_inst_eletrica_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
<td        width="300" > <%-- open w/ inputText 222a--%>
<%-- outputLabel aaa --%>
<h:outputLabel  styleClass="h7"  id="lbl_asset_in_inst_hidraulica" for="asset_in_inst_hidraulica"  value="#{iimsg.AssetInvas_asset_in_inst_hidraulica_tt}"/>  </td> <%-- <top> --%>
<%-- Processing Codf --%>
<td   width="700"   >
<%-- Processing Codf 1--%>
<%-- Processing Codf 1 HLFN --%>
	<div class="col" style="padding-left:0px; padding-right: 0px;">
	  <div class="input-group input-group-sm">
	    <div  class="input-group-sm">
<h:inputText  id="asset_in_inst_hidraulica" value="#{cadAssetInvasBean.asset_in_inst_hidraulica}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_in_inst_hidraulica','2','SNNID',this.value);;" size="5" maxlength="3" tabindex="37" />
		</div>
<h:commandButton id="asset_in_inst_hidraulica_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'SNNID', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>


<h:outputLabel id="asset_in_inst_hidraulica_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetInvasBean.asset_in_inst_hidraulica_desc}"  style="font-size: 0.8rem;color: black;argin-bottom: 0.5rem;font-family: inherit;font-weight: 500;line-height: 1.2;color: #4c5054;padding-top: 7px;"/>
		</div>
	</div>
</td> <%-- <close td> ccc --%>
</tr> <%-- <tr close> ddd--%>
</table> <%-- <explicit frame close> --%>
