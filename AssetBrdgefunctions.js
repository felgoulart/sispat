// onclickBlur FIELDS Function
function onclickBlur() {
    obj = this;
    obj.blur();
}
// onclickClf Clear FIELDS Function
function onclickClf() {
    obj = this;
    //clf(obj);;
}
// CLEAR FIELDS Function
function stCleFields(fld, val) {
    this.fld = fld;
    this.val = val;
}
 
function clFields(fld) {
var arCleFields = new Array();
// asset_cd_zona_cflczon 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_cd_zona_cflczon', '');
arCleFields[1][1] = new stCleFields('asset_cd_zona_cflczon_nap', '');
arCleFields[1][2] = new stCleFields('asset_cd_zona_cflczon_nap_desc', '');
// asset_cd_zona_cflczon_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_cd_zona_cflczon_nap', '');
arCleFields[2][1] = new stCleFields('asset_cd_zona_cflczon', '');
arCleFields[2][2] = new stCleFields('asset_cd_zona_cflczon_desc', '');
// asset_vl_gabarito_vert 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('asset_vl_gabarito_vert', '');
arCleFields[3][1] = new stCleFields('asset_vl_gabarito_vert_nap', '');
arCleFields[3][2] = new stCleFields('asset_vl_gabarito_vert_nap_desc', '');
// asset_vl_gabarito_vert_nap 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('asset_vl_gabarito_vert_nap', '');
arCleFields[4][1] = new stCleFields('asset_vl_gabarito_vert', '');
// asset_vl_gabarito_horz 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('asset_vl_gabarito_horz', '');
// asset_vl_gabarito_horz_nap 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('asset_vl_gabarito_horz_nap', '');
// asset_qt_vaos 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('asset_qt_vaos', '');
arCleFields[7][1] = new stCleFields('asset_qt_vaos_nap', '');
arCleFields[7][2] = new stCleFields('asset_qt_vaos_nap_desc', '');
// asset_qt_vaos_nap 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('asset_qt_vaos_nap', '');
// asset_pc_ramp 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_pc_ramp', '');
arCleFields[9][1] = new stCleFields('asset_pc_ramp_nap', '');
arCleFields[9][2] = new stCleFields('asset_pc_ramp_nap_desc', '');
// asset_pc_ramp_nap 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_pc_ramp_nap', '');
// asset_ex_ctt 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_ex_ctt', '');
arCleFields[11][1] = new stCleFields('asset_ex_ctt_nap', '');
arCleFields[11][2] = new stCleFields('asset_ex_ctt_nap_desc', '');
// asset_ex_ctt_nap 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_ex_ctt_nap', '');
arCleFields[12][1] = new stCleFields('asset_ex_ctt', '');
// asset_ex_ctt_ent 
arCleFields[13] = new Array();
arCleFields[13][0] = new stCleFields('asset_ex_ctt_ent', '');
arCleFields[13][1] = new stCleFields('asset_ex_ctt_ent_nap', '');
arCleFields[13][2] = new stCleFields('asset_ex_ctt_ent_nap_desc', '');
// asset_ex_ctt_ent_nap 
arCleFields[14] = new Array();
arCleFields[14][0] = new stCleFields('asset_ex_ctt_ent_nap', '');
// asset_ex_ctt_sai 
arCleFields[15] = new Array();
arCleFields[15][0] = new stCleFields('asset_ex_ctt_sai', '');
arCleFields[15][1] = new stCleFields('asset_ex_ctt_sai_nap', '');
arCleFields[15][2] = new stCleFields('asset_ex_ctt_sai_nap_desc', '');
// asset_ex_ctt_sai_nap 
arCleFields[16] = new Array();
arCleFields[16][0] = new stCleFields('asset_ex_ctt_sai_nap', '');
// asset_ex_ctt_fix 
arCleFields[17] = new Array();
arCleFields[17][0] = new stCleFields('asset_ex_ctt_fix', '');
arCleFields[17][1] = new stCleFields('asset_ex_ctt_fix_nap', '');
arCleFields[17][2] = new stCleFields('asset_ex_ctt_fix_nap_desc', '');
// asset_ex_ctt_fix_nap 
arCleFields[18] = new Array();
arCleFields[18][0] = new stCleFields('asset_ex_ctt_fix_nap', '');
// asset_vl_altura_lastro 
arCleFields[19] = new Array();
arCleFields[19][0] = new stCleFields('asset_vl_altura_lastro', '');
arCleFields[19][1] = new stCleFields('asset_vl_altura_lastro_nap', '');
arCleFields[19][2] = new stCleFields('asset_vl_altura_lastro_nap_desc', '');
// asset_vl_altura_lastro_nap 
arCleFields[20] = new Array();
arCleFields[20][0] = new stCleFields('asset_vl_altura_lastro_nap', '');
// asset_nr_refugios 
arCleFields[21] = new Array();
arCleFields[21][0] = new stCleFields('asset_nr_refugios', '');
arCleFields[21][1] = new stCleFields('asset_nr_refugios_nap', '');
arCleFields[21][2] = new stCleFields('asset_nr_refugios_nap_desc', '');
// asset_nr_refugios_nap 
arCleFields[22] = new Array();
arCleFields[22][0] = new stCleFields('asset_nr_refugios_nap', '');
// asset_aa_construcao 
arCleFields[23] = new Array();
arCleFields[23][0] = new stCleFields('asset_aa_construcao', '');
arCleFields[23][1] = new stCleFields('asset_aa_construcao_nap', '');
arCleFields[23][2] = new stCleFields('asset_aa_construcao_nap_desc', '');
// asset_aa_construcao_nap 
arCleFields[24] = new Array();
arCleFields[24][0] = new stCleFields('asset_aa_construcao_nap', '');
arCleFields[24][1] = new stCleFields('asset_aa_construcao', '');
// asset_cd_termo_devolucao 
arCleFields[25] = new Array();
arCleFields[25][0] = new stCleFields('asset_cd_termo_devolucao', '');
// asset_cd_termo_devolucao_nap 
arCleFields[26] = new Array();
arCleFields[26][0] = new stCleFields('asset_cd_termo_devolucao_nap', '');
// asset_dt_termo_devolucao 
arCleFields[27] = new Array();
arCleFields[27][0] = new stCleFields('asset_dt_termo_devolucao', '');
// asset_dt_termo_devolucao_nap 
arCleFields[28] = new Array();
arCleFields[28][0] = new stCleFields('asset_dt_termo_devolucao_nap', '');
// asset_cd_tombamento 
arCleFields[29] = new Array();
arCleFields[29][0] = new stCleFields('asset_cd_tombamento', '');
// asset_cd_tombamento_nap 
arCleFields[30] = new Array();
arCleFields[30][0] = new stCleFields('asset_cd_tombamento_nap', '');
// asset_dt_tombamento 
arCleFields[31] = new Array();
arCleFields[31][0] = new stCleFields('asset_dt_tombamento', '');
// asset_dt_tombamento_nap 
arCleFields[32] = new Array();
arCleFields[32][0] = new stCleFields('asset_dt_tombamento_nap', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
