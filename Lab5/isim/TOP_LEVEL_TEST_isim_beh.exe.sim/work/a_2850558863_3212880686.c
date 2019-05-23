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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab5/StallUnit.vhd";



static void work_a_2850558863_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 5342);
    t7 = 1;
    if (6U == 6U)
        goto LAB14;

LAB15:    t7 = 0;

LAB16:    if (t7 == 1)
        goto LAB11;

LAB12:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t11 = (t0 + 5348);
    t14 = 1;
    if (6U == 6U)
        goto LAB20;

LAB21:    t14 = 0;

LAB22:    t3 = t14;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 3392);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);

LAB3:    t4 = (t0 + 3312);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t31 = (t0 + 3392);
    t35 = (t31 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t31);
    goto LAB3;

LAB5:    t31 = (t0 + 1672U);
    t32 = *((char **)t31);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)2);
    t1 = t34;
    goto LAB7;

LAB8:    t19 = (t0 + 1512U);
    t20 = *((char **)t19);
    t19 = (t0 + 1352U);
    t21 = *((char **)t19);
    t22 = 1;
    if (5U == 5U)
        goto LAB29;

LAB30:    t22 = 0;

LAB31:    if (t22 == 1)
        goto LAB26;

LAB27:    t25 = (t0 + 1512U);
    t26 = *((char **)t25);
    t25 = (t0 + 1192U);
    t27 = *((char **)t25);
    t28 = 1;
    if (5U == 5U)
        goto LAB35;

LAB36:    t28 = 0;

LAB37:    t18 = t28;

LAB28:    t2 = t18;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t8 = 0;

LAB17:    if (t8 < 6U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t9 = (t5 + t8);
    t10 = (t4 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB15;

LAB19:    t8 = (t8 + 1);
    goto LAB17;

LAB20:    t15 = 0;

LAB23:    if (t15 < 6U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t16 = (t12 + t15);
    t17 = (t11 + t15);
    if (*((unsigned char *)t16) != *((unsigned char *)t17))
        goto LAB21;

LAB25:    t15 = (t15 + 1);
    goto LAB23;

LAB26:    t18 = (unsigned char)1;
    goto LAB28;

LAB29:    t23 = 0;

LAB32:    if (t23 < 5U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t19 = (t20 + t23);
    t24 = (t21 + t23);
    if (*((unsigned char *)t19) != *((unsigned char *)t24))
        goto LAB30;

LAB34:    t23 = (t23 + 1);
    goto LAB32;

LAB35:    t29 = 0;

LAB38:    if (t29 < 5U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t25 = (t26 + t29);
    t30 = (t27 + t29);
    if (*((unsigned char *)t25) != *((unsigned char *)t30))
        goto LAB36;

LAB40:    t29 = (t29 + 1);
    goto LAB38;

}


extern void work_a_2850558863_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2850558863_3212880686_p_0};
	xsi_register_didat("work_a_2850558863_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_2850558863_3212880686.didat");
	xsi_register_executes(pe);
}
