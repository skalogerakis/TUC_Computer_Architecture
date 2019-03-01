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
static const char *ng0 = "D:/TUC_PROJECT/TUC_Computer_Architecture/Lab1/lab1_B/multiplexer1024to32_TEST.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2733123102_2372691052_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    unsigned char t12;

LAB0:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6217);
    t5 = (t0 + 3016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1648U);
    t4 = *((char **)t2);
    t11 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t10, t11, 1024);
    t12 = (1024U != 1024U);
    if (t12 == 1)
        goto LAB8;

LAB9:    t5 = (t0 + 3080);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1024U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t3);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(1024U, 1024U, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(93, ng0);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB14:    goto LAB2;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_2733123102_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2733123102_2372691052_p_0};
	xsi_register_didat("work_a_2733123102_2372691052", "isim/multiplexer1024to32_TEST_isim_beh.exe.sim/work/a_2733123102_2372691052.didat");
	xsi_register_executes(pe);
}
