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
// asset_nu_imovel_asst 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_nu_imovel_asst', '');
arCleFields[1][1] = new stCleFields('asset_nu_imovel_asst_nap', '');
arCleFields[1][2] = new stCleFields('asset_nu_imovel_asst_nap_desc', '');
// asset_nu_imovel_asst_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_nu_imovel_asst_nap', '');
arCleFields[2][1] = new stCleFields('asset_nu_imovel_asst', '');
// asset_cp_via 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('asset_cp_via', '');
arCleFields[3][1] = new stCleFields('asset_cp_via_nap', '');
arCleFields[3][2] = new stCleFields('asset_cp_via_nap_desc', '');
// asset_cp_via_nap 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('asset_cp_via_nap', '');
arCleFields[4][1] = new stCleFields('asset_cp_via', '');
// asset_vl_ramp_max 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('asset_vl_ramp_max', '');
// asset_vl_ramp_max_nap 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('asset_vl_ramp_max_nap', '');
arCleFields[6][1] = new stCleFields('asset_vl_ramp_max', '');
// asset_vl_ramp_max_km_inicial 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('asset_vl_ramp_max_km_inicial', '');
arCleFields[7][1] = new stCleFields('asset_vl_ramp_max_km_inicial_nap', '');
arCleFields[7][2] = new stCleFields('asset_vl_ramp_max_km_inicial_nap_desc', '');
// asset_vl_ramp_max_km_inicial_nap 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('asset_vl_ramp_max_km_inicial_nap', '');
arCleFields[8][1] = new stCleFields('asset_vl_ramp_max_km_inicial', '');
// asset_vl_ramp_max_km_final 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_vl_ramp_max_km_final', '');
arCleFields[9][1] = new stCleFields('asset_vl_ramp_max_km_final_nap', '');
arCleFields[9][2] = new stCleFields('asset_vl_ramp_max_km_final_nap_desc', '');
// asset_vl_ramp_max_km_final_nap 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_vl_ramp_max_km_final_nap', '');
arCleFields[10][1] = new stCleFields('asset_vl_ramp_max_km_final', '');
// asset_vl_raio_min 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_vl_raio_min', '');
arCleFields[11][1] = new stCleFields('asset_vl_raio_min_nap', '');
arCleFields[11][2] = new stCleFields('asset_vl_raio_min_nap_desc', '');
// asset_vl_raio_min_nap 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_vl_raio_min_nap', '');
arCleFields[12][1] = new stCleFields('asset_vl_raio_min', '');
// asset_vl_raio_min_pos_ini 
arCleFields[13] = new Array();
arCleFields[13][0] = new stCleFields('asset_vl_raio_min_pos_ini', '');
arCleFields[13][1] = new stCleFields('asset_vl_raio_min_pos_ini_nap', '');
arCleFields[13][2] = new stCleFields('asset_vl_raio_min_pos_ini_nap_desc', '');
// asset_vl_raio_min_pos_ini_nap 
arCleFields[14] = new Array();
arCleFields[14][0] = new stCleFields('asset_vl_raio_min_pos_ini_nap', '');
arCleFields[14][1] = new stCleFields('asset_vl_raio_min_pos_ini', '');
// asset_vl_raio_min_pos_fim 
arCleFields[15] = new Array();
arCleFields[15][0] = new stCleFields('asset_vl_raio_min_pos_fim', '');
arCleFields[15][1] = new stCleFields('asset_vl_raio_min_pos_fim_nap', '');
arCleFields[15][2] = new stCleFields('asset_vl_raio_min_pos_fim_nap_desc', '');
// asset_vl_raio_min_pos_fim_nap 
arCleFields[16] = new Array();
arCleFields[16][0] = new stCleFields('asset_vl_raio_min_pos_fim_nap', '');
arCleFields[16][1] = new stCleFields('asset_vl_raio_min_pos_fim', '');
// asset_cd_termo_devolucao 
arCleFields[17] = new Array();
arCleFields[17][0] = new stCleFields('asset_cd_termo_devolucao', '');
// asset_cd_termo_devolucao_nap 
arCleFields[18] = new Array();
arCleFields[18][0] = new stCleFields('asset_cd_termo_devolucao_nap', '');
// asset_dt_termo_devolucao 
arCleFields[19] = new Array();
arCleFields[19][0] = new stCleFields('asset_dt_termo_devolucao', '');
// asset_dt_termo_devolucao_nap 
arCleFields[20] = new Array();
arCleFields[20][0] = new stCleFields('asset_dt_termo_devolucao_nap', '');
// asset_cd_termo_entrega 
arCleFields[21] = new Array();
arCleFields[21][0] = new stCleFields('asset_cd_termo_entrega', '');
// asset_cd_termo_entrega_nap 
arCleFields[22] = new Array();
arCleFields[22][0] = new stCleFields('asset_cd_termo_entrega_nap', '');
// asset_dt_termo_entrega 
arCleFields[23] = new Array();
arCleFields[23][0] = new stCleFields('asset_dt_termo_entrega', '');
arCleFields[23][1] = new stCleFields('asset_dt_termo_entrega_nap', '');
arCleFields[23][2] = new stCleFields('asset_dt_termo_entrega_nap_desc', '');
// asset_dt_termo_entrega_nap 
arCleFields[24] = new Array();
arCleFields[24][0] = new stCleFields('asset_dt_termo_entrega_nap', '');
// asset_cd_termo_receb 
arCleFields[25] = new Array();
arCleFields[25][0] = new stCleFields('asset_cd_termo_receb', '');
arCleFields[25][1] = new stCleFields('asset_cd_termo_receb_nap', '');
arCleFields[25][2] = new stCleFields('asset_cd_termo_receb_nap_desc', '');
// asset_cd_termo_receb_nap 
arCleFields[26] = new Array();
arCleFields[26][0] = new stCleFields('asset_cd_termo_receb_nap', '');
arCleFields[26][1] = new stCleFields('asset_cd_termo_receb', '');
// asset_dt_termo_receb 
arCleFields[27] = new Array();
arCleFields[27][0] = new stCleFields('asset_dt_termo_receb', '');
arCleFields[27][1] = new stCleFields('asset_dt_termo_receb_nap', '');
arCleFields[27][2] = new stCleFields('asset_dt_termo_receb_nap_desc', '');
// asset_dt_termo_receb_nap 
arCleFields[28] = new Array();
arCleFields[28][0] = new stCleFields('asset_dt_termo_receb_nap', '');
arCleFields[28][1] = new stCleFields('asset_dt_termo_receb', '');
// asset_ds_doc_receb_prop 
arCleFields[29] = new Array();
arCleFields[29][0] = new stCleFields('asset_ds_doc_receb_prop', '');
arCleFields[29][1] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[29][2] = new stCleFields('asset_ds_doc_receb_prop_nap_desc', '');
// asset_ds_doc_receb_prop_nap 
arCleFields[30] = new Array();
arCleFields[30][0] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[30][1] = new stCleFields('asset_ds_doc_receb_prop', '');
// asset_cd_doc_sol_vinc 
arCleFields[31] = new Array();
arCleFields[31][0] = new stCleFields('asset_cd_doc_sol_vinc', '');
arCleFields[31][1] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[31][2] = new stCleFields('asset_cd_doc_sol_vinc_nap_desc', '');
// asset_cd_doc_sol_vinc_nap 
arCleFields[32] = new Array();
arCleFields[32][0] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[32][1] = new stCleFields('asset_cd_doc_sol_vinc', '');
// asset_dt_doc_sol_vinc 
arCleFields[33] = new Array();
arCleFields[33][0] = new stCleFields('asset_dt_doc_sol_vinc', '');
arCleFields[33][1] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[33][2] = new stCleFields('asset_dt_doc_sol_vinc_nap_desc', '');
// asset_dt_doc_sol_vinc_nap 
arCleFields[34] = new Array();
arCleFields[34][0] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[34][1] = new stCleFields('asset_dt_doc_sol_vinc', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
