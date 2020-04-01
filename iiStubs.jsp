<SCRIPT type="text/javascript">

//##############################################################################

    // ABA

	function stAba(aba,tab,flg,atp,act,avs) {
        this.aba = aba;
        this.tab = tab;
        this.flg = flg;
        this.atp = atp;
        this.act = act;
        this.avs = avs;
	}

    // var arAbas = new Array();
    // definido no corpo da pagina que contém ABA

    // AlternarAbas
    function AlternarAbas(cadbeanx, number, mv) {
        //alert('aa'+number);
        if(ValidarAlternarAbas(number)) { return; }
	    // Desativa as ABAS
        for (i=1;i<arAbas.length;i++) {
		    el(arAbas[i].tab).style.display = 'none';
            abact = arAbas[i].act;
            if (abact == 'a') {
                //alert('i'+i);
                el(arAbas[i].aba).className = 'act_a';
            } else if (abact == 'b') {
                el(arAbas[i].aba).className = 'act_b';
            } else if (abact == 'c') {
                el(arAbas[i].aba).className = 'act_c';
            } else {
                abatp = arAbas[i].atp;
                if (abatp == 'm') {
                    el(arAbas[i].aba).className = 'abm';
                } else {
                    el(arAbas[i].aba).className = 'ab';
                }
            }
	    }
	    // Ativa as ABAS
	    if (number != null) {
            //alert('bb'+number);
            AlternarFlag(tabsvf);
            abax = number;
            abatp = arAbas[number].atp;
            if (cadbeanx != null) {
                el('iiSaveStub').src = 'iiSaveStub.jsp?cadbeanxparm='+cadbeanx+'&abaparm='+number+'&mv='+abatp;
            }
            AlternarUfmv(number);
            AlternarFlagAbaTp(abatp);
            el(arAbas[number].aba).className = 'abs';
            el(arAbas[number].tab).style.display = '';
            //alert('abax'+abax);
	    } else {
            AlternarFlag(tabsvf);
            number = (<%= (Object)session.getAttribute(((String) session.getAttribute("cadbeanx"))+"x")%>);
            if (number == null) {number = 1;}
            abax = number;
            // Obtem Tipo da Ultima aba acionada
            //abatp = '<%--= (Object)session.getAttribute(((String) session.getAttribute("cadbeanx"))+"tp")--%>';
            abatp = arAbas[number].atp;
            if (cadbeanx != null) {
                el('iiSaveStub').src = 'iiSaveStub.jsp?cadbeanxparm='+cadbeanx+'&abaparm='+number+'&mv='+abatp;
            }
			AlternarUfmv(number);
            AlternarFlagAbaTp(abatp);
            el(arAbas[number].aba).className = 'abs';
		    el(arAbas[number].tab).style.display = '';
	    }
    }

    // AlternarAbas_vert
    function AlternarAbas_vert(cadbeanx, number, mv) {
        if(ValidarAlternarAbas(number)) { return; }

	    // Desativa as ABAS
        for (i=1;i<arAbas.length;i++) {
		    el(arAbas[i].tab).style.display = 'none';
            abact = arAbas[i].act;
            if (abact == 'a') {
                el(arAbas[i].aba).className = 'actv_a';
            } else if (abact == 'b') {
                el(arAbas[i].aba).className = 'actv_b';
            } else if (abact == 'c') {
                el(arAbas[i].aba).className = 'actv_c';
            } else {
                abatp = arAbas[i].atp;
                if (abatp == 'm') {
                    el(arAbas[i].aba).className = 'abvm';
                } else {
                    el(arAbas[i].aba).className = 'abv';
                }
            }
	    }
	    // Ativa as ABAS
	    if (number != null) {
            AlternarFlag(tabsvf);
            abax = number;
            abatp = arAbas[number].atp;
            if (cadbeanx != null) {
                el('iiSaveStub').src = 'iiSaveStub.jsp?cadbeanxparm='+cadbeanx+'&abaparm='+number+'&mv='+abatp;
            }
            AlternarUfmv(number);
            AlternarFlagAbaTp(abatp);
            el(arAbas[number].aba).className = 'abvs';
            el(arAbas[number].tab).style.display = '';
	    } else {
            AlternarFlag(tabsvf);
            number = (<%= (Object)session.getAttribute(((String) session.getAttribute("cadbeanx"))+"x")%>);
            if (number == null) {number = 1;}
            abax = number;
            // Obtem Tipo da Ultima aba acionada
            //abatp = '<%--= (Object)session.getAttribute(((String) session.getAttribute("cadbeanx"))+"tp")--%>';
            abatp = arAbas[number].atp;
            if (cadbeanx != null) {
                el('iiSaveStub').src = 'iiSaveStub.jsp?cadbeanxparm='+cadbeanx+'&abaparm='+number+'&mv='+abatp;
            }
			AlternarUfmv(number);
            AlternarFlagAbaTp(abatp);
			el(arAbas[number].aba).className = 'abvs';
		    el(arAbas[number].tab).style.display = '';
	    }
    }

//##############################################################################

    // Sub ABA

	function stSubAba(subaba,subtab) {
		this.subaba = subaba;
		this.subtab = subtab;
	}

    // var arSubAbas = new Array();
    // definido no corpo da pagina que contém Sub ABA

    // AlternarSubAbas
    function AlternarSubAbas(row, col) {
	    // Desativa as Sub ABAS
        for (var i=1; i < arSubAbas.length; i++) {
            for (var j=1; j < arSubAbas[i].length; j++) {
                el(arSubAbas[i][j].subaba).className = 'ab';
                el(arSubAbas[i][j].subtab).style.display = 'none';
            }
        }
	    // Ativa as Sub ABAS
	    if (row != null && col != null) {
            el(arSubAbas[row][col].subaba).className = 'abs';
            el(arSubAbas[row][col].subtab).style.display = '';
	    } else {
            for (var i=1; i < arSubAbas.length; i++) {
                el(arSubAbas[i][1].subaba).className = 'abs';
                el(arSubAbas[i][1].subtab).style.display = '';
            }
        }
    }

    // AlternarSubAbas_vert
    function AlternarSubAbas_vert(row, col) {
	    // Desativa as Sub ABAS
        for (var i=1; i < arSubAbas.length; i++) {
            for (var j=1; j < arSubAbas[i].length; j++) {
                el(arSubAbas[i][j].subaba).className = 'abv';
                el(arSubAbas[i][j].subtab).style.display = 'none';
            }
        }
	    // Ativa as Sub ABAS
	    if (row != null && col != null) {
            el(arSubAbas[row][col].subaba).className = 'abvs';
            el(arSubAbas[row][col].subtab).style.display = '';
	    } else {
            for (var i=1; i < arSubAbas.length; i++) {
                el(arSubAbas[i][1].subaba).className = 'abvs';
                el(arSubAbas[i][1].subtab).style.display = '';
            }
        }
    }

//##############################################################################

    // SrcField
	function SrcField(value) {
        if (value == 0) {
			return '../imagens/fv_vd.gif';
		} else if (value == 5) {
			return '../imagens/fv_am.gif';
		} else if (value == 8) {
			return '../imagens/fl_cz.gif';
		} else if (value == 9) {
			return '../imagens/fv_vm.gif';
		} else {
            return '../imagens/pixel_transp.gif';
        }
	}

    // ValueSrcField
	function ValueSrcField(value) {
        //value = http://localhost:8080/defaultroot/imagens/fv_vd.gif
        ini = value.indexOf("imagens/");
        fim = value.length;
        value = value.substring(ini,fim);
		if (value == 'imagens/fv_vd.gif') {
			return 0;
		} else if (value == 'imagens/fv_am.gif') {
			return 5;
		} else if (value == 'imagens/fl_cz.gif') {
			return 8;
		} else if (value == 'imagens/fv_vm.gif') {
			return 9;
		} else {
            return ;
        }
	}

//##############################################################################

    // AlternarSuperFlag
    function AlternarSuperFlag(tabsvf) {
        //alert(el('flg_vc'));
    	if(el('flg_vc')) {
            //el('flg_vc').src = AlternarSubFlag(tabsvf.charAt(27));
            el('flg_vc').src = AlternarSubFlag(tabsvf.charAt(47));
        }
    }

    // AlternarSubFlag
    function AlternarSubFlag(flag) {
        if (flag == 0) {
            return '../imagens/fl_vd.gif';
        } else if (flag == 5) {
            return '../imagens/fl_am.gif';
        } else if (flag == 8) {
            return '../imagens/fl_cz.gif';
        } else {
            return '../imagens/fl_vm.gif';
        }
    }

    // AlternarFlag
    function AlternarFlag(tabsvf) {
        if(ValidarTabsvf_30()) {
            tabsvf_in_tr = parent.el('cadForm:tabsvf_in').value;
        } else {
            tabsvf_in_tr = parent.el('cadForm:tabsvf_tr').value;
        }
        for (i=1;i<arAbas.length;i++) {
            if (tabsvf_in_tr.charAt(i) == 1 && arAbas[i].avs != 'tr_aba_notr') {
                el(arAbas[i].avs).style.display = '';
            } else {
                el(arAbas[i].avs).style.display = 'none';
            }
        }
        AlternarSuperFlag(tabsvf);
        for (i=1;i<arAbas.length;i++) {
            if (arAbas[i].flg != null) {
                var arAbasFlag = new Array();
                arAbasFlag[i] = tabsvf.charAt(i);
                abaflag = arAbasFlag[i];
                el(arAbas[i].flg).src = AlternarSubFlag(abaflag);
            }
        }
    }

    // AlternarFlagAbaTp
    function AlternarFlagAbaTp(abatp) {
        if (el('flg_abatp')) {
            if (abatp == 'm') {
                el('flg_abatp').src = '../imagens/fl_mv.gif';
            } else {
                el('flg_abatp').src = '../imagens/fl_uv.gif';
            }
        }
        if (abatp != 'u') {
            if (el('cadForm:aUpdate')) {
                el('cadForm:aUpdate').style.display = 'none';
            }
            if (el('cadForm:aCancelar')) {
                el('cadForm:aCancelar').style.display = 'none';
            }
        } else {
            if (el('cadForm:aUpdate')) {
                el('cadForm:aUpdate').style.display = '';
            }
            if (el('cadForm:aCancelar')) {
                el('cadForm:aCancelar').style.display = '';
            }
        }
    }

    // AlternarUfmv
    function AlternarUfmv(number) {
        stx = str;
        if (abatp == 'u') {
            stc = str.charAt(0);
            stx = stx.replace(stc, 0);
        }
        stc = str.charAt(number);
        stx = stx.replace(stc, 0);
    }

    // AlternarTabsvf
    function AlternarTabsvf() {
        tabsvf = parent.el('cadForm:tabsvf').value;
        vfAt = tabsvf.charAt(0);
//        alert(vfAt);
        if (vfAt != 3) {
//            tabsvf = '2'+tabsvf.substr(1);
        }
//        alert("tabsvf tb: "+tabsvf);
        parent.el('cadForm:tabsvf').value = tabsvf;
    }

//##############################################################################

    // ValidarAlternarAbas
    function ValidarAlternarAbas(number) {
        // upflag = 0: que nao tem intençao de alterar o valor
        // upflag = 1: que tem intençao de alterar o valor
        // abatp: Aba que está aberta (origem)
        // abatp_dest: Aba que será aberta (destino)
        // tabsvf_st: Status (cod) tabsvf, corresponde a posiçao 0,1 do tabsvf
        // cod. 0: nao tem intençao de alterar o valor
        // cod. 1: tem intençao de alterar o valor
        // cod. 9: exception (chave duplicada)
	    if (number != null) {
            abatp_dest = arAbas[number].atp;
        } else {
            abatp_dest = arAbas[1].atp;
        }
        tabsvf = parent.el('cadForm:tabsvf').value;
        tabsvf_st = tabsvf.substring(0,1);
        tabsvf_abax = tabsvf.substring(abax,abax+1);
        //tabsvf_30 = tabsvf.substring(29,30);
        tabsvf_30 = tabsvf.substring(49,50);

/*      alert("upflag: "+upflag);
        alert("tabsvf_st: "+tabsvf_st);
        alert("tabsvf_abax: "+tabsvf_abax);
        alert("tabsvf_30: "+tabsvf_30);
        alert("tabsvf vf: "+tabsvf);
        ss = '2'+tabsvf.substr(1); tabsvf = ss;
        alert("tabsvf tb: "+tabsvf);
        parent.document.getElementById('cadForm:tabsvf').value = tabsvf;
*/
        AlternarTabsvf();
/*
        if (upflag == 1 && tabsvf_st == '0') { upflag = 0; }
        else if (upflag == 0 && tabsvf_st == '9') { upflag = 1; }
        else if (tabsvf_st == 1 && tabsvf_abax == '9') { upflag = 1; }
*/

        if (tabsvf_st == 1 || tabsvf_st == '9') { upflag = 1; }
//        else if (tabsvf_st == 1 && tabsvf_abax == '9') { upflag = 1; }

        if (upflag == 1 && abatp == 'm') {
            showpopup1(); // corrigir pendencias
            return true;
        } else if (upflag == 1 && abatp == 'u' && abatp_dest != 'u') {
            if (tabsvf_30 == 9) {
                showpopup30(); // inclusão inicial
                return true;
            } else {
                showpopup1(); // corrigir pendencias
                return true;
            }
        }
    }

    // ValidarTabsvf
    function ValidarTabsvf() {
        if(ValidarTabsvf_st()) {
            showpopup1(); // corrigir pendencias
            return true;
        }
    }

    // ValidarTabsvf_st
    function ValidarTabsvf_st() {
        tabsvf = parent.el('cadForm:tabsvf').value;
        tabsvf_st = tabsvf.substring(0,1);

        if (tabsvf_st == 1 || tabsvf_st == '9') {
            return true;
        }
    }

    // ValidarTabsvf_30
    function ValidarTabsvf_30() {
        if(ValidarTabsvf_st()) {
            return Tabsvf_30();
        }
    }

    // Tabsvf_30
    function Tabsvf_30() {
/*
        tabsvf = parent.el('cadForm:tabsvf').value;
        //tabsvf_30 = tabsvf.substring(29,30);
        tabsvf_30 = tabsvf.substring(49,50);
        if (tabsvf_30 == 9) {
            return true; // inclusão inicial
        } else {
            return false; // corrigir pendencias
        }
*/

        tabsvf = parent.el('cadForm:tabsvf').value;
        tabsvf_st1 = tabsvf.substring(0,1);
        tabsvf_30 = tabsvf.substring(49,50);
        abatp_dest1 = ""; // This the Critical Change Made on 100403
        //alert('abatp_dest1'+abatp_dest1);
        if (parent.arAbas) {
            //alert('abaxzzz'+abax);
            if (abax != null) { // This If returned abatp_dest1 undefnied
               if (abax != '0') {
                   abatp_dest1 = arAbas[abax].atp;
                   //alert('abatp_dest1aaaa'+abatp_dest1);
               }
            } else {
              abatp_dest1 = arAbas[1].atp;
              //alert('abatp_dest1bbbb'+abatp_dest1);
            }

            //AlternarTabsvf();

            if (tabsvf_st1 == 1 || tabsvf_st1 == '9') { upflag = 1; }
            //alert('abatp_dest1'+abatp_dest1);
            if (upflag == 1 && abatp == 'm') {
                return false; // corrigir pendencias
            } else if (upflag == 1 && abatp == 'u' && abatp_dest1 != 'u') {
                //alert('zzz');
                if (tabsvf_30 == 9) {
                    return true; // inclusão inicial
                } else {
                    return false; // corrigir pendencias
                }
            }

        }
            // alert('ssssaaaa');

            if (tabsvf_30 == 9) {
                return true; // inclusão inicial
            } else {
                return false; // corrigir pendencias

        }

    }

//##############################################################################

    // SRCFIELD

	function AlternarSrcFields(field, value) {
          if (parent.el(field)) {
            parent.el(field).src = SrcField(value);
          }
	}

/*
    // FIELD

	function stField(fld) {
        this.fld = fld;
	}

	// Alternar Fields

	function AlternarFields() {
		for(i=1; i<arFields.length; i++) {
			for(j=0; j<arFields[1].length; j++) {
				el(arFields[i][j].fld).src = SrcField(null);
			}
		}
	}

	function AltFields() {
      alert('hello');
//		el('i_nome').src = SrcField(value);
        document.getElementById('epec_tp_blp0_vc0').src = '../imagens/fv_vd.gif';
//        parent.document.getElementById('i_nome').src = '../imagens/fv_vd.gif';
      alert('hello11');
	}

	function AlternarFields(field, value) {
        alert(field);
        alert(value);
//		el('i_nome').src = SrcField(value);
        if(document.getElementById(field)) {
            alert('aqui');
//            document.getElementById('cadForm:tabPec:'+field).src = SrcField(value);
            document.getElementById(field).src = '../imagens/fv_vd.gif';
        }
	}
*/

//##############################################################################

    // FIELDS

    function stButton(fld) {
        this.fld = fld;
    }

    function stField(fld) {
        this.fld = fld;
    }

    function stSubFields(fld, bck) {
        this.fld = fld;
        this.bck = bck;
    }

    function stSubFields(fld, bck, vlf) {
        this.fld = fld;
        this.bck = bck;
        this.vlf = vlf;

    }

    // var arFields = new Array();
    // definido no corpo da pagina que controle dos campos

    // AlternarFields
    function AlternarFields(fld) {
        // Desativa as Sub FIELDS
        for (var i=1; i < arFields.length; i++) {
            obj = el('cadForm:'+arFields[i].fld);
            typ = obj.type;

            if (obj.src) {
                obj.src = '../imagens/btMessage_off.gif';
            } else /*if (typ == 'text') */ {
                obj.style.backgroundColor="#FFFFFF";
            }
        }
        // Ativa as Sub FIELDS
        for (var j=1; j < arSubFields[fld].length; j++) {
            obj = el('cadForm:'+arSubFields[fld][j].fld);
            bck = arSubFields[fld][j].bck;

            if (obj.src) {
                obj.src = '../imagens/btMessage.gif';
            } else {
                if (bck == '1') { // laranja
                    obj.style.backgroundColor="#FFE4D2";
                } else if (bck == '2') { // amarelo
                    obj.style.backgroundColor="#FFFFCC";
                } else {
                    obj.style.backgroundColor="#FFFFFF";
                }
            }
        }
    }

//##############################################################################

    // CLEFIELDS

    function stCleFields(fld, val) {
        this.fld = fld;
        this.val = val;
    }

    // var arCleFields = new Array();
    // definido no corpo da pagina que controle dos campos

    // CleFields
    function CleFields(fld) {
        for (var j=1; j < arCleFields[fld].length; j++) {
            obj = el('cadForm:'+arCleFields[fld][j].fld);
            objid = 'cadForm:'+arCleFields[fld][j].fld
            val = arCleFields[fld][j].val;
            if_el(objid, val);
        }
    }

</SCRIPT>
