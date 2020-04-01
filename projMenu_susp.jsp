<SCRIPT type="text/javascript">
function stMenuSusp(menu,lbl) {
    this.menu = menu;
    this.lbl = lbl;
}
	var arMenusSusp = new Array();
    // ocorrencias
    arMenusSusp[1] = new Array();
	arMenusSusp[1][1] = new stMenuSusp('li_ocorrencias_ocorrencias','lli_ocorrencias');
	arMenusSusp[1][2] = new stMenuSusp('li_ocorrencias_trafego','lli_ocorrencias');
	arMenusSusp[1][3] = new stMenuSusp('li_ocorrencias_admimistracao','lli_ocorrencias');
	arMenusSusp[1][4] = new stMenuSusp('li_ocorrencias_pessoal','lli_ocorrencias');
	arMenusSusp[1][5] = new stMenuSusp('li_ocorrencias_codificacoes','lli_ocorrencias');
	arMenusSusp[1][6] = new stMenuSusp('li_ocorrencias_sair','lli_ocorrencias');
    // operacoes
    arMenusSusp[2] = new Array();
	arMenusSusp[2][1] = new stMenuSusp('li_operacoes_gestao_de_patios','lli_operacoes');
	arMenusSusp[2][2] = new stMenuSusp('li_operacoes_trafego','lli_operacoes');
	arMenusSusp[2][3] = new stMenuSusp('li_operacoes_admimistracao','lli_operacoes');
	arMenusSusp[2][4] = new stMenuSusp('li_operacoes_pessoal','lli_operacoes');
	arMenusSusp[2][5] = new stMenuSusp('li_operacoes_codificacoes','lli_operacoes');
	arMenusSusp[2][6] = new stMenuSusp('li_operacoes_sair','lli_operacoes');
    // seguranca
    arMenusSusp[3] = new Array();
	arMenusSusp[3][1] = new stMenuSusp('li_seguranca_cadastros','lli_seguranca');
	arMenusSusp[3][2] = new stMenuSusp('li_seguranca_relacionamentos','lli_seguranca');
	arMenusSusp[3][3] = new stMenuSusp('li_seguranca_codificacoes','lli_seguranca');
	arMenusSusp[3][4] = new stMenuSusp('li_seguranca_sair','lli_seguranca');
    // comercial
    arMenusSusp[4] = new Array();
	arMenusSusp[4][1] = new stMenuSusp('li_comercial_comercial','lli_comercial');
	arMenusSusp[4][2] = new stMenuSusp('li_comercial_codificacoes','lli_comercial');
	arMenusSusp[4][3] = new stMenuSusp('li_comercial_sair','lli_comercial');
    // sair

    function AlternarMenuSusp(number) {
	    // Desativa <LI>
        for (var i=1; i < arMenusSusp.length; i++) {
            for (var j=1; j < arMenusSusp[i].length; j++) {
                el(arMenusSusp[i][j].menu).style.display = 'none';
                el(arMenusSusp[i][j].lbl).style.display = 'none';
//                el('cadForm:'+arMenusSusp[i][j].lbl).style.display = 'none';
            }
        }
	    // Ativa <LI>
	    if (number != null) {
            for (var j=1; j < arMenusSusp[number].length; j++) {
                el(arMenusSusp[number][j].menu).style.display = '';
                el(arMenusSusp[number][j].lbl).style.display = '';
//                el('cadForm:'+arMenusSusp[number][j].lbl).style.display = '';
            }
            AlternarSuperMenuSuspAtivo(number);
	    }
    }

    function AlternarSuperMenuSuspAtivo(number) {
        for (k=1; k < arSuperMenuSusp.length; k++) {
            el('cadForm:'+arSuperMenuSusp[k].smenu).className = "";
        }
        if (number != null) {
            el('cadForm:'+arSuperMenuSusp[number].smenu).className = "bold";
        }
    }

// SUPER MENU
    function stSuperMenuSusp(smenu) {
        this.smenu = smenu;
    }
   // var SUPER MENU
   var arSuperMenuSusp = new Array();
   arSuperMenuSusp[1] = new stSuperMenuSusp('li_ocorrencias');
   arSuperMenuSusp[2] = new stSuperMenuSusp('li_operacoes');
   arSuperMenuSusp[3] = new stSuperMenuSusp('li_seguranca');
   arSuperMenuSusp[4] = new stSuperMenuSusp('li_comercial');

    function AlternarSuperMenuSusp(number) {
       // Desativa os SUPER MENU
       for (i=0;i<arSuperMenuSusp.length;i++) {
           s = el('cadForm:'+(arSuperMenuSusp[i].smenu)).style.display = 'none';
       }
       // Ativa o SUPER MENU
       if (number != null ) {
           s = el('cadForm:'+(arSuperMenuSusp[number].smenu)).style.display = '';
       } else {
           for (i=1;i<arSuperMenuSusp.length;i++) {
               s = el('cadForm:'+(arSuperMenuSusp[i].smenu)).style.display = '';
           }
       }
   }

</SCRIPT>
  <UL id=smenus>
    <LI>
      <UL>
        <LI id="li_principal">
          <h:outputLink value="index2.jsp" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_principal}"/>
          </h:outputLink>
          <DIV id="div_principal">
            <UL>
              <li>
                <h:outputLink id="li_ocorrencias" value="#" onclick="AlternarMenuSusp(1)" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ocorrencias}"/>
                </h:outputLink>
              </li>
              <li>
                <h:outputLink id="li_operacoes" value="#" onclick="AlternarMenuSusp(2)" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_operacoes}"/>
                </h:outputLink>
              </li>
              <li>
                <h:outputLink id="li_seguranca" value="#" onclick="AlternarMenuSusp(3)" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_segurança}"/>
                </h:outputLink>
              </li>
              <li>
                <h:outputLink id="li_comercial" value="#" onclick="AlternarMenuSusp(4)" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_comercial}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
      </UL>
    </LI>
  </UL>
  <table cellpadding="0" cellspacing="0" border="0"><tr><td><img src="imagens/mn_Space.gif"></td></tr></table>
  <UL id=menus>
    <LI id="lli_ocorrencias" style="DISPLAY: ''">
      <h:outputText id="lbi_ocorrencias" value="#{iimsg.tab_ocorrencias}"/>
      <UL>
        <LI id="li_ocorrencias_ocorrencias" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_ocorrencias}"/>
          </h:outputLink>
          <DIV id="div_ocorrencias_ocorrencias">
            <UL>
              <LI>
                <h:outputLink value="siofofrgpsq.jsp?menu=1" onclick="af('ofrgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ocorrencias}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofuargpsq.jsp?menu=1" onclick="af('uargpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_acionamentos}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqAcRg.jsp?menu=1" onclick="af('AcRgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_acionamentos_regiao}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofuacgpsq.jsp?menu=1" onclick="af('uacgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_cargos}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofAreapsq.jsp?menu=1" onclick="af('areapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_areas}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofregipsq.jsp?menu=1" onclick="af('regipesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_regioes}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofrailwpsq.jsp?menu=1" onclick="af('Railwpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_consulta_anual}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqAntt.jsp?menu=1" onclick="af('Anttpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_relatorio_antt}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofenvdpsq.jsp?menu=1" onclick="af('envdpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_envolvidos}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_ocorrencias_trafego" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_trafego}"/>
          </h:outputLink>
          <DIV id="div_ocorrencias_trafego">
            <UL>
              <LI>
                <h:outputLink value="pesqTopo.jsp?menu=2" onclick="af('Topopesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_topologia}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqCirc.jsp?menu=2" onclick="af('Circpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_circulacao}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="sioftrempsq.jsp?menu=2" onclick="af('trempesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_trens}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOdSv.jsp?menu=2" onclick="af('OdSvpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofveicpsq.jsp?menu=2" onclick="af('veicpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_veiculos}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofveiupsq.jsp?menu=2" onclick="af('veiupesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_veiculos_util}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofmercpsq.jsp?menu=2" onclick="af('mercpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_mercadoria}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqEsta.jsp?menu=2" onclick="af('Estapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_estacoes}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_ocorrencias_admimistracao" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_admimistracao}"/>
          </h:outputLink>
          <DIV id="div_ocorrencias_admimistracao">
            <UL>
              <LI>
                <h:outputLink value="siofferrpsq.jsp?menu=3" onclick="af('ferrpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ferrovias}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="sioflocapsq.jsp?menu=3" onclick="af('locapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_locais}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqEsta.jsp?menu=3" onclick="af('Estapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_estacoes}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqPati.jsp?menu=3" onclick="af('Patipesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_patios}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_ocorrencias_pessoal" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_pessoal}"/>
          </h:outputLink>
          <DIV id="div_ocorrencias_pessoal">
            <UL>
              <LI>
                <h:outputLink value="pesqFunc.jsp?menu=4" onclick="af('Funcpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_funcionarios}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofuacgpsq.jsp?menu=4" onclick="af('uacgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_cargos}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_ocorrencias_codificacoes" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_codificacoes}"/>
          </h:outputLink>
        </LI>
        <LI id="li_ocorrencias_sair" style="DISPLAY: ''">
          <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
        </LI>
      </UL>
    </LI>
    <LI id="lli_operacoes" style="DISPLAY: ''">
      <h:outputText id="lbi_operacoes" value="#{iimsg.tab_operacoes}"/>
      <UL>
        <LI id="li_operacoes_gestao_de_patios" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_gestao_de_patios}"/>
          </h:outputLink>
          <DIV id="div_operacoes_gestao_de_patios">
            <UL>
              <LI>
                <h:outputLink value="pesqTopo.jsp?menu=8" onclick="af('Topopesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_topologia}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOpTr.jsp?menu=8" onclick="af('OpTrpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_operacoes_de_trafego}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOpCg.jsp?menu=8" onclick="af('OpCgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_operacoes_de_carga}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOdSv.jsp?menu=8" onclick="af('OdSvpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofveicpsq.jsp?menu=8" onclick="af('veicpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_veiculos}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqPati.jsp?menu=8" onclick="af('Patipesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_patios}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_operacoes_trafego" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_trafego}"/>
          </h:outputLink>
          <DIV id="div_operacoes_trafego">
            <UL>
              <LI>
                <h:outputLink value="pesqTopo.jsp?menu=2" onclick="af('Topopesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_topologia}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqCirc.jsp?menu=2" onclick="af('Circpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_circulacao}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="sioftrempsq.jsp?menu=2" onclick="af('trempesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_trens}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOdSv.jsp?menu=2" onclick="af('OdSvpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofveicpsq.jsp?menu=2" onclick="af('veicpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_veiculos}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofveiupsq.jsp?menu=2" onclick="af('veiupesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_veiculos_util}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofmercpsq.jsp?menu=2" onclick="af('mercpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_mercadoria}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqEsta.jsp?menu=2" onclick="af('Estapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_estacoes}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_operacoes_admimistracao" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_admimistracao}"/>
          </h:outputLink>
          <DIV id="div_operacoes_admimistracao">
            <UL>
              <LI>
                <h:outputLink value="siofferrpsq.jsp?menu=3" onclick="af('ferrpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_ferrovias}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="sioflocapsq.jsp?menu=3" onclick="af('locapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_locais}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqEsta.jsp?menu=3" onclick="af('Estapesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_estacoes}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqPati.jsp?menu=3" onclick="af('Patipesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_patios}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_operacoes_pessoal" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_pessoal}"/>
          </h:outputLink>
          <DIV id="div_operacoes_pessoal">
            <UL>
              <LI>
                <h:outputLink value="pesqFunc.jsp?menu=4" onclick="af('Funcpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_funcionarios}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="siofuacgpsq.jsp?menu=4" onclick="af('uacgpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_cargos}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_operacoes_codificacoes" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_codificacoes}"/>
          </h:outputLink>
        </LI>
        <LI id="li_operacoes_sair" style="DISPLAY: ''">
          <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
        </LI>
      </UL>
    </LI>
    <LI id="lli_seguranca" style="DISPLAY: ''">
      <h:outputText id="lbi_seguranca" value="#{iimsg.tab_segurança}"/>
      <UL>
        <LI id="li_seguranca_cadastros" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_cadastros}"/>
          </h:outputLink>
          <DIV id="div_seguranca_cadastros">
            <UL>
              <LI>
                <h:outputLink value="pesqFunc.jsp?menu=15" onclick="af('Funcpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_usuarios}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqPapel.jsp?menu=15" onclick="af('Papepesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_papeis}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqOper.jsp?menu=15" onclick="af('Operpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_operacoes}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_seguranca_relacionamentos" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_relacionamentos}"/>
          </h:outputLink>
          <DIV id="div_seguranca_relacionamentos">
            <UL>
              <LI>
                <h:outputLink value="pesqUsrPap.jsp?menu=16" onclick="af('UsrPpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_usuario_papel}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqPapOper.jsp?menu=16" onclick="af('PapOpesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_papel_operacao}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_seguranca_codificacoes" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_codificacoes}"/>
          </h:outputLink>
        </LI>
        <LI id="li_seguranca_sair" style="DISPLAY: ''">
          <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
        </LI>
      </UL>
    </LI>
    <LI id="lli_comercial" style="DISPLAY: ''">
      <h:outputText id="lbi_comercial" value="#{iimsg.tab_comercial}"/>
      <UL>
        <LI id="li_comercial_comercial" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_comercial}"/>
          </h:outputLink>
          <DIV id="div_comercial_comercial">
            <UL>
              <LI>
                <h:outputLink value="pesqClie.jsp?menu=20" onclick="af('Cliepesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_clientes}"/>
                </h:outputLink>
              </LI>
              <LI>
                <h:outputLink value="pesqDesp.jsp?menu=20" onclick="af('Desppesq')" styleClass="mnt">
                  <h:outputText value="#{iimsg.tab_despachos}"/>
                </h:outputLink>
              </LI>
            </UL>
          </DIV>
        </LI>
        <LI id="li_comercial_codificacoes" style="DISPLAY: ''">
          <h:outputLink value="#" styleClass="mnt">
            <h:outputText value="#{iimsg.tab_codificacoes}"/>
          </h:outputLink>
        </LI>
        <LI id="li_comercial_sair" style="DISPLAY: ''">
          <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
        </LI>
      </UL>
    </LI>
  </UL>
  <SCRIPT src="../iiMenu.js" type=text/javascript></SCRIPT>
