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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *IEEE_P_0774719531;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    work_a_3222946569_3212880686_init();
    ieee_p_1242562249_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_3056889143_3212880686_init();
    work_a_0209911648_3212880686_init();
    work_a_2630181228_3212880686_init();
    work_a_0098398448_3212880686_init();
    work_a_2906491182_1323274903_init();
    work_a_3859870870_2372691052_init();
    work_a_2615964831_3212880686_init();
    work_a_2817806450_3212880686_init();
    work_a_4292820241_3212880686_init();
    work_a_3967920148_3212880686_init();
    work_a_0972602110_3212880686_init();
    work_a_1545048384_3212880686_init();
    work_a_3071794939_3212880686_init();
    work_a_1940060679_3212880686_init();
    work_a_1907341088_3212880686_init();
    work_a_2502293998_3212880686_init();
    work_a_1172356055_3212880686_init();
    work_a_3905540667_3212880686_init();
    work_a_3113638285_3212880686_init();
    work_a_3717513326_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2128221623_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_1913148318_3212880686_init();
    work_a_3830602496_0000452272_init();
    work_a_0977060546_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_0178362298_3212880686_init();
    work_a_2349278152_2372691052_init();


    xsi_register_tops("work_a_2349278152_2372691052");

    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
