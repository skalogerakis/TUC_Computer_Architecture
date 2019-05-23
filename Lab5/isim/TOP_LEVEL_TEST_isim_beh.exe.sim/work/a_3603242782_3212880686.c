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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab5/MUX4to1.vhd";



static void work_a_3603242782_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int64 t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5174);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 5176);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(47, ng0);
    t9 = (5 * 1000LL);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 3232);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t3, 32U);
    xsi_driver_first_trans_delta(t2, 0U, 32U, t9);
    t11 = (t0 + 3232);
    xsi_driver_intertial_reject(t11, t9, t9);

LAB4:    xsi_set_current_line(46, ng0);

LAB13:    t2 = (t0 + 3152);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t9 = (5 * 1000LL);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t10 = (t0 + 3232);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_delta(t10, 0U, 32U, t9);
    t16 = (t0 + 3232);
    xsi_driver_intertial_reject(t16, t9, t9);
    goto LAB4;

LAB6:    xsi_set_current_line(47, ng0);
    t9 = (5 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3232);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t3, 32U);
    xsi_driver_first_trans_delta(t2, 0U, 32U, t9);
    t11 = (t0 + 3232);
    xsi_driver_intertial_reject(t11, t9, t9);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 3152);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}


extern void work_a_3603242782_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3603242782_3212880686_p_0};
	xsi_register_didat("work_a_3603242782_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_3603242782_3212880686.didat");
	xsi_register_executes(pe);
}
