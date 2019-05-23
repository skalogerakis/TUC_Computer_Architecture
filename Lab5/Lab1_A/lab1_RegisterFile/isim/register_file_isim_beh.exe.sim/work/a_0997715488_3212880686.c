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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/lab1_RegisterFile/decoder3x8.vhd";



static void work_a_0997715488_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4876);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 4780);
    t7 = xsi_mem_cmp(t1, t5, 3U);
    if (t7 == 1)
        goto LAB6;

LAB15:    t8 = (t0 + 4783);
    t10 = xsi_mem_cmp(t8, t5, 3U);
    if (t10 == 1)
        goto LAB7;

LAB16:    t11 = (t0 + 4786);
    t13 = xsi_mem_cmp(t11, t5, 3U);
    if (t13 == 1)
        goto LAB8;

LAB17:    t14 = (t0 + 4789);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB9;

LAB18:    t17 = (t0 + 4792);
    t19 = xsi_mem_cmp(t17, t5, 3U);
    if (t19 == 1)
        goto LAB10;

LAB19:    t20 = (t0 + 4795);
    t22 = xsi_mem_cmp(t20, t5, 3U);
    if (t22 == 1)
        goto LAB11;

LAB20:    t23 = (t0 + 4798);
    t25 = xsi_mem_cmp(t23, t5, 3U);
    if (t25 == 1)
        goto LAB12;

LAB21:    t26 = (t0 + 4801);
    t28 = xsi_mem_cmp(t26, t5, 3U);
    if (t28 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4868);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(25, ng0);
    t29 = (t0 + 4804);
    t31 = (t0 + 2912);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t29, 8U);
    xsi_driver_first_trans_fast_port(t31);
    goto LAB5;

LAB7:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 4812);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 4820);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4828);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4836);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB11:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 4844);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB12:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 4852);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB13:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 4860);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB23:;
}


extern void work_a_0997715488_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0997715488_3212880686_p_0};
	xsi_register_didat("work_a_0997715488_3212880686", "isim/register_file_isim_beh.exe.sim/work/a_0997715488_3212880686.didat");
	xsi_register_executes(pe);
}
