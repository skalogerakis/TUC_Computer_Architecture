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
static const char *ng0 = "G:/lab3_test/MUX10to5.vhd";



static void work_a_0209911648_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t5 = (5 * 1000LL);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 3072);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 5U);
    xsi_driver_first_trans_delta(t1, 0U, 5U, t5);
    t11 = (t0 + 3072);
    xsi_driver_intertial_reject(t11, t5, t5);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t5 = (5 * 1000LL);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 3072);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 5U);
    xsi_driver_first_trans_delta(t1, 0U, 5U, t5);
    t11 = (t0 + 3072);
    xsi_driver_intertial_reject(t11, t5, t5);
    goto LAB3;

}


extern void work_a_0209911648_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0209911648_3212880686_p_0};
	xsi_register_didat("work_a_0209911648_3212880686", "isim/DATAPATH_TEST_isim_beh.exe.sim/work/a_0209911648_3212880686.didat");
	xsi_register_executes(pe);
}
