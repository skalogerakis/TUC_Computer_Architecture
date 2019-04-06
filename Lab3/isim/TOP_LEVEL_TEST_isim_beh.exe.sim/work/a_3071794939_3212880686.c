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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab3/Subtraction32BIT.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3071794939_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5032);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t6, 1U, 32U, 0LL);

LAB2:    t11 = (t0 + 4872);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3071794939_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5096);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t6, 1U, 32U, 0LL);

LAB2:    t11 = (t0 + 4888);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3071794939_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7896U);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t4 = (t0 + 7912U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (33U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 5160);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 33U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 4904);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t9, 0);
    goto LAB6;

}

static void work_a_3071794939_3212880686_p_3(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = (32 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5224);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_delta(t7, 0U, 32U, t1);
    t12 = (t0 + 5224);
    xsi_driver_intertial_reject(t12, t1, t1);

LAB2:    t13 = (t0 + 4920);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3071794939_3212880686_p_4(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = (32 - 32);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 5288);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_delta(t9, 0U, 1, t1);
    t14 = (t0 + 5288);
    xsi_driver_intertial_reject(t14, t1, t1);

LAB2:    t15 = (t0 + 4936);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3071794939_3212880686_p_5(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned char t48;
    unsigned char t49;
    unsigned char t50;
    unsigned char t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t12 = (31 - 31);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    t17 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t16);
    t18 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t17);
    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t21 = (31 - 32);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t26 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t18, t25);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t29 = (31 - 31);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t27 = (t28 + t32);
    t33 = *((unsigned char *)t27);
    t34 = (t0 + 1192U);
    t35 = *((char **)t34);
    t36 = (31 - 31);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t34 = (t35 + t39);
    t40 = *((unsigned char *)t34);
    t41 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t33, t40);
    t42 = (t0 + 1832U);
    t43 = *((char **)t42);
    t44 = (31 - 32);
    t45 = (t44 * -1);
    t46 = (1U * t45);
    t47 = (0 + t46);
    t42 = (t43 + t47);
    t48 = *((unsigned char *)t42);
    t49 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t48);
    t50 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t41, t49);
    t51 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t26, t50);
    t52 = (t0 + 5352);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    *((unsigned char *)t56) = t51;
    xsi_driver_first_trans_delta(t52, 0U, 1, t1);
    t57 = (t0 + 5352);
    xsi_driver_intertial_reject(t57, t1, t1);

LAB2:    t58 = (t0 + 4952);
    *((int *)t58) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3071794939_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3071794939_3212880686_p_0,(void *)work_a_3071794939_3212880686_p_1,(void *)work_a_3071794939_3212880686_p_2,(void *)work_a_3071794939_3212880686_p_3,(void *)work_a_3071794939_3212880686_p_4,(void *)work_a_3071794939_3212880686_p_5};
	xsi_register_didat("work_a_3071794939_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_3071794939_3212880686.didat");
	xsi_register_executes(pe);
}
