/* ###*B*###
 *
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 * 
 * Copyright (C) 2002-2018 Evidence Srl
 * 
 * This file is part of ERIKA Enterprise.
 * 
 * See LICENSE file.
 *
 * ###*E*### */

/***************************************************************************
 *
 * This file is generated by RT-Druid.
 * Please do not modify it.
 *
 **************************************************************************/

#include "ee_conf.h"




/***************************************************************************
 *
 * Reserve stack
 *
 **************************************************************************/



/***************************************************************************
 *
 * Init Stack Control Block
 *
 **************************************************************************/
static VAR(OsEE_SCB, OS_VAR_INIT) osEE_scb_array[(1U)] =
{
  { /* .p_tos = */  NULL }
};

/***************************************************************************
 *
 * Init Stack Descriptor Block
 *
 **************************************************************************/
static VAR(OsEE_SDB, OS_CONST) osEE_sdb_array[(1U)] =
{
  {
    /* .p_bos = */      (OsEE_CTX *)NULL,
    /* .stack_size = */ 0
  }
};


/***************************************************************************
 *
 * Init Tasks Control Block
 *
 **************************************************************************/

static VAR(OsEE_TCB, OS_VAR_INIT)
  osEE_tcb_array[3] =
{
  {
    /* .current_num_of_act = */ 0U,
    /* .current_prio       = */ 128U,
    /* .status             = */ SUSPENDED,
    /* .p_last_m           = */ NULL,
    /* .wait_mask          = */ 0U,
    /* .event_mask         = */ 0U,
    /* .p_own_sn           = */ NULL
  },
  {
    /* .current_num_of_act = */ 0U,
    /* .current_prio       = */ 1U,
    /* .status             = */ SUSPENDED,
    /* .p_last_m           = */ NULL,
    /* .wait_mask          = */ 0U,
    /* .event_mask         = */ 0U,
    /* .p_own_sn           = */ NULL
  },
  {
    /* .current_num_of_act = */ 1U,
    /* .current_prio       = */ 0U,
    /* .status             = */ RUNNING,
    /* .p_last_m           = */ NULL,
    /* .wait_mask          = */ 0U,
    /* .event_mask         = */ 0U,
    /* .p_own_sn           = */ NULL}
};


/***************************************************************************
 *
 * Init Tasks Descriptor Block
 *
 **************************************************************************/

static VAR(OsEE_TDB, OS_CONST)
  osEE_tdb_array[3]  =
{
  {
    /* .hdb = */ {
      /* .p_sdb    = */   &osEE_sdb_array[0U],
      /* .p_scb    = */   &osEE_scb_array[0U]
    },
    /* .p_tcb          = */ &osEE_tcb_array[0U],
    /* .tid            = */ 0U,
    /* .task_type      = */ OSEE_TASK_TYPE_ISR2,
    /* .task_func      = */ TimerISR,
    /* .ready_prio     = */ 128U,
    /* .dispatch_prio  = */ 128U,
    /* .max_num_of_act = */ 1U
  },
  {
    /* .hdb = */ {
      /* .p_sdb    = */   &osEE_sdb_array[0U],
      /* .p_scb    = */   &osEE_scb_array[0U]
    },
    /* .p_tcb          = */ &osEE_tcb_array[1U],
    /* .tid            = */ 1U,
    /* .task_type      = */ OSEE_TASK_TYPE_BASIC,
    /* .task_func      = */ TASK_FUNC(Task1),
    /* .ready_prio     = */ 1U,
    /* .dispatch_prio  = */ 1U,
    /* .max_num_of_act = */ 1U
  },
  {
    /* .hdb = */ {
      /* .p_sdb    = */     &osEE_sdb_array[0U],
      /* .p_scb    = */     &osEE_scb_array[0U]
    },
    /* .p_tcb          = */ &osEE_tcb_array[2U],
    /* .tid            = */ 2U,
    /* .task_type      = */ OSEE_TASK_TYPE_IDLE,
    /* .task_func      = */ osEE_idle_hook_wrapper,
    /* .ready_prio     = */ 0U,
    /* .dispatch_prio  = */ 0U,
    /* .max_num_of_act = */ 1U
  }
};



static CONSTP2VAR(OsEE_TDB, OS_CONST, OS_APPL_DATA)
  osEE_tdb_ptr_array[OSEE_TASK_ARRAY_SIZE + OsNumberOfCores] =
{
  &osEE_tdb_array[0U],
  &osEE_tdb_array[1U],
  &osEE_tdb_array[2U]
};



static VAR(OsEE_SN, OS_VAR_INIT)  osEE_sn_array[2] = {
  {
    /* .p_next = */ &osEE_sn_array[1U],
    /* .p_tdb  = */ NULL
  },
  {
    /* .p_next = */ NULL,
    /* .p_tdb  = */ NULL
  }
};



static VAR(OsEE_ResourceCB, OS_VAR_CLEARED) osEE_res_cb_array[1];



static VAR(OsEE_ResourceDB, OS_CONST) osEE_res_db_array[1] = {
  {
    /* .p_cb              = */ &osEE_res_cb_array[0U],
    /* .prio              = */ 1U
  }
};



static CONSTP2VAR(OsEE_ResourceDB, OS_CONST, OS_APPL_DATA)
  osEE_res_db_ptr_array[OSEE_RESOURCE_ARRAY_SIZE] =
{
  &osEE_res_db_array[0U]
};


/***************************************************************************
 *
 * Autostart Task Core0
 *
 **************************************************************************/

static CONSTP2VAR(OsEE_TDB, OS_CONST, OS_APPL_DATA)
  osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE[1U] =
{
  &osEE_tdb_array[1U]
};
static VAR(OsEE_autostart_tdb, OS_CONST) osEE_autostart_tdb_array[1U] =
{
  {
    /* .tdb_ptr_array = */    (P2SYM_CONSTP2VAR(OsEE_TDB, OS_APPL_CONST, TYPEDEF)[])&osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE,
    /* .tdb_array_size  = */  OSEE_ARRAY_ELEMENT_COUNT(osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE)
  }};


/***************************************************************************
 *
 * Init Cpu Control Block Core0
 *
 **************************************************************************/


VAR(OsEE_CCB, OS_VAR_INIT) osEE_ccb_var = {
  /* .p_curr      = */  &osEE_tdb_array[2U],
  /* .rq          = */  NULL,
  /* .p_free_sn   = */  &osEE_sn_array[0U],
  /* .p_stk_sn    = */  NULL,
  /* .os_status   = */  OSEE_KERNEL_INITIALIZED,
  /* .app_mode    = */  INVALID_APPMODE,
  /* .last_error  = */  E_OK,
  /* .prev_s_isr_all_status = */ 0U,
  /* .prev_s_isr_os_status  = */ 0U,
  /* .s_isr_all_cnt         = */ 0U,
  /* .s_isr_os_cnt          = */ 0U,
  /* .d_isr_all_cnt         = */ 0U
};


/***************************************************************************
 *
 * Init Cpu Descriptor Block
 *
 **************************************************************************/

VAR(OsEE_CDB, OS_CONST) osEE_cdb_var = {
  /* .p_ccb                         = */ &osEE_ccb_var,
  /* .p_idle_task                   = */ &osEE_tdb_array[2U],
  /* .p_autostart_tdb_array         = */ (P2SYM_VAR(OsEE_autostart_tdb, OS_APPL_CONST, TYPEDEF)[])&osEE_autostart_tdb_array,
  /* .autostart_tdb_array_size      = */ OSEE_ARRAY_ELEMENT_COUNT(osEE_autostart_tdb_array)
};


VAR(OsEE_KCB, OS_VAR_CLEARED) osEE_kcb_var;


VAR(OsEE_KDB, OS_CONST) osEE_kdb_var = {
  /* .p_kcb               = */ &osEE_kcb_var,
  /* .p_tdb_ptr_array     = */ (P2SYM_CONSTP2VAR(OsEE_TDB, OS_APPL_CONST, TYPEDEF)[])&osEE_tdb_ptr_array,
  /* .tdb_array_size      = */ OSEE_ARRAY_ELEMENT_COUNT(osEE_tdb_ptr_array),
  /* .p_res_ptr_array     = */ (P2SYM_CONSTP2VAR(OsEE_ResourceDB, OS_APPL_CONST, TYPEDEF)[])&osEE_res_db_ptr_array,
  /* .res_array_size      = */ OSEE_ARRAY_ELEMENT_COUNT(osEE_res_db_ptr_array)
};


/***************************************************************************
 *
 * End
 *
 **************************************************************************/

