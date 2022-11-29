analyze -sv vlg/alloc_issue_ino.v \
	vlg/alu_ops.vh \
	vlg/alu.v \
	vlg/arf.v \
	vlg/brimm_gen.v \
	vlg/btb.v \
	vlg/constants.vh \
	vlg/decoder.v \
	vlg/define.v \
	vlg/dmem.v \
	vlg/dualport_ram.v \
	vlg/exunit_alu.v \
	vlg/exunit_branch.v \
	vlg/exunit_ldst.v \
	vlg/exunit_mul.v \
	vlg/gshare.v \
	vlg/imem.v \
	vlg/imm_gen.v \
	vlg/inst_constraints.v \
	vlg/modify_instruction.v \
	vlg/mpft.v \
	vlg/multiplier.v \
	vlg/oldest_finder.v \
	vlg/pipeline_if.v \
	vlg/pipeline.v \
	vlg/prioenc.v \
	vlg/qed_decoder.v \
	vlg/qed_i_cache.v \
	vlg/qed_instruction_mux.v \
	vlg/qed.v \
	vlg/ram_sync_nolatch.v \
	vlg/ram_sync.v \
	vlg/reorderbuf.v \
	vlg/rrf_freelistmanager.v \
	vlg/rrf.v \
	vlg/rs_alu.v \
	vlg/rs_branch.v \
	vlg/rs_ldst.v \
	vlg/rs_mul.v \
	vlg/rs_reqgen.v \
	vlg/rv32_opcodes.vh \
	vlg/search_be.v \
	vlg/src_manager.v \
	vlg/srcopr_manager.v \
	vlg/srcsel.v \
	vlg/storebuf.v \
	vlg/tag_generator.v \
	vlg/topsim.v

elaborate -disable_auto_bbox -top top
clock clk
reset -expression ~reset_x -max_iterations 5

