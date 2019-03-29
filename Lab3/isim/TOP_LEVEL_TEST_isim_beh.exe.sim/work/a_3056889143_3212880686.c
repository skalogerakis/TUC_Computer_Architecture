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
static const char *ng0 = "G:/lab3_test/Extender.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3056889143_3212880686_p_0(char *t0)
{
    char t11[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    unsigned int t22;
    char *t23;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 3072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 4660U);
    t8 = (t0 + 4628U);
    t1 = xsi_base_array_concat(t1, t11, t6, (char)97, t2, t7, (char)97, t5, t8, (char)101);
    t12 = (16U + 16U);
    t3 = (32U != t12);
    if (t3 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 3136);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t12, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t16 = (15 - 15);
    t12 = (t16 * -1);
    t17 = (1U * t12);
    t18 = (0 + t17);
    t1 = (t5 + t18);
    t19 = *((unsigned char *)t1);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t16 = (15 - 15);
    t12 = (t16 * -1);
    t17 = (1U * t12);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB12;

LAB13:
LAB10:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t12 = (15 - 15);
    t17 = (t12 * 1U);
    t18 = (0 + t17);
    t1 = (t5 + t18);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 4660U);
    t9 = (t21 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 15;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t16 = (0 - 15);
    t22 = (t16 * -1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t6 = xsi_base_array_concat(t6, t11, t7, (char)97, t2, t8, (char)97, t1, t21, (char)101);
    t22 = (16U + 16U);
    t3 = (32U != t22);
    if (t3 == 1)
        goto LAB14;

LAB15:    t10 = (t0 + 3136);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t23 = *((char **)t15);
    memcpy(t23, t6, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB9:    xsi_set_current_line(60, ng0);
    t6 = xsi_get_transient_memory(16U);
    memset(t6, 0, 16U);
    t7 = t6;
    memset(t7, (unsigned char)3, 16U);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 16U);
    xsi_driver_first_trans_fast(t8);
    goto LAB10;

LAB12:    xsi_set_current_line(63, ng0);
    t5 = xsi_get_transient_memory(16U);
    memset(t5, 0, 16U);
    t6 = t5;
    memset(t6, (unsigned char)2, 16U);
    t7 = (t0 + 3072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t5, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB10;

LAB14:    xsi_size_not_matching(32U, t22, 0);
    goto LAB15;

}


extern void work_a_3056889143_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3056889143_3212880686_p_0};
	xsi_register_didat("work_a_3056889143_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_3056889143_3212880686.didat");
	xsi_register_executes(pe);
}
