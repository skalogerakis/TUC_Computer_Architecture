/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/lab3_test/MUX2TO1.vhd";



static void work_a_0972602110_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(43, ng0);

LAB9:    t2 = (t0 + 2992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t5 = (5 * 1000LL);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 3072);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 32U);
    xsi_driver_first_trans_delta(t6, 0U, 32U, t5);
    t12 = (t0 + 3072);
    xsi_driver_intertial_reject(t12, t5, t5);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t5 = (5 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3072);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_delta(t2, 0U, 32U, t5);
    t10 = (t0 + 3072);
    xsi_driver_intertial_reject(t10, t5, t5);
    goto LAB4;

LAB7:    t3 = (t0 + 2992);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}


extern void work_a_0972602110_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0972602110_3212880686_p_0};
	xsi_register_didat("work_a_0972602110_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_0972602110_3212880686.didat");
	xsi_register_executes(pe);
}
