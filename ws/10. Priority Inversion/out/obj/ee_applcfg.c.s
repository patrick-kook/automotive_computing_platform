	.file	"ee_applcfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	osEE_kdb_var
	.section	.rodata.osEE_kdb_var,"a",@progbits
	.type	osEE_kdb_var, @object
	.size	osEE_kdb_var, 10
osEE_kdb_var:
	.word	osEE_kcb_var
	.word	osEE_tdb_ptr_array
	.word	5
	.word	osEE_res_db_ptr_array
	.word	1
	.comm	osEE_kcb_var,1,1
.global	osEE_cdb_var
	.section	.rodata.osEE_cdb_var,"a",@progbits
	.type	osEE_cdb_var, @object
	.size	osEE_cdb_var, 4
osEE_cdb_var:
	.word	osEE_ccb_var
	.word	osEE_tdb_array+56
.global	osEE_ccb_var
	.section	.data.osEE_ccb_var,"aw",@progbits
	.type	osEE_ccb_var, @object
	.size	osEE_ccb_var, 18
osEE_ccb_var:
	.word	osEE_tdb_array+56
	.word	0
	.word	osEE_sn_array
	.word	0
	.word	0
	.byte	-1
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.osEE_res_db_ptr_array,"a",@progbits
	.type	osEE_res_db_ptr_array, @object
	.size	osEE_res_db_ptr_array, 2
osEE_res_db_ptr_array:
	.word	osEE_res_db_array
	.section	.rodata.osEE_res_db_array,"a",@progbits
	.type	osEE_res_db_array, @object
	.size	osEE_res_db_array, 3
osEE_res_db_array:
	.word	osEE_res_cb_array
	.byte	3
	.section	.bss.osEE_res_cb_array,"aw",@nobits
	.type	osEE_res_cb_array, @object
	.size	osEE_res_cb_array, 5
osEE_res_cb_array:
	.zero	5
	.section	.data.osEE_sn_array,"aw",@progbits
	.type	osEE_sn_array, @object
	.size	osEE_sn_array, 16
osEE_sn_array:
	.word	osEE_sn_array+4
	.word	0
	.word	osEE_sn_array+8
	.word	0
	.word	osEE_sn_array+12
	.word	0
	.word	0
	.word	0
	.section	.rodata.osEE_tdb_ptr_array,"a",@progbits
	.type	osEE_tdb_ptr_array, @object
	.size	osEE_tdb_ptr_array, 10
osEE_tdb_ptr_array:
	.word	osEE_tdb_array
	.word	osEE_tdb_array+14
	.word	osEE_tdb_array+28
	.word	osEE_tdb_array+42
	.word	osEE_tdb_array+56
	.section	.rodata.osEE_tdb_array,"a",@progbits
	.type	osEE_tdb_array, @object
	.size	osEE_tdb_array, 70
osEE_tdb_array:
	.word	osEE_sdb_array+12
	.word	osEE_scb_array+6
	.word	osEE_tcb_array
	.byte	0
	.word	2
	.word	gs(TimerISR)
	.byte	-128
	.byte	-128
	.byte	1
	.word	osEE_sdb_array
	.word	osEE_scb_array
	.word	osEE_tcb_array+12
	.byte	1
	.word	1
	.word	gs(FuncTaskH)
	.byte	3
	.byte	3
	.byte	1
	.word	osEE_sdb_array+4
	.word	osEE_scb_array+2
	.word	osEE_tcb_array+24
	.byte	2
	.word	0
	.word	gs(FuncTaskM)
	.byte	2
	.byte	2
	.byte	1
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array+36
	.byte	3
	.word	1
	.word	gs(FuncTaskL)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array+12
	.word	osEE_scb_array+6
	.word	osEE_tcb_array+48
	.byte	4
	.word	3
	.word	gs(osEE_idle_hook_wrapper)
	.byte	0
	.byte	0
	.byte	1
	.section	.data.osEE_tcb_array,"aw",@progbits
	.type	osEE_tcb_array, @object
	.size	osEE_tcb_array, 60
osEE_tcb_array:
	.byte	0
	.byte	-128
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	1
	.byte	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.osEE_sdb_array,"a",@progbits
	.type	osEE_sdb_array, @object
	.size	osEE_sdb_array, 16
osEE_sdb_array:
	.word	osEE_task_stack_1
	.word	256
	.word	osEE_task_stack_2
	.word	256
	.word	osEE_task_stack_3
	.word	256
	.word	0
	.word	0
	.section	.data.osEE_scb_array,"aw",@progbits
	.type	osEE_scb_array, @object
	.size	osEE_scb_array, 8
osEE_scb_array:
	.word	osEE_task_stack_1+255
	.word	osEE_task_stack_2+255
	.word	osEE_task_stack_3+255
	.word	0
	.section	.bss.osEE_task_stack_3,"aw",@nobits
	.type	osEE_task_stack_3, @object
	.size	osEE_task_stack_3, 256
osEE_task_stack_3:
	.zero	256
	.section	.bss.osEE_task_stack_2,"aw",@nobits
	.type	osEE_task_stack_2, @object
	.size	osEE_task_stack_2, 256
osEE_task_stack_2:
	.zero	256
	.section	.bss.osEE_task_stack_1,"aw",@nobits
	.type	osEE_task_stack_1, @object
	.size	osEE_task_stack_1, 256
osEE_task_stack_1:
	.zero	256
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
