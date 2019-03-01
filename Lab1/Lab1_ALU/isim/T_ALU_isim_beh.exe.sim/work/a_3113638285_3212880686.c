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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/Lab1_ALU/ROTL.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3113638285_3212880686_p_0(char *t0)
{
    char t15[16];
    char t17[16];
    int64 t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 30);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = (31 - 31);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t7 = (t8 + t12);
    t13 = *((unsigned char *)t7);
    t16 = ((IEEE_P_2592010699) + 4024);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 30;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 30);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)97, t2, t17, (char)99, t13, (char)101);
    t21 = (31U + 1U);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 2752);
    t23 = (t19 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 32U);
    xsi_driver_first_trans_delta(t19, 0U, 32U, t1);
    t27 = (t0 + 2752);
    xsi_driver_intertial_reject(t27, t1, t1);

LAB2:    t28 = (t0 + 2672);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}


extern void work_a_3113638285_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3113638285_3212880686_p_0};
	xsi_register_didat("work_a_3113638285_3212880686", "isim/T_ALU_isim_beh.exe.sim/work/a_3113638285_3212880686.didat");
	xsi_register_executes(pe);
}
