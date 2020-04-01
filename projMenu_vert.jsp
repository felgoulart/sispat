<!--Information Insights - WebInsight Framework   IICase Generated Code: Menu - Menu
Project: SIOF - Sistema Integrado de Ocorrência Ferroviária / 2006/10/16
Date / Time: Thu Nov 09 10:02:22 BRST 2006Destination Path: \\Insight02\projetos\Fabrica\Java\SIOF\-->
<SCRIPT type="text/javascript">
function stMenu(menu,conteudo,div,lbl) {
    this.menu = menu;
    this.conteudo = conteudo;
    this.div = div;
    this.lbl = lbl;
	}
// var MENUS
var arMenus = new Array();
    arMenus[0] = new stMenu('td_ocorrencias_principal','div_ocorrencias_principal','div_ocorrencias','lbl_ocorrencias');
    arMenus[1] = new stMenu('td_ocorrencias_ocorrencias','div_ocorrencias_ocorrencias','div_ocorrencias','lbl_ocorrencias');
    arMenus[2] = new stMenu('td_ocorrencias_trafego','div_ocorrencias_trafego','div_ocorrencias','lbl_ocorrencias');
    arMenus[3] = new stMenu('td_ocorrencias_admimistracao','div_ocorrencias_admimistracao','div_ocorrencias','lbl_ocorrencias');
    arMenus[4] = new stMenu('td_ocorrencias_pessoal','div_ocorrencias_pessoal','div_ocorrencias','lbl_ocorrencias');
    arMenus[5] = new stMenu('td_ocorrencias_codificacoes','div_ocorrencias_codificacoes','div_ocorrencias','lbl_ocorrencias');
    arMenus[6] = new stMenu('td_ocorrencias_sair','div_ocorrencias_sair','div_ocorrencias','lbl_ocorrencias');
    arMenus[7] = new stMenu('td_operacoes_principal','div_operacoes_principal','div_operacoes','lbl_operacoes');
    arMenus[8] = new stMenu('td_operacoes_gestao_de_patios','div_operacoes_gestao_de_patios','div_operacoes','lbl_operacoes');
    arMenus[9] = new stMenu('td_operacoes_trafego','div_operacoes_trafego','div_operacoes','lbl_operacoes');
    arMenus[10] = new stMenu('td_operacoes_admimistracao','div_operacoes_admimistracao','div_operacoes','lbl_operacoes');
    arMenus[11] = new stMenu('td_operacoes_pessoal','div_operacoes_pessoal','div_operacoes','lbl_operacoes');
    arMenus[12] = new stMenu('td_operacoes_codificacoes','div_operacoes_codificacoes','div_operacoes','lbl_operacoes');
    arMenus[13] = new stMenu('td_operacoes_sair','div_operacoes_sair','div_operacoes','lbl_operacoes');
    arMenus[14] = new stMenu('td_seguranca_principal','div_seguranca_principal','div_seguranca','lbl_seguranca');
    arMenus[15] = new stMenu('td_seguranca_cadastros','div_seguranca_cadastros','div_seguranca','lbl_seguranca');
    arMenus[16] = new stMenu('td_seguranca_relacionamentos','div_seguranca_relacionamentos','div_seguranca','lbl_seguranca');
    arMenus[17] = new stMenu('td_seguranca_codificacoes','div_seguranca_codificacoes','div_seguranca','lbl_seguranca');
    arMenus[18] = new stMenu('td_seguranca_sair','div_seguranca_sair','div_seguranca','lbl_seguranca');
    arMenus[19] = new stMenu('td_comercial_principal','div_comercial_principal','div_comercial','lbl_comercial');
    arMenus[20] = new stMenu('td_comercial_comercial','div_comercial_comercial','div_comercial','lbl_comercial');
    arMenus[21] = new stMenu('td_comercial_codificacoes','div_comercial_codificacoes','div_comercial','lbl_comercial');
    arMenus[22] = new stMenu('td_comercial_sair','div_comercial_sair','div_comercial','lbl_comercial');
         function AlternarMenus(number, assist) {
         if (assist == true ){
             return;}
        AlternarLogo();
        // Desativa os MENUS
                for (i=0;i<arMenus.length;i++) {
                        m = document.getElementById(arMenus[i].menu).className = 'mnv';
                        c = document.getElementById(arMenus[i].conteudo).style.display = 'none';
                        d = document.getElementById(arMenus[i].div).style.display = 'none';
                        l = document.getElementById(arMenus[i].lbl).style.display = 'none';
                }
        // Ativa o MENU
        if (number != null ) {
            <%
            Object number = request.getParameter("menu");
            if (number != null) {
                session.setAttribute("menu", number);
            }
            %>
            m = document.getElementById(arMenus[number].menu).className = 'mnvs';
            c = document.getElementById(arMenus[number].conteudo).style.display = '';
            d = document.getElementById(arMenus[number].div).style.display = '';
            l = document.getElementById(arMenus[number].lbl).style.display = '';
        } else {
            number = (<%= (Object)session.getAttribute("menu")%>);
            m = document.getElementById(arMenus[number].menu).className = 'mnvs';
            c = document.getElementById(arMenus[number].conteudo).style.display = '';
            d = document.getElementById(arMenus[number].div).style.display = '';
            l = document.getElementById(arMenus[number].lbl).style.display = '';
        }
        }
// SUPER MENU
        function stSuperMenu(smenu) {
                 this.smenu = smenu;
                 }
   // var SUPER MENU
       var arSuperMenu = new Array();
      arSuperMenu[0] = new stSuperMenu('div_principal');
      arSuperMenu[1] = new stSuperMenu('div_ocorrencias');
      arSuperMenu[2] = new stSuperMenu('div_operacoes');
      arSuperMenu[3] = new stSuperMenu('div_seguranca');
      arSuperMenu[4] = new stSuperMenu('div_comercial');

    function AlternarSuperMenu(number) {
       // Desativa os SUPER MENU
       for (i=0;i<arSuperMenu.length;i++) {
           s = document.getElementById(arSuperMenu[i].smenu).style.display = 'none';
       }
       // Ativa o SUPER MENU
       if (number != null ) {
           s = document.getElementById(arSuperMenu[number].smenu).style.display = '';
       } else {
           s = document.getElementById(arSuperMenu[number].smenu).style.display = '';
       }
   }

</SCRIPT>
<DIV id="div_principal" style="DISPLAY: none">
  <table class="mnvl" width="150" height="50" border="0" cellpadding="3" cellspacing="0">
    <tr>
      <td width="100" height="25" id="ocorrencias" class="spmenu_vert-sel">
        <h:outputLink value="#" onclick="AlternarSuperMenu(1), AlternarMenus(1)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ocorrencias}"/>
        </h:outputLink>
      </td>
    </tr>
    <tr>
      <td width="100" height="25" id="operacoes" class="spmenu_vert-sel">
        <h:outputLink value="#" onclick="AlternarSuperMenu(2), AlternarMenus(8)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_operacoes}"/>
        </h:outputLink>
      </td>
    </tr>
    <tr>
      <td width="100" height="25" id="seguranca" class="spmenu_vert-sel">
        <h:outputLink value="#" onclick="AlternarSuperMenu(3), AlternarMenus(15)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_segurança}"/>
        </h:outputLink>
      </td>
    </tr>
    <tr>
      <td width="100" height="25" id="comercial" class="spmenu_vert-sel">
        <h:outputLink value="#" onclick="AlternarSuperMenu(4), AlternarMenus(20)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_comercial}"/>
        </h:outputLink>
      </td>
    </tr>
    <tr>
      <td width="100" height="25" id="sair" class="spmenu_vert-sel">
        <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </td>
    </tr>
  </table>
</DIV>
<DIV id="div_ocorrencias" style="DISPLAY: none">
  <TABLE class="mnvl" height="50" cellSpacing="0" cellPadding="0" width="150" border="0">
    <TR>
      <TD class="mnv" id="td_ocorrencias_principal" width="100" height="25">
        <h:outputLink value="index2.jsp" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_principal}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_principal" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_ocorrencias" width="100">
        <h:outputLink value="#" onclick="AlternarMenus(1)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ocorrencias}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_ocorrencias" style="DISPLAY: none">
        <h:outputLink value="siofRevntpsq.jsp?menu=1" onclick="af('revntpsq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ocorrencias}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofCluntpsq.jsp?menu=1" onclick="af('cluntpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_acionamentos}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqAcRg.jsp?menu=1" onclick="af('AcRgpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_acionamentos_regiao}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofuacgpsq.jsp?menu=1" onclick="af('uacgpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_cargos}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofAreapsq.jsp?menu=1" onclick="af('areapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_areas}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofRegiopsq.jsp?menu=1" onclick="af('regiopesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_regioes}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofBrnchpsq.jsp?menu=1" onclick="af('brnchpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_trecho}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofRailwpsq.jsp?menu=1" onclick="af('railwpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ferrovias}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqAntt.jsp?menu=1" onclick="af('Anttpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_relatorio_antt}"/>
        </h:outputLink>&nbsp;<br>
      </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_trafego" width="100">
        <h:outputLink value="#" onclick="AlternarMenus(2)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_trafego}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_trafego" style="DISPLAY: none">
        <h:outputLink value="pesqTopo.jsp?menu=2" onclick="af('Topopesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_topologia}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqCirc.jsp?menu=2" onclick="af('Circpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_circulacao}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="sioftrempsq.jsp?menu=2" onclick="af('trempesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_trens}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqOdSv.jsp?menu=2" onclick="af('OdSvpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofveicpsq.jsp?menu=2" onclick="af('veicpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_veiculos}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofveiupsq.jsp?menu=2" onclick="af('veiupesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_veiculos_util}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofmercpsq.jsp?menu=2" onclick="af('mercpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_mercadoria}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqEsta.jsp?menu=2" onclick="af('Estapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_estacoes}"/>
        </h:outputLink>&nbsp;
      </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_admimistracao" width="100">
        <h:outputLink value="#" onclick="AlternarMenus(3)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_admimistracao}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_admimistracao" style="DISPLAY: none">
        <h:outputLink value="siofferrpsq.jsp?menu=3" onclick="af('ferrpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ferrovias}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="sioflocapsq.jsp?menu=3" onclick="af('locapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_locais}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqEsta.jsp?menu=3" onclick="af('Estapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_estacoes}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="pesqPati.jsp?menu=3" onclick="af('Patipesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_patios}"/>
        </h:outputLink>&nbsp;
      </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_pessoal" width="100">
        <h:outputLink value="#" onclick="AlternarMenus(4)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_pessoal}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_pessoal" style="DISPLAY: none">
        <h:outputLink value="pesqFunc.jsp?menu=4" onclick="af('Funcpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_funcionarios}"/>
        </h:outputLink>&nbsp;<br>
        <h:outputLink value="siofuacgpsq.jsp?menu=4" onclick="af('uacgpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_cargos}"/>
        </h:outputLink>&nbsp;
      </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_codificacoes" width="100">
        <h:outputLink value="#" onclick="AlternarMenus(5)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_codificacoes}"/>
        </h:outputLink>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_codificacoes" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
    <TR>
      <TD class="mnv" id="td_ocorrencias_sair" width="100">
        <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>
    <TR>
      <TD class="mnvtbct">
      <DIV class="mnvct" id="div_ocorrencias_sair" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>
<DIV id="div_operacoes" style="DISPLAY: none">
  <TABLE class="mnl" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_operacoes_principal" width="100" height="25">
        <h:outputLink value="index2.jsp" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_principal}"/>
        </h:outputLink>
      <TD class="mn" id="td_operacoes_gestao_de_patios" width="120" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(8)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_gestao_de_patios}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_operacoes_trafego" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(9)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_trafego}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_operacoes_admimistracao" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(10)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_admimistracao}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_operacoes_pessoal" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(11)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_pessoal}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_operacoes_codificacoes" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(12)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_codificacoes}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_operacoes_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>
    <TR>
      <TD Class="tbct" colspan="7" height="25">
      <DIV class="ct" id="div_operacoes_principal" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_operacoes_gestao_de_patios" style="DISPLAY: none">
        <h:outputLink value="pesqTopo.jsp?menu=8" onclick="af('Topopesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_topologia}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqOpTr.jsp?menu=8" onclick="af('OpTrpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_operacoes_de_trafego}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqOpCg.jsp?menu=8" onclick="af('OpCgpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_operacoes_de_carga}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqOdSv.jsp?menu=8" onclick="af('OdSvpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="siofveicpsq.jsp?menu=8" onclick="af('veicpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_veiculos}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqPati.jsp?menu=8" onclick="af('Patipesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_patios}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_operacoes_trafego" style="DISPLAY: none">
        <h:outputLink value="pesqTopo.jsp?menu=2" onclick="af('Topopesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_topologia}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqCirc.jsp?menu=2" onclick="af('Circpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_circulacao}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="sioftrempsq.jsp?menu=2" onclick="af('trempesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_trens}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqOdSv.jsp?menu=2" onclick="af('OdSvpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ordens_de_servico}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="siofveicpsq.jsp?menu=2" onclick="af('veicpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_veiculos}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="siofveiupsq.jsp?menu=2" onclick="af('veiupesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_veiculos_util}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="siofmercpsq.jsp?menu=2" onclick="af('mercpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_mercadoria}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqEsta.jsp?menu=2" onclick="af('Estapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_estacoes}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_operacoes_admimistracao" style="DISPLAY: none">
        <h:outputLink value="siofferrpsq.jsp?menu=3" onclick="af('ferrpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_ferrovias}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="sioflocapsq.jsp?menu=3" onclick="af('locapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_locais}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqEsta.jsp?menu=3" onclick="af('Estapesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_estacoes}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqPati.jsp?menu=3" onclick="af('Patipesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_patios}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_operacoes_pessoal" style="DISPLAY: none">
        <h:outputLink value="pesqFunc.jsp?menu=4" onclick="af('Funcpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_funcionarios}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="siofuacgpsq.jsp?menu=4" onclick="af('uacgpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_cargos}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_operacoes_codificacoes" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_operacoes_sair" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>
<DIV id="div_seguranca" style="DISPLAY: none">
  <TABLE class="mnl" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_seguranca_principal" width="100" height="25">
        <h:outputLink value="index2.jsp" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_principal}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_seguranca_cadastros" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(15)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_cadastros}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_seguranca_relacionamentos" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(16)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_relacionamentos}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_seguranca_codificacoes" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(17)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_codificacoes}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_seguranca_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>
    <TR>
      <TD Class="tbct" colspan="7" height="25">
      <DIV class="ct" id="div_seguranca_principal" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_seguranca_cadastros" style="DISPLAY: none">
        <h:outputLink value="pesqFunc.jsp?menu=15" onclick="af('Funcpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_usuarios}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqPapel.jsp?menu=15" onclick="af('Papepesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_papeis}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqOper.jsp?menu=15" onclick="af('Operpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_operacoes}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_seguranca_relacionamentos" style="DISPLAY: none">
        <h:outputLink value="pesqUsrPap.jsp?menu=16" onclick="af('UsrPpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_usuario_papel}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqPapOper.jsp?menu=16" onclick="af('PapOpesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_papel_operacao}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_seguranca_codificacoes" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_seguranca_sair" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>
<DIV id="div_comercial" style="DISPLAY: none">
  <TABLE class="mnl" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_comercial_principal" width="100" height="25">
        <h:outputLink value="index2.jsp" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_principal}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_comercial_comercial" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(20)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_comercial}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_comercial_codificacoes" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(21)" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_codificacoes}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_comercial_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.tab_sair}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>
    <TR>
      <TD Class="tbct" colspan="7" height="25">
      <DIV class="ct" id="div_comercial_principal" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_comercial_comercial" style="DISPLAY: none">
        <h:outputLink value="pesqClie.jsp?menu=20" onclick="af('Cliepesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_clientes}"/>
        </h:outputLink>&nbsp;
        <h:outputLink value="pesqDesp.jsp?menu=20" onclick="af('Desppesq')" styleClass="mnt">
          <h:outputText value="#{iimsg.tab_despachos}"/>
        </h:outputLink>&nbsp;
      </DIV>
      <DIV class="ct" id="div_comercial_codificacoes" style="DISPLAY: none">  </DIV>
      <DIV class="ct" id="div_comercial_sair" style="DISPLAY: none">  </DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>
