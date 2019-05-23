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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab5/Forward_Unit.vhd";



static void work_a_3946787226_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5990);
    t5 = 1;
    if (5U == 5U)
        goto LAB19;

LAB20:    t5 = 0;

LAB21:    if (t5 == 1)
        goto LAB16;

LAB17:    t9 = (t0 + 1672U);
    t12 = *((char **)t9);
    t10 = *((unsigned char *)t12);
    t11 = (t10 == (unsigned char)2);
    t1 = t11;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t1 = 1;
    if (5U == 5U)
        goto LAB27;

LAB28:    t1 = 0;

LAB29:    if (t1 != 0)
        goto LAB25;

LAB26:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t1 = 1;
    if (5U == 5U)
        goto LAB35;

LAB36:    t1 = 0;

LAB37:    if (t1 != 0)
        goto LAB33;

LAB34:
LAB3:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = 1;
    if (5U == 5U)
        goto LAB44;

LAB45:    t1 = 0;

LAB46:    if (t1 != 0)
        goto LAB41;

LAB43:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = 1;
    if (5U == 5U)
        goto LAB52;

LAB53:    t1 = 0;

LAB54:    if (t1 != 0)
        goto LAB50;

LAB51:
LAB42:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t8 = (t0 + 5986);
    t13 = (t0 + 3712);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5988);
    t4 = (t0 + 3776);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    t1 = t11;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 5U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(59, ng0);
    t9 = (t0 + 5995);
    t14 = (t0 + 3776);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5997);
    t4 = (t0 + 3712);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB16:    t1 = (unsigned char)1;
    goto LAB18;

LAB19:    t6 = 0;

LAB22:    if (t6 < 5U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB20;

LAB24:    t6 = (t6 + 1);
    goto LAB22;

LAB25:    xsi_set_current_line(63, ng0);
    t8 = (t0 + 5999);
    t12 = (t0 + 3776);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB27:    t6 = 0;

LAB30:    if (t6 < 5U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB28;

LAB32:    t6 = (t6 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(66, ng0);
    t8 = (t0 + 6001);
    t12 = (t0 + 3776);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB35:    t6 = 0;

LAB38:    if (t6 < 5U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB36;

LAB40:    t6 = (t6 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(73, ng0);
    t8 = (t0 + 6003);
    t12 = (t0 + 3712);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB42;

LAB44:    t6 = 0;

LAB47:    if (t6 < 5U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB45;

LAB49:    t6 = (t6 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(76, ng0);
    t8 = (t0 + 6005);
    t12 = (t0 + 3712);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB42;

LAB52:    t6 = 0;

LAB55:    if (t6 < 5U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB53;

LAB57:    t6 = (t6 + 1);
    goto LAB55;

}


extern void work_a_3946787226_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3946787226_3212880686_p_0};
	xsi_register_didat("work_a_3946787226_3212880686", "isim/TOP_LEVEL_TEST_isim_beh.exe.sim/work/a_3946787226_3212880686.didat");
	xsi_register_executes(pe);
}
