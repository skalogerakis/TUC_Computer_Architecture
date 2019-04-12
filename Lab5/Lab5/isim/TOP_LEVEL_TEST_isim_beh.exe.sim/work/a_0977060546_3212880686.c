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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab5/BRANCH_BOX.vhd";



static void work_a_0977060546_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4860);
    t4 = xsi_mem_cmp(t1, t2, 6U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 4866);
    t7 = xsi_mem_cmp(t5, t2, 6U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 4872);
    t10 = xsi_mem_cmp(t8, t2, 6U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(55, ng0);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 != 0)
        goto LAB14;

LAB15:
LAB12:    goto LAB2;

LAB5:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 != 0)
        goto LAB19;

LAB20:
LAB17:    goto LAB2;

LAB10:;
LAB11:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3072);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3072);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB16:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3072);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3072);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

}


extern void work_a_0977060546_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0977060546_3212880686_p_0};
	xsi_register_didat("work_a_0977060546_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_0977060546_3212880686.didat");
	xsi_register_executes(pe);
}
