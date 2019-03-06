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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab2/Lab2/IFSTAGE.vhd";
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);


static void work_a_1913148318_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(115, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5656);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1913148318_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 9400U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t1, t3, t2, 4);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (32U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5848);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 32U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 5672);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t7, 0);
    goto LAB6;

}

static void work_a_1913148318_3212880686_p_2(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(117, ng0);

LAB3:    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t3 = (t0 + 9400U);
    t5 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t2, t4, t3, 4);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 9304U);
    t8 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t1, t5, t2, t7, t6);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (32U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5912);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 32U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5688);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t11, 0);
    goto LAB6;

}

static void work_a_1913148318_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (31 - 12);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 5704);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1913148318_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1913148318_3212880686_p_0,(void *)work_a_1913148318_3212880686_p_1,(void *)work_a_1913148318_3212880686_p_2,(void *)work_a_1913148318_3212880686_p_3};
	xsi_register_didat("work_a_1913148318_3212880686", "isim/T_IFSTAGE_isim_beh.exe.sim/work/a_1913148318_3212880686.didat");
	xsi_register_executes(pe);
}
