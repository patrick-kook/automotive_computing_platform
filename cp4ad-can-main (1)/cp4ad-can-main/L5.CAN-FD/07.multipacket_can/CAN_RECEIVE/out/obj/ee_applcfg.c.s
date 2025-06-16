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
	.size	osEE_kdb_var, 18
osEE_kdb_var:
	.word	osEE_kcb_var
	.word	osEE_tdb_ptr_array
	.word	3
	.word	osEE_res_db_ptr_array
	.word	1
	.word	osEE_counter_db_ptr_array
	.word	1
	.word	osEE_alarm_db_ptr_array
	.word	1
	.comm	osEE_kcb_var,1,1
.global	osEE_cdb_var
	.section	.rodata.osEE_cdb_var,"a",@progbits
	.type	osEE_cdb_var, @object
	.size	osEE_cdb_var, 8
osEE_cdb_var:
	.word	osEE_ccb_var
	.word	osEE_tdb_array+28
	.word	osEE_autostart_trigger_db
	.word	1
.global	osEE_ccb_var
	.section	.data.osEE_ccb_var,"aw",@progbits
	.type	osEE_ccb_var, @object
	.size	osEE_ccb_var, 18
osEE_ccb_var:
	.word	osEE_tdb_array+28
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
	.section	.rodata.osEE_autostart_trigger_db,"a",@progbits
	.type	osEE_autostart_trigger_db, @object
	.size	osEE_autostart_trigger_db, 4
osEE_autostart_trigger_db:
	.word	osEE_trigger_autostart_info_OSDEFAULTAPPMODE
	.word	1
	.section	.rodata.osEE_trigger_autostart_info_OSDEFAULTAPPMODE,"a",@progbits
	.type	osEE_trigger_autostart_info_OSDEFAULTAPPMODE, @object
	.size	osEE_trigger_autostart_info_OSDEFAULTAPPMODE, 6
osEE_trigger_autostart_info_OSDEFAULTAPPMODE:
	.word	osEE_alarm_db_array
	.word	5
	.word	1
	.section	.rodata.osEE_alarm_db_ptr_array,"a",@progbits
	.type	osEE_alarm_db_ptr_array, @object
	.size	osEE_alarm_db_ptr_array, 2
osEE_alarm_db_ptr_array:
	.word	osEE_alarm_db_array
	.section	.rodata.osEE_alarm_db_array,"a",@progbits
	.type	osEE_alarm_db_array, @object
	.size	osEE_alarm_db_array, 14
osEE_alarm_db_array:
	.word	osEE_alarm_cb_array
	.word	osEE_counter_db_array
	.word	0
	.word	osEE_tdb_array+14
	.word	0
	.word	0
	.word	0
	.section	.bss.osEE_alarm_cb_array,"aw",@nobits
	.type	osEE_alarm_cb_array, @object
	.size	osEE_alarm_cb_array, 8
osEE_alarm_cb_array:
	.zero	8
	.section	.rodata.osEE_counter_db_ptr_array,"a",@progbits
	.type	osEE_counter_db_ptr_array, @object
	.size	osEE_counter_db_ptr_array, 2
osEE_counter_db_ptr_array:
	.word	osEE_counter_db_array
	.section	.rodata.osEE_counter_db_array,"a",@progbits
	.type	osEE_counter_db_array, @object
	.size	osEE_counter_db_array, 6
osEE_counter_db_array:
	.word	osEE_counter_cb_array
	.word	-1
	.word	1
	.section	.bss.osEE_counter_cb_array,"aw",@nobits
	.type	osEE_counter_cb_array, @object
	.size	osEE_counter_cb_array, 4
osEE_counter_cb_array:
	.zero	4
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
	.byte	1
	.section	.bss.osEE_res_cb_array,"aw",@nobits
	.type	osEE_res_cb_array, @object
	.size	osEE_res_cb_array, 5
osEE_res_cb_array:
	.zero	5
	.section	.data.osEE_sn_array,"aw",@progbits
	.type	osEE_sn_array, @object
	.size	osEE_sn_array, 8
osEE_sn_array:
	.word	osEE_sn_array+4
	.word	0
	.word	0
	.word	0
	.section	.rodata.osEE_tdb_ptr_array,"a",@progbits
	.type	osEE_tdb_ptr_array, @object
	.size	osEE_tdb_ptr_array, 6
osEE_tdb_ptr_array:
	.word	osEE_tdb_array
	.word	osEE_tdb_array+14
	.word	osEE_tdb_array+28
	.section	.rodata.osEE_tdb_array,"a",@progbits
	.type	osEE_tdb_array, @object
	.size	osEE_tdb_array, 42
osEE_tdb_array:
	.word	osEE_sdb_array
	.word	osEE_scb_array
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
	.word	0
	.word	gs(FuncTask1)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array
	.word	osEE_scb_array
	.word	osEE_tcb_array+24
	.byte	2
	.word	3
	.word	gs(osEE_idle_hook_wrapper)
	.byte	0
	.byte	0
	.byte	1
	.section	.data.osEE_tcb_array,"aw",@progbits
	.type	osEE_tcb_array, @object
	.size	osEE_tcb_array, 36
osEE_tcb_array:
	.byte	0
	.byte	-128
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
	.size	osEE_sdb_array, 4
osEE_sdb_array:
	.zero	4
	.section	.bss.osEE_scb_array,"aw",@nobits
	.type	osEE_scb_array, @object
	.size	osEE_scb_array, 2
osEE_scb_array:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
