
<table      >  <%-- <explicit frame open> --%>
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_geral" for="asset_st_geral"  value="#{iimsg.AssetBldng_asset_st_geral_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_geral" value="#{cadAssetBldngBean.asset_st_geral}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_geral','5','CONSG',this.value);;" size="5" maxlength="3" tabindex="58" />
    </div>
            <h:commandButton id="asset_st_geral_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSG', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_geral_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_geral_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_aestrut_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_estrutura" for="asset_tp_estrutura"  value="#{iimsg.AssetBldng_asset_tp_estrutura_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_estrutura" value="#{cadAssetBldngBean.asset_tp_estrutura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_estrutura','5','TIPES',this.value);;" size="5" maxlength="3" tabindex="59" />
    </div>
            <h:commandButton id="asset_tp_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TIPES', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_tp_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_estrutura_desc}" styleClass="dscCodfCad"/>
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_estrutura" for="asset_st_estrutura"  value="#{iimsg.AssetBldng_asset_st_estrutura_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_estrutura" value="#{cadAssetBldngBean.asset_st_estrutura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_estrutura','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="60" />
    </div>
            <h:commandButton id="asset_st_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_estrutura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_estrutura_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_estrutura" for="asset_an_estrutura"  value="#{iimsg.AssetBldng_asset_an_estrutura_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_estrutura" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_estrutura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="61" />
    </div>
            <h:commandButton id="asset_an_estrutura_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANEST', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_revest_externo_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_revest_externo" for="asset_tp_revest_externo"  value="#{iimsg.AssetBldng_asset_tp_revest_externo_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_revest_externo" value="#{cadAssetBldngBean.asset_tp_revest_externo}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_revest_externo','5','TPRVE',this.value);;" size="5" maxlength="3" tabindex="62" />
    </div>
            <h:commandButton id="asset_tp_revest_externo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPRVE', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_tp_revest_externo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_revest_externo_desc}" styleClass="dscCodfCad"/>
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_revest_externo" for="asset_st_revest_externo"  value="#{iimsg.AssetBldng_asset_st_revest_externo_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_revest_externo" value="#{cadAssetBldngBean.asset_st_revest_externo}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_revest_externo','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="63" />
    </div>
            <h:commandButton id="asset_st_revest_externo_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_revest_externo_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_revest_externo_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_revest_externo" for="asset_an_revest_externo"  value="#{iimsg.AssetBldng_asset_an_revest_externo_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_revest_externo" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_revest_externo}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="64" />
    </div>
            <h:commandButton id="asset_an_revest_externo_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANRVE', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_revest_inter_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_revest_interno" for="asset_tp_revest_interno"  value="#{iimsg.AssetBldng_asset_tp_revest_interno_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_revest_interno" value="#{cadAssetBldngBean.asset_tp_revest_interno}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_revest_interno','5','TPRVI',this.value);;" size="5" maxlength="3" tabindex="65" />
    </div>
            <h:commandButton id="asset_tp_revest_interno_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPRVI', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_tp_revest_interno_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_revest_interno_desc}" styleClass="dscCodfCad"/>
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_revest_intern" for="asset_st_revest_intern"  value="#{iimsg.AssetBldng_asset_st_revest_intern_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_revest_intern" value="#{cadAssetBldngBean.asset_st_revest_intern}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_revest_intern','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="66" />
    </div>
            <h:commandButton id="asset_st_revest_intern_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_revest_intern_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_revest_intern_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_revest_intern" for="asset_an_revest_intern"  value="#{iimsg.AssetBldng_asset_an_revest_intern_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_revest_intern" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_revest_intern}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="67" />
    </div>
            <h:commandButton id="asset_an_revest_intern_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANRVI', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_cobertura_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_cobertura" for="asset_tp_cobertura"  value="#{iimsg.AssetBldng_asset_tp_cobertura_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_cobertura" value="#{cadAssetBldngBean.asset_tp_cobertura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_cobertura','5','TPCOB',this.value);;" size="5" maxlength="3" tabindex="68" />
    </div>
            <h:commandButton id="asset_tp_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPCOB', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_tp_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_cobertura_desc}" styleClass="dscCodfCad"/>
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_cobertura" for="asset_st_cobertura"  value="#{iimsg.AssetBldng_asset_st_cobertura_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_cobertura" value="#{cadAssetBldngBean.asset_st_cobertura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_cobertura','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="69" />
    </div>
            <h:commandButton id="asset_st_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_cobertura_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_cobertura_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_cobertura" for="asset_an_cobertura"  value="#{iimsg.AssetBldng_asset_an_cobertura_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_cobertura" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_cobertura}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="70" />
    </div>
            <h:commandButton id="asset_an_cobertura_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANCOB', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_esquadria_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_esquadrias" for="asset_tp_esquadrias"  value="#{iimsg.AssetBldng_asset_tp_esquadrias_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_esquadrias" onclick="clf(this);" value="#{cadAssetBldngBean.asset_tp_esquadrias}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="52" maxlength="50" tabindex="71" />
    </div>
            <h:commandButton id="asset_tp_esquadrias_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'TPESQ', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_esquadrias" for="asset_st_esquadrias"  value="#{iimsg.AssetBldng_asset_st_esquadrias_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_esquadrias" value="#{cadAssetBldngBean.asset_st_esquadrias}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_esquadrias','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="72" />
    </div>
            <h:commandButton id="asset_st_esquadrias_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_esquadrias_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_esquadrias_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_esquadrias" for="asset_an_esquadrias"  value="#{iimsg.AssetBldng_asset_an_esquadrias_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_esquadrias" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_esquadrias}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="73" />
    </div>
            <h:commandButton id="asset_an_esquadrias_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANESQ', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_siselet_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_inst_eletricas" for="asset_tp_inst_eletricas"  value="#{iimsg.AssetBldng_asset_tp_inst_eletricas_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_inst_eletricas" onclick="clf(this);" value="#{cadAssetBldngBean.asset_tp_inst_eletricas}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="52" maxlength="50" tabindex="74" />
    </div>
            <h:commandButton id="asset_tp_inst_eletricas_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'TPSTE', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_inst_eletricas" for="asset_st_inst_eletricas"  value="#{iimsg.AssetBldng_asset_st_inst_eletricas_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_inst_eletricas" value="#{cadAssetBldngBean.asset_st_inst_eletricas}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_inst_eletricas','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="75" />
    </div>
            <h:commandButton id="asset_st_inst_eletricas_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_inst_eletricas_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_inst_eletricas_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_inst_eletricas" for="asset_an_inst_eletricas"  value="#{iimsg.AssetBldng_asset_an_inst_eletricas_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_inst_eletricas" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_inst_eletricas}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="76" />
    </div>
            <h:commandButton id="asset_an_inst_eletricas_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANSTE', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_instagua_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_sist_agua" for="asset_tp_sist_agua"  value="#{iimsg.AssetBldng_asset_tp_sist_agua_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_sist_agua" onclick="clf(this);" value="#{cadAssetBldngBean.asset_tp_sist_agua}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="52" maxlength="50" tabindex="77" />
    </div>
            <h:commandButton id="asset_tp_sist_agua_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'TPSTA', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_sist_agua" for="asset_st_sist_agua"  value="#{iimsg.AssetBldng_asset_st_sist_agua_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_sist_agua" value="#{cadAssetBldngBean.asset_st_sist_agua}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_sist_agua','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="78" />
    </div>
            <h:commandButton id="asset_st_sist_agua_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_sist_agua_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_sist_agua_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_sist_agua" for="asset_an_sist_agua"  value="#{iimsg.AssetBldng_asset_an_sist_agua_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_sist_agua" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_sist_agua}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="79" />
    </div>
            <h:commandButton id="asset_an_sist_agua_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANSTA', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    <tr>   
    <td    colspan ="6"   width="100%" > 
    <table width="100%"  bgcolor="D4DDE6" > 
    <tr>
    <td align="left"  colspan ="6" width="0%"  class="ttsmod"> 
    <h:outputText value="#{iimsg.AssetBldng_instesgoto_tt_pct_tt}"/>
    </td>
    </td> 
    </tr>
    </table >
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_tp_sist_esgoto" for="asset_tp_sist_esgoto"  value="#{iimsg.AssetBldng_asset_tp_sist_esgoto_tt}"/>  </td> <%-- <top> --%>
    
    <td   width="900"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_tp_sist_esgoto" value="#{cadAssetBldngBean.asset_tp_sist_esgoto}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_tp_sist_esgoto','5','TPESG',this.value);;" size="5" maxlength="3" tabindex="80" />
    </div>
            <h:commandButton id="asset_tp_sist_esgoto_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'TPESG', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_tp_sist_esgoto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_tp_sist_esgoto_desc}" styleClass="dscCodfCad"/>
    </td> 
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_st_sist_esgoto" for="asset_st_sist_esgoto"  value="#{iimsg.AssetBldng_asset_st_sist_esgoto_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="4" width="1400"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_st_sist_esgoto" value="#{cadAssetBldngBean.asset_st_sist_esgoto}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" onchange="bdcd('','asset_st_sist_esgoto','5','CONSV',this.value);;" size="5" maxlength="3" tabindex="81" />
    </div>
            <h:commandButton id="asset_st_sist_esgoto_xsel" tabindex="-1" immediate="true" onmousedown="pw('C'+'CONSV', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    
    <h:inputText id="asset_st_sist_esgoto_desc" tabindex="-1" onfocus="this.blur()" value="#{cadAssetBldngBean.asset_st_sist_esgoto_desc}"  styleClass="dscCodfCad"/>
            </div>
        </div>
    </td> 
    </tr> 
    <tr>   
    <td        width="300" > 
    
    <h:outputLabel  styleClass="h7"  id="lbl_asset_an_sist_esgoto" for="asset_an_sist_esgoto"  value="#{iimsg.AssetBldng_asset_an_sist_esgoto_tt}"/>  </td> <%-- <top> --%>
    
    <td  colspan ="6" width="300"   >
    
    
        <div class="col" style="padding-left:0px; padding-right: 0px;">
          <div class="input-group input-group-sm">
            <div  class="input-group-sm">
    <h:inputText  id="asset_an_sist_esgoto" onclick="clf(this);" value="#{cadAssetBldngBean.asset_an_sist_esgoto}" onkeydown="keypress=1;"  styleClass="form-control form-control-sm" size="152" maxlength="150" tabindex="82" />
    </div>
            <h:commandButton id="asset_an_sist_esgoto_xsel" tabindex="-1" immediate="true" onmousedown="pw('CX'+'ANESG', tran, this.id, 'yes');" styleClass="btn btn-outline-secondary" image="../imagens/btPesquisar16.png"/>
    
    </td> 
    </tr> 
    </table> <%-- <explicit frame close> --%>
    