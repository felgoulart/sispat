<SCRIPT type="text/javascript">

    // MENUS
    function stMenu(menu,conteudo,div,lbl) {
        this.menu = menu;
        this.conteudo = conteudo;
        this.div = div;
        this.lbl = lbl;
    }

    // var MENUS
    var arMenus = new Array();

	// tb_tabelas
	arMenus[0] =  new stMenu('td_tb_principal','div_tb_principal','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[1] =  new stMenu('td_tb_cadastro','div_tb_cadastro','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[2] =  new stMenu('td_tb_grupos','div_tb_grupos','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[3] =  new stMenu('td_tb_matriz','div_tb_matriz','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[4] =  new stMenu('td_tb_seguranca','div_tb_seguranca','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[5] =  new stMenu('td_tb_codificacoes','div_tb_codificacoes','div_tb_tabelas','lbl_tb_tabelas');
	arMenus[6] =  new stMenu('td_tb_sair','div_tb_sair','div_tb_tabelas','lbl_tb_tabelas');
	// op_operacao
	arMenus[7] =  new stMenu('td_op_principal_oper','div_op_principal','div_op_operacao','lbl_op_operacao');
	arMenus[8] =  new stMenu('td_op_patio','div_op_patio','div_op_operacao','lbl_op_operacao');
	arMenus[9] =  new stMenu('td_op_trem','div_op_trem','div_op_operacao','lbl_op_operacao');
	arMenus[10] = new stMenu('td_op_veiculo','div_op_veiculo','div_op_operacao','lbl_op_operacao');
	arMenus[11] = new stMenu('td_op_ordservico','div_op_ordservico','div_op_operacao','lbl_op_operacao');
	arMenus[27] = new stMenu('td_op_tripulacao','div_op_tripulacao','div_op_operacao','lbl_op_operacao');
	arMenus[12] = new stMenu('td_op_sair','div_op_sair','div_op_operacao','lbl_op_operacao');
	// cs_consulta
	arMenus[13] = new stMenu('td_cs_principal','div_cs_principal','div_cs_consulta','lbl_cs_consulta');
	arMenus[14] = new stMenu('td_cs_local','div_cs_local','div_cs_consulta','lbl_cs_consulta');
	arMenus[15] = new stMenu('td_cs_trem','div_cs_trem','div_cs_consulta','lbl_cs_consulta');
	arMenus[16] = new stMenu('td_cs_tripulacao','div_cs_tripulacao','div_cs_consulta','lbl_cs_consulta');
	arMenus[28] = new stMenu('td_cs_vagao','div_cs_vagao','div_cs_consulta','lbl_cs_consulta');
	arMenus[29] = new stMenu('td_cs_locomotiva','div_cs_locomotiva','div_cs_consulta','lbl_cs_consulta');
	arMenus[30] = new stMenu('td_cs_veiculos','div_cs_veiculos','div_cs_consulta','lbl_cs_consulta');
	arMenus[17] = new stMenu('td_cs_sair','div_cs_sair','div_cs_consulta','lbl_cs_consulta');
	// mn_manutencao
	arMenus[18] = new stMenu('td_mn_principal','div_mn_principal','div_mn_manutencao','lbl_mn_manutencao');
	arMenus[19] = new stMenu('td_mn_patio','div_mn_patio','div_mn_manutencao','lbl_mn_manutencao');
	arMenus[20] = new stMenu('td_mn_trem','div_mn_trem','div_mn_manutencao','lbl_mn_manutencao');
	arMenus[21] = new stMenu('td_nm_tripulacao','div_nm_tripulacao','div_mn_manutencao','lbl_mn_manutencao');
	arMenus[22] = new stMenu('td_mn_sair','div_mn_sair','div_mn_manutencao','lbl_mn_manutencao');
	// pg_programacao
	arMenus[23] = new stMenu('td_pg_principal','div_pg_principal','div_pg_programacao','lbl_pg_programacao');
	arMenus[24] = new stMenu('td_pg_carreg','div_pg_carreg','div_pg_programacao','lbl_pg_programacao');
	arMenus[25] = new stMenu('td_pg_trem','div_pg_trem','div_pg_programacao','lbl_pg_programacao');
	arMenus[26] = new stMenu('td_pg_sair','div_pg_sair','div_pg_programacao','lbl_pg_programacao');

	function AlternarMenus(number, assist) {
        AlternarLogo();
        if (assist == true ) {
            return;
        }
        //AlternarLogo();
        // Desativa os MENUS
		for (i=0;i<arMenus.length;i++) {
			m = document.getElementById(arMenus[i].menu).className = 'mn';
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
            m = document.getElementById(arMenus[number].menu).className = 'mns';
            c = document.getElementById(arMenus[number].conteudo).style.display = '';
            d = document.getElementById(arMenus[number].div).style.display = '';
            l = document.getElementById(arMenus[number].lbl).style.display = '';
    	} else {
            number = (<%= (Object)session.getAttribute("menu")%>);
            if (number == null) { number = 0; }
            m = document.getElementById(arMenus[number].menu).className = 'mns';
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

	arSuperMenu[1] = new stSuperMenu('div_tb_tabelas');
	arSuperMenu[2] = new stSuperMenu('div_pg_programacao');
	arSuperMenu[3] = new stSuperMenu('div_op_operacao');
	arSuperMenu[4] = new stSuperMenu('div_cs_consulta');
	arSuperMenu[5] = new stSuperMenu('div_mn_manutencao');

    function AlternarSuperMenu(number) {
        AlternarLogo();
       // Desativa os SUPER MENU
       for (i=0;i<arSuperMenu.length;i++) {
           s = document.getElementById(arSuperMenu[i].smenu).style.display = 'none';
       }
       for (i=0;i<arMenus.length;i++) {
           l = document.getElementById(arMenus[i].lbl).style.display = 'none';
       }
       // Ativa o SUPER MENU
       if (number != null ) {
           s = document.getElementById(arSuperMenu[number].smenu).style.display = '';
       } else {
           s = document.getElementById(arSuperMenu[number].smenu).style.display = '';
       }
   }

</SCRIPT>

<!-- ###################################################################  -->
<DIV id="div_principal" style="DISPLAY: none">
  <table style="BORDER-LEFT: #9ACEDD 1px solid" width="100%" height="50" border="0" cellpadding="3" cellspacing="0">
    <tr>
      <td width="140" height="25" id="pr_tabelas" class="spmns">
        <h:outputLink value="#" onclick="AlternarSuperMenu(1), AlternarMenus(1)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_tabelas_TT_ta}"/>
        </h:outputLink>
      </td>
      <td width="140" height="25" id="pr_programacao" class="spmns">
        <h:outputLink value="#" onclick="AlternarSuperMenu(2), AlternarMenus(24)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_programacao_TT_ta}"/>
        </h:outputLink>
      </td>
      <td width="140" height="25" id="pr_operacao" class="spmns">
        <h:outputLink value="#" onclick="AlternarSuperMenu(3), AlternarMenus(8)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_operacao_TT_ta}"/>
        </h:outputLink>
      </td>
      <td width="140" height="25" id="pr_consulta" class="spmns">
        <h:outputLink value="#" onclick="AlternarSuperMenu(4), AlternarMenus(14)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_consulta_TT_ta}"/>
        </h:outputLink>
      </td>
      <td width="140" height="25" id="pr_manutencao" class="spmns">
        <h:outputLink value="#" onclick="AlternarSuperMenu(5), AlternarMenus(19)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_manutencao_TT_ta}"/>
        </h:outputLink>
      </td>
      <td width="140" height="25" id="pr_sair" class="spmns">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </td>
    </tr>
    <tr>
      <td height="25">      </td>
    </tr>
  </table>
</DIV>

<!-- ################################ 1 ################################  -->
<DIV id="div_tb_tabelas" style="DISPLAY: none">
  <TABLE style="BORDER-LEFT: #9ACEDD 1px solid" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_tb_principal" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarSuperMenu(0)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_principal_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_cadastro" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(1)" styleClass="mnt">
          <h:outputText value="#{iimsg.tb_cadastro_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_grupos" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(2)" styleClass="mnt">
          <h:outputText value="#{iimsg.tb_grupos_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_matriz" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(3)" styleClass="mnt">
          <h:outputText value="#{iimsg.tb_matriz_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_seguranca" width="130" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(4)" styleClass="mnt">
          <h:outputText value="#{iimsg.tb_seguranca_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_codificacoes" width="110" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(5)" styleClass="mnt">
          <h:outputText value="#{iimsg.tb_codificacoes_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_tb_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>

    <TR>
      <TD class="mntbct" colspan="7" height="25">
        <DIV class="mnct" id="div_tb_principal" style="DISPLAY: none">        </DIV>
        <DIV class="mnct" id="div_tb_cadastro" style="DISPLAY: none">
          <ps:psCommandLink value="#{iimsg.railw_TT_ta}" onmousedown="af('railwpsq',1);"  immediate="true" styleClass="mnt" action="#{cadRailwBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.unprd_TT_ta}" onmousedown="af('unprdpsq',1);"  immediate="true" styleClass="mnt" action="#{cadUnprdBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.brnch_TT_ta}" onmousedown="af('brnchpsq',1);"  immediate="true" styleClass="mnt" action="#{cadBrnchBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.rwloc_TT_ta}" onmousedown="af('rwlocpsq',1);"  immediate="true" styleClass="mnt" action="#{cadRwlocBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.rwsta_TT_ta}" onmousedown="af('rwstapsq',1);"  immediate="true" styleClass="mnt" action="#{cadRwstaBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.rwwsp_TT_ta}" onmousedown="af('rwwsppsq',1);"  immediate="true" styleClass="mnt" action="#{cadRwwspBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.area_TT_ta}"  onmousedown="af('areapsq',1);"   immediate="true" styleClass="mnt" action="#{cadAreaBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.track_TT_ta}" onmousedown="af('trackpsq',1);"  immediate="true" styleClass="mnt" action="#{cadTrackBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.sectn_TT_ta}" onmousedown="af('sectnpsq',1);"  immediate="true" styleClass="mnt" action="#{cadSectnBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.comdt_TT_ta}" onmousedown="af('comdtpsq',1);"  immediate="true" styleClass="mnt" action="#{cadComdtBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.prdct_TT_ta}" onmousedown="af('prdctpsq',1);"  immediate="true" styleClass="mnt" action="#{cadPrdctBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.custm_TT_ta}" onmousedown="af('custmpsq',1);"  immediate="true" styleClass="mnt" action="#{cadCustmBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.busun_TT_ta}" onmousedown="af('busunpsq',1);"  immediate="true" styleClass="mnt" action="#{cadBusunBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.emply_TT_ta}" onmousedown="af('emplypsq',1);"  immediate="true" styleClass="mnt" action="#{cadEmplyBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.vhcle_TT_ta}" onmousedown="af('vhclepsq',1);"  immediate="true" styleClass="mnt" action="#{cadVhcleBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.vheng_TT_ta}" onmousedown="af('vhengpsq',1);"  immediate="true" styleClass="mnt" action="#{cadVhengBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.vhwag_TT_ta}" onmousedown="af('vhwagpsq',1);"  immediate="true" styleClass="mnt" action="#{cadVhwagBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.menumasternetw_TT_ta}" onmousedown="af('menumastercad',1);"  immediate="true" styleClass="mnt" action="#{cadMenuMasterBean.doObternull}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.menuopermgmt_TT_ta}" onmousedown="af('menuopermgmtcad',1);"  immediate="true" styleClass="mnt" action="#{cadMenuOperMgmtBean.doObternull}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_tb_grupos" style="DISPLAY: none">
          <ps:psCommandLink value="#{iimsg.vhcgd_TT_ta}" onmousedown="af('vhcgdpsq',2);"  immediate="true" styleClass="mnt" action="#{cadVhcgdBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.vhcgl_TT_ta}" onmousedown="af('vhcglpsq',2);"  immediate="true" styleClass="mnt" action="#{cadVhcglBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.cusgd_TT_ta}" onmousedown="af('cusgdpsq',2);"  immediate="true" styleClass="mnt" action="#{cadCusgdBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.cusgl_TT_ta}" onmousedown="af('cusglpsq',2);"  immediate="true" styleClass="mnt" action="#{cadCusglBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.locgd_TT_ta}" onmousedown="af('locgdpsq',2);"  immediate="true" styleClass="mnt" action="#{cadLocgdBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.locgl_TT_ta}" onmousedown="af('locglpsq',2);"  immediate="true" styleClass="mnt" action="#{cadLocglBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.brngd_TT_ta}" onmousedown="af('brngdpsq',2);"  immediate="true" styleClass="mnt" action="#{cadBrngdBean.doSelecionar}">
          </ps:psCommandLink>
          <h:outputText value="{#{iimsg.brngl_TT_ta}}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_tb_matriz" style="DISPLAY: none">
          <h:outputText value="{Quadro-de-Distancias}" styleClass="mnt"/>
          <h:outputText value="{Quadro-de-Precedencia}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_tb_seguranca" style="DISPLAY: none">
          <ps:psCommandLink value="#{iimsg.role_TT_ta}" onmousedown="af('rolepsq',4);"  immediate="true" styleClass="mnt" action="#{cadRoleBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.rlopr_TT_ta}" onmousedown="af('rloprpsq',4);"  immediate="true" styleClass="mnt" action="#{cadRloprBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.userx_TT_ta}" onmousedown="af('userxpsq',4);"  immediate="true" styleClass="mnt" action="#{cadUserxBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.help_TT_ta}" onmousedown="af('helppsq',4);"  immediate="true" styleClass="mnt" action="#{cadHelpBean.doSelecionar}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_tb_codificacoes" style="DISPLAY: none">
          <h:outputText value="Em construção..." styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_tb_sair" style="DISPLAY: none"></DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>

<!-- ################################ 2 ################################  -->
<DIV id="div_op_operacao" style="DISPLAY: none">
  <TABLE style="BORDER-LEFT: #9ACEDD 1px solid" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_op_principal_oper" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarSuperMenu(0)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_principal_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_op_patio" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(8)" styleClass="mnt">
          <h:outputText value="#{iimsg.op_patio_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_op_trem" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(9)" styleClass="mnt">
          <h:outputText value="#{iimsg.op_trem_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_op_veiculo" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(10)" styleClass="mnt">
          <h:outputText value="#{iimsg.op_veiculo_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_op_ordservico" width="160" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(11)" styleClass="mnt">
          <h:outputText value="#{iimsg.op_ordservico_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_op_tripulacao" width="160" height="25">
        <ps:psCommandLink id="aExeCrewopr" value="#{iimsg.op_tripulacao_TT_ta}" onmousedown="fExec('crewoprcad', tran, this.id, 'yes', '', 'xrec_Crewopr');" immediate="true" styleClass="mnt" action="#{cadCrewoprBean.doObternull}">
        </ps:psCommandLink>
      </TD>
      <TD class="mn" id="td_op_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>

    <TR>
      <TD class="mntbct" colspan="8" height="25">
        <DIV class="mnct" id="div_op_principal" style="DISPLAY: none">        </DIV>
        <DIV class="mnct" id="div_op_patio" style="DISPLAY: none">
          <ps:psCommandLink id="aExeYardopr" value="#{iimsg.yardopr_TT_ta}" onmousedown="fExec('yardoprcad', tran, this.id, 'yes', '', 'xrec_Yardopr');" immediate="true" styleClass="mnt" action="#{cadYardoprBean.doObternull}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeYrdmpList" value="#{iimsg.yrdmplist_TT_ta}" onmousedown="fExec('yrdmplistpsq', tran, this.id, 'yes', '', 'xrec_YrdmpList');" immediate="true" styleClass="mnt" action="#{cadYrdmpListBean.doSelecionar}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_op_trem" style="DISPLAY: none">
          <ps:psCommandLink id="aExeTrainopr" value="#{iimsg.trainopr_TT_ta}" onmousedown="fExec('trainoprcad', tran, this.id, 'yes', '', 'xrec_Trainopr');" immediate="true" styleClass="mnt" action="#{cadTrainoprBean.doObternull}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_op_veiculo" style="DISPLAY: none">
          <ps:psCommandLink id="aExeWagLoadOpr" value="#{iimsg.wagloadopr_TT_ta}" onmousedown="fExec('wagloadoprcad', tran, this.id, 'yes', '', 'xrec_WagLoadOpr');" immediate="true" styleClass="mnt" action="#{cadWagLoadOprBean.doObternull}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_op_ordservico" style="DISPLAY: none">
          <h:outputText value="Em construção..." styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_op_tripulacao" style="DISPLAY: none">
        </DIV>
        <DIV class="mnct" id="div_op_sair" style="DISPLAY: none"></DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>

<!-- ################################ 3 ################################  -->
<DIV id="div_cs_consulta" style="DISPLAY: none">
  <TABLE style="BORDER-LEFT: #9ACEDD 1px solid" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_cs_principal" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarSuperMenu(0)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_principal_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_local" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(14)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_local_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_trem" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(15)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_trem_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_tripulacao" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(16)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_tripulacao_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_vagao" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(28)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_vagao_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_locomotiva" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(29)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_locomotiva_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_veiculos" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(30)" styleClass="mnt">
          <h:outputText value="#{iimsg.cs_veiculos_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_cs_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>

    <TR>
      <TD class="mntbct" colspan="8" height="25">
        <DIV class="mnct" id="div_cs_principal" style="DISPLAY: none">        </DIV>
        <DIV class="mnct" id="div_cs_local" style="DISPLAY: none">
          <ps:psCommandLink id="aExeVhwagLocQty" value="#{iimsg.vhwaglocqty_TT_ta}" onmousedown="fExec('vhwaglocqtypsq', tran, this.id, 'yes', '', 'xrec_VhwagLocQty');" immediate="true" styleClass="mnt" action="#{cadVhwagLocQtyBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhwagLocIdv" value="#{iimsg.vhwaglocidv_TT_ta}" onmousedown="fExec('vhwaglocidvpsq', tran, this.id, 'yes', '', 'xrec_VhwagLocIdv');" immediate="true" styleClass="mnt" action="#{cadVhwagLocIdvBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhwagDstList" value="#{iimsg.vhwagdstlist_TT_ta}" onmousedown="fExec('vhwagdstlistpsq', tran, this.id, 'yes', '', 'xrec_VhwagDstList');" immediate="true" styleClass="mnt" action="#{cadVhwagDstListBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhengLocQty" value="#{iimsg.vhenglocqty_TT_ta}" onmousedown="fExec('vhenglocqtypsq', tran, this.id, 'yes', '', 'xrec_VhengLocQty');" immediate="true" styleClass="mnt" action="#{cadVhengLocQtyBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhengLocIdv" value="#{iimsg.vhenglocidv_TT_ta}" onmousedown="fExec('vhenglocidvpsq', tran, this.id, 'yes', '', 'xrec_VhengLocIdv');" immediate="true" styleClass="mnt" action="#{cadVhengLocIdvBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhpcrLocIdv" value="#{iimsg.vhpcrlocidv_TT_ta}" onmousedown="fExec('vhpcrlocidvpsq', tran, this.id, 'yes', '', 'xrec_VhpcrLocIdv');" immediate="true" styleClass="mnt" action="#{cadVhpcrLocIdvBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeVhfbsLocIdv" value="#{iimsg.vhfbslocidv_TT_ta}" onmousedown="fExec('vhfbslocidvpsq', tran, this.id, 'yes', '', 'xrec_VhfbsLocIdv');" immediate="true" styleClass="mnt" action="#{cadVhfbsLocIdvBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeCrewLocList" value="#{iimsg.crewloclist_TT_ta}" onmousedown="fExec('crewloclistpsq', tran, this.id, 'yes', '', 'xrec_CrewLocList');" immediate="true" styleClass="mnt" action="#{cadCrewLocListBean.doSelecionar}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_cs_trem" style="DISPLAY: none">
          <ps:psCommandLink id="aExeTrainCircList" value="#{iimsg.traincirclist_TT_ta}" onmousedown="fExec('traincirclistpsq', tran, this.id, 'yes', '', 'xrec_TrainCircList');" immediate="true" styleClass="mnt" action="#{cadTrainCircListBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeTrainCompList" value="#{iimsg.traincomplist_TT_ta}" onmousedown="fExec('traincomplistpsq', tran, this.id, 'yes', '', 'xrec_TrainCompList');" immediate="true" styleClass="mnt" action="#{cadTrainCompListBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeTrainOperList" value="#{iimsg.trainoperlist_TT_ta}" onmousedown="fExec('trainoperlistpsq', tran, this.id, 'yes', '', 'xrec_TrainOperList');" immediate="true" styleClass="mnt" action="#{cadTrainOperListBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink id="aExeTrainOperPctList" value="#{iimsg.trainoperpctlist_TT_ta}" onmousedown="fExec('trainoperpctlistpsq', tran, this.id, 'yes', '', 'xrec_TrainOperPctList');" immediate="true" styleClass="mnt" action="#{cadTrainOperPctListBean.doSelecionar}">
          </ps:psCommandLink>
          <h:outputText value="{Transit-Time}" styleClass="mnt"/>
          <h:outputText value="{Previsao-Chegada}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_cs_tripulacao" style="DISPLAY: none">
          <ps:psCommandLink value="#{iimsg.crewdetails_TT_ta}" onmousedown="af('crewlistpsq',16);"  immediate="true" styleClass="mnt" action="#{cadCrewListBean.doSelecionar}">
          </ps:psCommandLink>
          <ps:psCommandLink value="#{iimsg.crewholist_TT_ta}" onmousedown="af('crewholistpsq',16);"  immediate="true" styleClass="mnt" action="#{cadCrewHoListBean.doSelecionar}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_cs_vagao" style="DISPLAY: none">
          <ps:psCommandLink id="aExeVhwagDetails" value="#{iimsg.vhwagdetails_TT_ta}" onmousedown="fExec('vhwagdetailscad', tran, this.id, 'yes', '', 'xrec_VhwagDetails');" immediate="true" styleClass="mnt" action="#{cadVhwagDetailsBean.doNovo}">
          </ps:psCommandLink>
          <h:outputText value="{Fila}" styleClass="mnt"/>
          <h:outputText value="{Formaçao-de-Trens}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_cs_locomotiva" style="DISPLAY: none">
          <ps:psCommandLink id="aExeVhengDetails" value="#{iimsg.vhengdetails_TT_ta}" onmousedown="fExec('vhengdetailscad', tran, this.id, 'yes', '', 'xrec_VhengDetails');" immediate="true" styleClass="mnt" action="#{cadVhengDetailsBean.doNovo}">
          </ps:psCommandLink>
          <h:outputText value="{Abastecimento}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_cs_veiculos" style="DISPLAY: none">
          <ps:psCommandLink id="aExeVhoprhoList" value="#{iimsg.vhoprholist_TT_ta}" onmousedown="fExec('vhoprholistpsq', tran, this.id, 'yes', '', 'xrec_VhoprhoList');" immediate="true" styleClass="mnt" action="#{cadVhoprhoListBean.doSelecionar}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_cs_sair" style="DISPLAY: none"></DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>

<!-- ################################ 4 ################################  -->
<DIV id="div_mn_manutencao" style="DISPLAY: none">
  <TABLE style="BORDER-LEFT: #9ACEDD 1px solid" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_mn_principal" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarSuperMenu(0)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_principal_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_mn_patio" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(19)" styleClass="mnt">
          <h:outputText value="#{iimsg.mn_patio_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_mn_trem" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(20)" styleClass="mnt">
          <h:outputText value="#{iimsg.mn_trem_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_nm_tripulacao" width="100" height="25">
        <ps:psCommandLink id="aExeCrewmnt" value="#{iimsg.nm_tripulacao_TT_ta}" onmousedown="fExec('crewmntcad', tran, this.id, 'yes', '', 'xrec_Crewmnt');" immediate="true" styleClass="mnt" action="#{cadCrewmntBean.doObternull}">
        </ps:psCommandLink>
      </TD>
      <TD class="mn" id="td_mn_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>

    <TR>
      <TD class="mntbct" colspan="8" height="25">
        <DIV class="mnct" id="div_mn_principal" style="DISPLAY: none">        </DIV>
        <DIV class="mnct" id="div_mn_patio" style="DISPLAY: none">
          <h:outputText value="{Operação-Patio}" styleClass="mnt"/>
          <ps:psCommandLink id="aExeWagLoadMnt" value="#{iimsg.wagloadmnt_TT_ta}" onmousedown="fExec('wagloadmntcad', tran, this.id, 'yes', '', 'xrec_WagLoadMnt');" immediate="true" styleClass="mnt" action="#{cadWagLoadMntBean.doObternull}">
          </ps:psCommandLink>
        </DIV>
        <DIV class="mnct" id="div_mn_trem" style="DISPLAY: none">
          <h:outputText value="{Composiçao}" styleClass="mnt"/>
          <h:outputText value="{Horário}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_nm_tripulacao" style="DISPLAY: none">
        </DIV>
        <DIV class="mnct" id="div_mn_sair" style="DISPLAY: none"></DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>

<!-- ################################ 5 ################################  -->
<DIV id="div_pg_programacao" style="DISPLAY: none">
  <TABLE style="BORDER-LEFT: #9ACEDD 1px solid" height="50" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TR>
      <TD class="mn" id="td_pg_principal" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarSuperMenu(0)" styleClass="mnt">
          <h:outputText value="#{iimsg.pr_principal_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_pg_carreg" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(24)" styleClass="mnt">
          <h:outputText value="#{iimsg.pg_carreg_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_pg_trem" width="100" height="25">
        <h:outputLink value="#" onclick="AlternarMenus(25)" styleClass="mnt">
          <h:outputText value="#{iimsg.pg_trem_TT_ta}"/>
        </h:outputLink>
      </TD>
      <TD class="mn" id="td_pg_sair" width="100" height="25">
        <h:commandLink value="#{iimsg.pr_logoff_TT_ta}" styleClass="mnt" action="#{loginBean.doLogout}"/>
      </TD>
    </TR>

    <TR>
      <TD class="mntbct" colspan="8" height="25">
        <DIV class="mnct" id="div_pg_principal" style="DISPLAY: none">        </DIV>
        <DIV class="mnct" id="div_pg_carreg" style="DISPLAY: none">
          <h:outputText value="{Prog-Diaria}" styleClass="mnt"/>
          <h:outputText value="{Prog-Mensal}" styleClass="mnt"/>
          <h:outputText value="{Reprog-Diaria}" styleClass="mnt"/>
          <h:outputText value="{Reprog-Mensal}" styleClass="mnt"/>
          <h:outputText value="{Ctl-Atualizaçao}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_pg_trem" style="DISPLAY: none">
          <ps:psCommandLink id="aExeTrainPgmList" value="#{iimsg.trainpgmlist_TT_ta}" onmousedown="fExec('trainpgmlistpsq', tran, this.id, 'yes', '', 'xrec_TrainPgmList');" immediate="true" styleClass="mnt" action="#{cadTrainPgmListBean.doSelecionar}">
          </ps:psCommandLink>
          <h:outputText value="{Meta-Ciclo-Trem}" styleClass="mnt"/>
          <h:outputText value="{Rotas de Tren}" styleClass="mnt"/>
        </DIV>
        <DIV class="mnct" id="div_pg_sair" style="DISPLAY: none"></DIV>
      </TD>
    </TR>
  </TABLE>
</DIV>
