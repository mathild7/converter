// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "converter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic converter::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic converter::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> converter::ap_ST_fsm_pp0_stage0 = "1";
const bool converter::ap_const_boolean_1 = true;
const sc_lv<1> converter::ap_const_lv1_0 = "0";
const sc_lv<1> converter::ap_const_lv1_1 = "1";
const sc_lv<2> converter::ap_const_lv2_0 = "00";
const sc_lv<2> converter::ap_const_lv2_2 = "10";
const sc_lv<2> converter::ap_const_lv2_3 = "11";
const sc_lv<2> converter::ap_const_lv2_1 = "1";
const sc_lv<32> converter::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool converter::ap_const_boolean_0 = false;
const sc_lv<32> converter::ap_const_lv32_4AFFFFFE = "1001010111111111111111111111110";
const sc_lv<32> converter::ap_const_lv32_1F = "11111";
const sc_lv<32> converter::ap_const_lv32_17 = "10111";
const sc_lv<32> converter::ap_const_lv32_1E = "11110";
const sc_lv<9> converter::ap_const_lv9_181 = "110000001";
const sc_lv<32> converter::ap_const_lv32_8 = "1000";
const sc_lv<8> converter::ap_const_lv8_7F = "1111111";
const sc_lv<32> converter::ap_const_lv32_18 = "11000";
const sc_lv<32> converter::ap_const_lv32_2F = "101111";
const sc_lv<24> converter::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<8> converter::ap_const_lv8_0 = "00000000";

converter::converter(sc_module_name name) : sc_module(name), mVcdFile(0) {
    converter_fmul_32bkb_U1 = new converter_fmul_32bkb<1,4,32,32,32>("converter_fmul_32bkb_U1");
    converter_fmul_32bkb_U1->clk(ap_clk);
    converter_fmul_32bkb_U1->reset(ap_rst_n_inv);
    converter_fmul_32bkb_U1->din0(in_V_0_data_out);
    converter_fmul_32bkb_U1->din1(ap_var_for_const0);
    converter_fmul_32bkb_U1->ce(grp_fu_85_ce);
    converter_fmul_32bkb_U1->dout(grp_fu_85_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00001001);
    sensitive << ( in_V_0_vld_out );
    sensitive << ( out_V_1_ack_in );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter7 );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011001);
    sensitive << ( in_V_0_vld_out );
    sensitive << ( out_V_1_ack_in );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter6 );
    sensitive << ( ap_enable_reg_pp0_iter7 );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011011);
    sensitive << ( in_V_0_vld_out );
    sensitive << ( out_V_1_ack_in );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter6 );
    sensitive << ( ap_enable_reg_pp0_iter7 );

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);
    sensitive << ( in_V_0_vld_out );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter3);

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter4);

    SC_METHOD(thread_ap_block_state6_pp0_stage0_iter5);

    SC_METHOD(thread_ap_block_state7_pp0_stage0_iter6);

    SC_METHOD(thread_ap_block_state8_pp0_stage0_iter7);
    sensitive << ( out_V_1_ack_in );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter6 );
    sensitive << ( ap_enable_reg_pp0_iter7 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( ap_enable_reg_pp0_iter4 );
    sensitive << ( ap_enable_reg_pp0_iter5 );

    SC_METHOD(thread_ap_reset_idle_pp0);

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_converted_V_fu_221_p3);
    sensitive << ( ap_reg_pp0_iter5_p_Result_s_reg_241 );
    sensitive << ( tmp_6_reg_267 );
    sensitive << ( tmp_3_fu_216_p2 );

    SC_METHOD(thread_grp_fu_85_ce);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );

    SC_METHOD(thread_in_V_0_ack_in);
    sensitive << ( in_V_0_state );

    SC_METHOD(thread_in_V_0_ack_out);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );

    SC_METHOD(thread_in_V_0_data_out);
    sensitive << ( in_V_0_payload_A );
    sensitive << ( in_V_0_payload_B );
    sensitive << ( in_V_0_sel );

    SC_METHOD(thread_in_V_0_load_A);
    sensitive << ( in_V_0_sel_wr );
    sensitive << ( in_V_0_state_cmp_full );

    SC_METHOD(thread_in_V_0_load_B);
    sensitive << ( in_V_0_sel_wr );
    sensitive << ( in_V_0_state_cmp_full );

    SC_METHOD(thread_in_V_0_sel);
    sensitive << ( in_V_0_sel_rd );

    SC_METHOD(thread_in_V_0_state_cmp_full);
    sensitive << ( in_V_0_state );

    SC_METHOD(thread_in_V_0_vld_in);
    sensitive << ( in_V_TVALID );

    SC_METHOD(thread_in_V_0_vld_out);
    sensitive << ( in_V_0_state );

    SC_METHOD(thread_in_V_TDATA_blk_n);
    sensitive << ( in_V_0_state );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_in_V_TREADY);
    sensitive << ( in_V_0_state );

    SC_METHOD(thread_loc_V_1_fu_113_p1);
    sensitive << ( p_Val2_s_fu_91_p1 );

    SC_METHOD(thread_loc_V_fu_103_p4);
    sensitive << ( p_Val2_s_fu_91_p1 );

    SC_METHOD(thread_out_V_1_ack_in);
    sensitive << ( out_V_1_state );

    SC_METHOD(thread_out_V_1_ack_out);
    sensitive << ( out_V_TREADY );

    SC_METHOD(thread_out_V_1_data_out);
    sensitive << ( out_V_1_payload_A );
    sensitive << ( out_V_1_payload_B );
    sensitive << ( out_V_1_sel );

    SC_METHOD(thread_out_V_1_load_A);
    sensitive << ( out_V_1_sel_wr );
    sensitive << ( out_V_1_state_cmp_full );

    SC_METHOD(thread_out_V_1_load_B);
    sensitive << ( out_V_1_sel_wr );
    sensitive << ( out_V_1_state_cmp_full );

    SC_METHOD(thread_out_V_1_sel);
    sensitive << ( out_V_1_sel_rd );

    SC_METHOD(thread_out_V_1_state_cmp_full);
    sensitive << ( out_V_1_state );

    SC_METHOD(thread_out_V_1_vld_in);
    sensitive << ( ap_enable_reg_pp0_iter6 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );

    SC_METHOD(thread_out_V_1_vld_out);
    sensitive << ( out_V_1_state );

    SC_METHOD(thread_out_V_TDATA);
    sensitive << ( out_V_1_data_out );

    SC_METHOD(thread_out_V_TDATA_blk_n);
    sensitive << ( out_V_1_state );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( ap_enable_reg_pp0_iter6 );
    sensitive << ( ap_enable_reg_pp0_iter7 );

    SC_METHOD(thread_out_V_TVALID);
    sensitive << ( out_V_1_state );

    SC_METHOD(thread_p_Val2_s_fu_91_p1);
    sensitive << ( grp_fu_85_p2 );

    SC_METHOD(thread_sh_assign_1_cast_cas_fu_167_p1);
    sensitive << ( sh_assign_1_fu_157_p3 );

    SC_METHOD(thread_sh_assign_1_cast_fu_163_p1);
    sensitive << ( sh_assign_1_fu_157_p3 );

    SC_METHOD(thread_sh_assign_1_fu_157_p3);
    sensitive << ( sh_assign_reg_251 );
    sensitive << ( isNeg_reg_256 );
    sensitive << ( tmp_5_i_i_i_cast_fu_154_p1 );

    SC_METHOD(thread_sh_assign_fu_121_p2);
    sensitive << ( tmp_i_i_i_i_cast1_fu_117_p1 );

    SC_METHOD(thread_tmp1_fu_227_p3);
    sensitive << ( converted_V_fu_221_p3 );

    SC_METHOD(thread_tmp_3_fu_216_p2);
    sensitive << ( tmp_6_reg_267 );

    SC_METHOD(thread_tmp_3_i_i_i_cast2_fu_150_p1);
    sensitive << ( tmp_3_i_i_i_fu_141_p4 );

    SC_METHOD(thread_tmp_3_i_i_i_fu_141_p4);
    sensitive << ( loc_V_1_reg_246 );

    SC_METHOD(thread_tmp_4_fu_195_p1);
    sensitive << ( tmp_8_fu_187_p3 );

    SC_METHOD(thread_tmp_5_fu_199_p4);
    sensitive << ( tmp_i_i_i_fu_181_p2 );

    SC_METHOD(thread_tmp_5_i_i_i_cast_fu_154_p1);
    sensitive << ( tmp_5_i_i_i_reg_262 );

    SC_METHOD(thread_tmp_5_i_i_i_fu_135_p2);
    sensitive << ( loc_V_fu_103_p4 );

    SC_METHOD(thread_tmp_6_fu_209_p3);
    sensitive << ( isNeg_reg_256 );
    sensitive << ( tmp_4_fu_195_p1 );
    sensitive << ( tmp_5_fu_199_p4 );

    SC_METHOD(thread_tmp_7_i_i_i_fu_171_p1);
    sensitive << ( sh_assign_1_cast_fu_163_p1 );

    SC_METHOD(thread_tmp_8_fu_187_p3);
    sensitive << ( tmp_8_i_i_i_fu_175_p2 );

    SC_METHOD(thread_tmp_8_i_i_i_fu_175_p2);
    sensitive << ( tmp_3_i_i_i_fu_141_p4 );
    sensitive << ( sh_assign_1_cast_cas_fu_167_p1 );

    SC_METHOD(thread_tmp_i_i_i_fu_181_p2);
    sensitive << ( tmp_3_i_i_i_cast2_fu_150_p1 );
    sensitive << ( tmp_7_i_i_i_fu_171_p1 );

    SC_METHOD(thread_tmp_i_i_i_i_cast1_fu_117_p1);
    sensitive << ( loc_V_fu_103_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_block_pp0_stage0_flag00011011 );
    sensitive << ( ap_reset_idle_pp0 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    in_V_0_sel_rd = SC_LOGIC_0;
    in_V_0_sel_wr = SC_LOGIC_0;
    in_V_0_state = "00";
    out_V_1_sel_rd = SC_LOGIC_0;
    out_V_1_sel_wr = SC_LOGIC_0;
    out_V_1_state = "00";
    ap_CS_fsm = "1";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter6 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter7 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter3 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter4 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter5 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "converter_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, in_V_TDATA, "(port)in_V_TDATA");
    sc_trace(mVcdFile, in_V_TVALID, "(port)in_V_TVALID");
    sc_trace(mVcdFile, in_V_TREADY, "(port)in_V_TREADY");
    sc_trace(mVcdFile, out_V_TDATA, "(port)out_V_TDATA");
    sc_trace(mVcdFile, out_V_TVALID, "(port)out_V_TVALID");
    sc_trace(mVcdFile, out_V_TREADY, "(port)out_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, in_V_0_data_out, "in_V_0_data_out");
    sc_trace(mVcdFile, in_V_0_vld_in, "in_V_0_vld_in");
    sc_trace(mVcdFile, in_V_0_vld_out, "in_V_0_vld_out");
    sc_trace(mVcdFile, in_V_0_ack_in, "in_V_0_ack_in");
    sc_trace(mVcdFile, in_V_0_ack_out, "in_V_0_ack_out");
    sc_trace(mVcdFile, in_V_0_payload_A, "in_V_0_payload_A");
    sc_trace(mVcdFile, in_V_0_payload_B, "in_V_0_payload_B");
    sc_trace(mVcdFile, in_V_0_sel_rd, "in_V_0_sel_rd");
    sc_trace(mVcdFile, in_V_0_sel_wr, "in_V_0_sel_wr");
    sc_trace(mVcdFile, in_V_0_sel, "in_V_0_sel");
    sc_trace(mVcdFile, in_V_0_load_A, "in_V_0_load_A");
    sc_trace(mVcdFile, in_V_0_load_B, "in_V_0_load_B");
    sc_trace(mVcdFile, in_V_0_state, "in_V_0_state");
    sc_trace(mVcdFile, in_V_0_state_cmp_full, "in_V_0_state_cmp_full");
    sc_trace(mVcdFile, out_V_1_data_out, "out_V_1_data_out");
    sc_trace(mVcdFile, out_V_1_vld_in, "out_V_1_vld_in");
    sc_trace(mVcdFile, out_V_1_vld_out, "out_V_1_vld_out");
    sc_trace(mVcdFile, out_V_1_ack_in, "out_V_1_ack_in");
    sc_trace(mVcdFile, out_V_1_ack_out, "out_V_1_ack_out");
    sc_trace(mVcdFile, out_V_1_payload_A, "out_V_1_payload_A");
    sc_trace(mVcdFile, out_V_1_payload_B, "out_V_1_payload_B");
    sc_trace(mVcdFile, out_V_1_sel_rd, "out_V_1_sel_rd");
    sc_trace(mVcdFile, out_V_1_sel_wr, "out_V_1_sel_wr");
    sc_trace(mVcdFile, out_V_1_sel, "out_V_1_sel");
    sc_trace(mVcdFile, out_V_1_load_A, "out_V_1_load_A");
    sc_trace(mVcdFile, out_V_1_load_B, "out_V_1_load_B");
    sc_trace(mVcdFile, out_V_1_state, "out_V_1_state");
    sc_trace(mVcdFile, out_V_1_state_cmp_full, "out_V_1_state_cmp_full");
    sc_trace(mVcdFile, in_V_TDATA_blk_n, "in_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00000000, "ap_block_pp0_stage0_flag00000000");
    sc_trace(mVcdFile, out_V_TDATA_blk_n, "out_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter6, "ap_enable_reg_pp0_iter6");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter7, "ap_enable_reg_pp0_iter7");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter2, "ap_block_state3_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter3, "ap_block_state4_pp0_stage0_iter3");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter4, "ap_block_state5_pp0_stage0_iter4");
    sc_trace(mVcdFile, ap_block_state6_pp0_stage0_iter5, "ap_block_state6_pp0_stage0_iter5");
    sc_trace(mVcdFile, ap_block_state7_pp0_stage0_iter6, "ap_block_state7_pp0_stage0_iter6");
    sc_trace(mVcdFile, ap_block_state8_pp0_stage0_iter7, "ap_block_state8_pp0_stage0_iter7");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011001, "ap_block_pp0_stage0_flag00011001");
    sc_trace(mVcdFile, p_Result_s_reg_241, "p_Result_s_reg_241");
    sc_trace(mVcdFile, ap_reg_pp0_iter5_p_Result_s_reg_241, "ap_reg_pp0_iter5_p_Result_s_reg_241");
    sc_trace(mVcdFile, loc_V_1_fu_113_p1, "loc_V_1_fu_113_p1");
    sc_trace(mVcdFile, loc_V_1_reg_246, "loc_V_1_reg_246");
    sc_trace(mVcdFile, sh_assign_fu_121_p2, "sh_assign_fu_121_p2");
    sc_trace(mVcdFile, sh_assign_reg_251, "sh_assign_reg_251");
    sc_trace(mVcdFile, isNeg_reg_256, "isNeg_reg_256");
    sc_trace(mVcdFile, tmp_5_i_i_i_fu_135_p2, "tmp_5_i_i_i_fu_135_p2");
    sc_trace(mVcdFile, tmp_5_i_i_i_reg_262, "tmp_5_i_i_i_reg_262");
    sc_trace(mVcdFile, tmp_6_fu_209_p3, "tmp_6_fu_209_p3");
    sc_trace(mVcdFile, tmp_6_reg_267, "tmp_6_reg_267");
    sc_trace(mVcdFile, tmp1_fu_227_p3, "tmp1_fu_227_p3");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011011, "ap_block_pp0_stage0_flag00011011");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter3, "ap_enable_reg_pp0_iter3");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter4, "ap_enable_reg_pp0_iter4");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter5, "ap_enable_reg_pp0_iter5");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00001001, "ap_block_pp0_stage0_flag00001001");
    sc_trace(mVcdFile, grp_fu_85_p2, "grp_fu_85_p2");
    sc_trace(mVcdFile, p_Val2_s_fu_91_p1, "p_Val2_s_fu_91_p1");
    sc_trace(mVcdFile, loc_V_fu_103_p4, "loc_V_fu_103_p4");
    sc_trace(mVcdFile, tmp_i_i_i_i_cast1_fu_117_p1, "tmp_i_i_i_i_cast1_fu_117_p1");
    sc_trace(mVcdFile, tmp_3_i_i_i_fu_141_p4, "tmp_3_i_i_i_fu_141_p4");
    sc_trace(mVcdFile, tmp_5_i_i_i_cast_fu_154_p1, "tmp_5_i_i_i_cast_fu_154_p1");
    sc_trace(mVcdFile, sh_assign_1_fu_157_p3, "sh_assign_1_fu_157_p3");
    sc_trace(mVcdFile, sh_assign_1_cast_fu_163_p1, "sh_assign_1_cast_fu_163_p1");
    sc_trace(mVcdFile, sh_assign_1_cast_cas_fu_167_p1, "sh_assign_1_cast_cas_fu_167_p1");
    sc_trace(mVcdFile, tmp_3_i_i_i_cast2_fu_150_p1, "tmp_3_i_i_i_cast2_fu_150_p1");
    sc_trace(mVcdFile, tmp_7_i_i_i_fu_171_p1, "tmp_7_i_i_i_fu_171_p1");
    sc_trace(mVcdFile, tmp_8_i_i_i_fu_175_p2, "tmp_8_i_i_i_fu_175_p2");
    sc_trace(mVcdFile, tmp_8_fu_187_p3, "tmp_8_fu_187_p3");
    sc_trace(mVcdFile, tmp_i_i_i_fu_181_p2, "tmp_i_i_i_fu_181_p2");
    sc_trace(mVcdFile, tmp_4_fu_195_p1, "tmp_4_fu_195_p1");
    sc_trace(mVcdFile, tmp_5_fu_199_p4, "tmp_5_fu_199_p4");
    sc_trace(mVcdFile, tmp_3_fu_216_p2, "tmp_3_fu_216_p2");
    sc_trace(mVcdFile, converted_V_fu_221_p3, "converted_V_fu_221_p3");
    sc_trace(mVcdFile, grp_fu_85_ce, "grp_fu_85_ce");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_reset_idle_pp0, "ap_reset_idle_pp0");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("converter.hdltvin.dat");
    mHdltvoutHandle.open("converter.hdltvout.dat");
}

converter::~converter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete converter_fmul_32bkb_U1;
}

void converter::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv32_4AFFFFFE;
}

void converter::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter4 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter4 = ap_enable_reg_pp0_iter3.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter5 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter5 = ap_enable_reg_pp0_iter4.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter6 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter6 = ap_enable_reg_pp0_iter5.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter7 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter7 = ap_enable_reg_pp0_iter6.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        in_V_0_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_vld_out.read()))) {
            in_V_0_sel_rd =  (sc_logic) (~in_V_0_sel_rd.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        in_V_0_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_ack_in.read()))) {
            in_V_0_sel_wr =  (sc_logic) (~in_V_0_sel_wr.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        in_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_2)))) {
            in_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_1)))) {
            in_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(in_V_0_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_ack_out.read()))))) {
            in_V_0_state = ap_const_lv2_3;
        } else {
            in_V_0_state = ap_const_lv2_2;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        out_V_1_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_vld_out.read()))) {
            out_V_1_sel_rd =  (sc_logic) (~out_V_1_sel_rd.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        out_V_1_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_ack_in.read()))) {
            out_V_1_sel_wr =  (sc_logic) (~out_V_1_sel_wr.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        out_V_1_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_ack_out.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_3, out_V_1_state.read())) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_vld_in.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_2, out_V_1_state.read())))) {
            out_V_1_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_3, out_V_1_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, out_V_1_state.read())))) {
            out_V_1_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_vld_in.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_2, out_V_1_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, out_V_1_state.read())) || 
                    (esl_seteq<1,2,2>(ap_const_lv2_3, out_V_1_state.read()) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_ack_out.read()))))) {
            out_V_1_state = ap_const_lv2_3;
        } else {
            out_V_1_state = ap_const_lv2_2;
        }
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0)) {
        ap_reg_pp0_iter5_p_Result_s_reg_241 = p_Result_s_reg_241.read();
        isNeg_reg_256 = sh_assign_fu_121_p2.read().range(8, 8);
        loc_V_1_reg_246 = loc_V_1_fu_113_p1.read();
        p_Result_s_reg_241 = p_Val2_s_fu_91_p1.read().range(31, 31);
        sh_assign_reg_251 = sh_assign_fu_121_p2.read();
        tmp_5_i_i_i_reg_262 = tmp_5_i_i_i_fu_135_p2.read();
        tmp_6_reg_267 = tmp_6_fu_209_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_load_A.read())) {
        in_V_0_payload_A = in_V_TDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_load_B.read())) {
        in_V_0_payload_B = in_V_TDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_load_A.read())) {
        out_V_1_payload_A = tmp1_fu_227_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_load_B.read())) {
        out_V_1_payload_B = tmp1_fu_227_p3.read();
    }
}

void converter::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void converter::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_pp0_stage0_flag00001001() {
    ap_block_pp0_stage0_flag00001001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_out.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter7.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read())));
}

void converter::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_out.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter7.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read())));
}

void converter::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_out.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter7.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read())));
}

void converter::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = esl_seteq<1,1,1>(ap_const_logic_0, in_V_0_vld_out.read());
}

void converter::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state4_pp0_stage0_iter3() {
    ap_block_state4_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state5_pp0_stage0_iter4() {
    ap_block_state5_pp0_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state6_pp0_stage0_iter5() {
    ap_block_state6_pp0_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state7_pp0_stage0_iter6() {
    ap_block_state7_pp0_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void converter::thread_ap_block_state8_pp0_stage0_iter7() {
    ap_block_state8_pp0_stage0_iter7 = esl_seteq<1,1,1>(ap_const_logic_0, out_V_1_ack_in.read());
}

void converter::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void converter::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void converter::thread_ap_reset_idle_pp0() {
    if (!esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void converter::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void converter::thread_converted_V_fu_221_p3() {
    converted_V_fu_221_p3 = (!ap_reg_pp0_iter5_p_Result_s_reg_241.read()[0].is_01())? sc_lv<24>(): ((ap_reg_pp0_iter5_p_Result_s_reg_241.read()[0].to_bool())? tmp_3_fu_216_p2.read(): tmp_6_reg_267.read());
}

void converter::thread_grp_fu_85_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        grp_fu_85_ce = ap_const_logic_1;
    } else {
        grp_fu_85_ce = ap_const_logic_0;
    }
}

void converter::thread_in_V_0_ack_in() {
    in_V_0_ack_in = in_V_0_state.read()[1];
}

void converter::thread_in_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        in_V_0_ack_out = ap_const_logic_1;
    } else {
        in_V_0_ack_out = ap_const_logic_0;
    }
}

void converter::thread_in_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, in_V_0_sel.read())) {
        in_V_0_data_out = in_V_0_payload_B.read();
    } else {
        in_V_0_data_out = in_V_0_payload_A.read();
    }
}

void converter::thread_in_V_0_load_A() {
    in_V_0_load_A = (in_V_0_state_cmp_full.read() & ~in_V_0_sel_wr.read());
}

void converter::thread_in_V_0_load_B() {
    in_V_0_load_B = (in_V_0_sel_wr.read() & in_V_0_state_cmp_full.read());
}

void converter::thread_in_V_0_sel() {
    in_V_0_sel = in_V_0_sel_rd.read();
}

void converter::thread_in_V_0_state_cmp_full() {
    in_V_0_state_cmp_full =  (sc_logic) ((!in_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(in_V_0_state.read() != ap_const_lv2_1))[0];
}

void converter::thread_in_V_0_vld_in() {
    in_V_0_vld_in = in_V_TVALID.read();
}

void converter::thread_in_V_0_vld_out() {
    in_V_0_vld_out = in_V_0_state.read()[0];
}

void converter::thread_in_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        in_V_TDATA_blk_n = in_V_0_state.read()[0];
    } else {
        in_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void converter::thread_in_V_TREADY() {
    in_V_TREADY = in_V_0_state.read()[1];
}

void converter::thread_loc_V_1_fu_113_p1() {
    loc_V_1_fu_113_p1 = p_Val2_s_fu_91_p1.read().range(23-1, 0);
}

void converter::thread_loc_V_fu_103_p4() {
    loc_V_fu_103_p4 = p_Val2_s_fu_91_p1.read().range(30, 23);
}

void converter::thread_out_V_1_ack_in() {
    out_V_1_ack_in = out_V_1_state.read()[1];
}

void converter::thread_out_V_1_ack_out() {
    out_V_1_ack_out = out_V_TREADY.read();
}

void converter::thread_out_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_1_sel.read())) {
        out_V_1_data_out = out_V_1_payload_B.read();
    } else {
        out_V_1_data_out = out_V_1_payload_A.read();
    }
}

void converter::thread_out_V_1_load_A() {
    out_V_1_load_A = (out_V_1_state_cmp_full.read() & ~out_V_1_sel_wr.read());
}

void converter::thread_out_V_1_load_B() {
    out_V_1_load_B = (out_V_1_sel_wr.read() & out_V_1_state_cmp_full.read());
}

void converter::thread_out_V_1_sel() {
    out_V_1_sel = out_V_1_sel_rd.read();
}

void converter::thread_out_V_1_state_cmp_full() {
    out_V_1_state_cmp_full =  (sc_logic) ((!out_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(out_V_1_state.read() != ap_const_lv2_1))[0];
}

void converter::thread_out_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        out_V_1_vld_in = ap_const_logic_1;
    } else {
        out_V_1_vld_in = ap_const_logic_0;
    }
}

void converter::thread_out_V_1_vld_out() {
    out_V_1_vld_out = out_V_1_state.read()[0];
}

void converter::thread_out_V_TDATA() {
    out_V_TDATA = out_V_1_data_out.read();
}

void converter::thread_out_V_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter7.read())))) {
        out_V_TDATA_blk_n = out_V_1_state.read()[1];
    } else {
        out_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void converter::thread_out_V_TVALID() {
    out_V_TVALID = out_V_1_state.read()[0];
}

void converter::thread_p_Val2_s_fu_91_p1() {
    p_Val2_s_fu_91_p1 = grp_fu_85_p2.read();
}

void converter::thread_sh_assign_1_cast_cas_fu_167_p1() {
    sh_assign_1_cast_cas_fu_167_p1 = esl_sext<25,9>(sh_assign_1_fu_157_p3.read());
}

void converter::thread_sh_assign_1_cast_fu_163_p1() {
    sh_assign_1_cast_fu_163_p1 = esl_sext<32,9>(sh_assign_1_fu_157_p3.read());
}

void converter::thread_sh_assign_1_fu_157_p3() {
    sh_assign_1_fu_157_p3 = (!isNeg_reg_256.read()[0].is_01())? sc_lv<9>(): ((isNeg_reg_256.read()[0].to_bool())? tmp_5_i_i_i_cast_fu_154_p1.read(): sh_assign_reg_251.read());
}

void converter::thread_sh_assign_fu_121_p2() {
    sh_assign_fu_121_p2 = (!ap_const_lv9_181.is_01() || !tmp_i_i_i_i_cast1_fu_117_p1.read().is_01())? sc_lv<9>(): (sc_bigint<9>(ap_const_lv9_181) + sc_biguint<9>(tmp_i_i_i_i_cast1_fu_117_p1.read()));
}

void converter::thread_tmp1_fu_227_p3() {
    tmp1_fu_227_p3 = esl_concat<24,8>(converted_V_fu_221_p3.read(), ap_const_lv8_0);
}

void converter::thread_tmp_3_fu_216_p2() {
    tmp_3_fu_216_p2 = (!ap_const_lv24_0.is_01() || !tmp_6_reg_267.read().is_01())? sc_lv<24>(): (sc_biguint<24>(ap_const_lv24_0) - sc_biguint<24>(tmp_6_reg_267.read()));
}

void converter::thread_tmp_3_i_i_i_cast2_fu_150_p1() {
    tmp_3_i_i_i_cast2_fu_150_p1 = esl_zext<79,25>(tmp_3_i_i_i_fu_141_p4.read());
}

void converter::thread_tmp_3_i_i_i_fu_141_p4() {
    tmp_3_i_i_i_fu_141_p4 = esl_concat<24,1>(esl_concat<1,23>(ap_const_lv1_1, loc_V_1_reg_246.read()), ap_const_lv1_0);
}

void converter::thread_tmp_4_fu_195_p1() {
    tmp_4_fu_195_p1 = esl_zext<24,1>(tmp_8_fu_187_p3.read());
}

void converter::thread_tmp_5_fu_199_p4() {
    tmp_5_fu_199_p4 = tmp_i_i_i_fu_181_p2.read().range(47, 24);
}

void converter::thread_tmp_5_i_i_i_cast_fu_154_p1() {
    tmp_5_i_i_i_cast_fu_154_p1 = esl_sext<9,8>(tmp_5_i_i_i_reg_262.read());
}

void converter::thread_tmp_5_i_i_i_fu_135_p2() {
    tmp_5_i_i_i_fu_135_p2 = (!ap_const_lv8_7F.is_01() || !loc_V_fu_103_p4.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_7F) - sc_biguint<8>(loc_V_fu_103_p4.read()));
}

void converter::thread_tmp_6_fu_209_p3() {
    tmp_6_fu_209_p3 = (!isNeg_reg_256.read()[0].is_01())? sc_lv<24>(): ((isNeg_reg_256.read()[0].to_bool())? tmp_4_fu_195_p1.read(): tmp_5_fu_199_p4.read());
}

void converter::thread_tmp_7_i_i_i_fu_171_p1() {
    tmp_7_i_i_i_fu_171_p1 = esl_zext<79,32>(sh_assign_1_cast_fu_163_p1.read());
}

void converter::thread_tmp_8_fu_187_p3() {
    tmp_8_fu_187_p3 = tmp_8_i_i_i_fu_175_p2.read().range(24, 24);
}

void converter::thread_tmp_8_i_i_i_fu_175_p2() {
    tmp_8_i_i_i_fu_175_p2 = (!sh_assign_1_cast_cas_fu_167_p1.read().is_01())? sc_lv<25>(): tmp_3_i_i_i_fu_141_p4.read() >> (unsigned short)sh_assign_1_cast_cas_fu_167_p1.read().to_uint();
}

void converter::thread_tmp_i_i_i_fu_181_p2() {
    tmp_i_i_i_fu_181_p2 = (!tmp_7_i_i_i_fu_171_p1.read().is_01())? sc_lv<79>(): tmp_3_i_i_i_cast2_fu_150_p1.read() << (unsigned short)tmp_7_i_i_i_fu_171_p1.read().to_uint();
}

void converter::thread_tmp_i_i_i_i_cast1_fu_117_p1() {
    tmp_i_i_i_i_cast1_fu_117_p1 = esl_zext<9,8>(loc_V_fu_103_p4.read());
}

void converter::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

void converter::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_V_TDATA\" :  \"" << in_V_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_V_TVALID\" :  \"" << in_V_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"in_V_TREADY\" :  \"" << in_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_TDATA\" :  \"" << out_V_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_TVALID\" :  \"" << out_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_V_TREADY\" :  \"" << out_V_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

