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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab4/LAB4/Byte_Case.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2831132484_3212880686_p_0(char *t0)
{
    char t13[16];
    char t15[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t21;
    int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2512U);
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

LAB11:    t2 = (t0 + 2832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 4669);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = (31 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t7 = (t8 + t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 23;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (23 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t20 + 0U);
    t21 = (t17 + 0U);
    *((int *)t21) = 7;
    t21 = (t17 + 4U);
    *((int *)t21) = 0;
    t21 = (t17 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 7);
    t19 = (t22 * -1);
    t19 = (t19 + 1);
    t21 = (t17 + 12U);
    *((unsigned int *)t21) = t19;
    t12 = xsi_base_array_concat(t12, t13, t14, (char)97, t5, t15, (char)97, t7, t20, (char)101);
    t19 = (24U + 8U);
    t23 = (32U != t19);
    if (t23 == 1)
        goto LAB7;

LAB8:    t21 = (t0 + 2912);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t12, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 2912);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(32U, t19, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 2832);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}


extern void work_a_2831132484_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2831132484_3212880686_p_0};
	xsi_register_didat("work_a_2831132484_3212880686", "isim/T_Byte_Case_isim_beh.exe.sim/work/a_2831132484_3212880686.didat");
	xsi_register_executes(pe);
}
