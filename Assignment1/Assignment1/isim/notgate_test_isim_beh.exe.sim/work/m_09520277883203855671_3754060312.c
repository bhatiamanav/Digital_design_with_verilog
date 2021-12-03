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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "a=%d y=%d\n";
static const char *ng1 = "/home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/notgate_test.v";
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};

void Monitor_48_2(char *);
void Monitor_48_2(char *);


static void Monitor_48_2_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 1448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    xsi_vlogfile_write(1, 0, 3, ng0, 3, t0, (char)118, t3, 1, (char)118, t5, 1);

LAB1:    return;
}

static void Initial_39_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng1);

LAB4:    xsi_set_current_line(41, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng1);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(44, ng1);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    goto LAB1;

}

static void Initial_47_1(char *t0)
{

LAB0:    xsi_set_current_line(47, ng1);

LAB2:    xsi_set_current_line(48, ng1);
    Monitor_48_2(t0);

LAB1:    return;
}

void Monitor_48_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2664);
    t2 = (t0 + 3176);
    xsi_vlogfile_monitor((void *)Monitor_48_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_09520277883203855671_3754060312_init()
{
	static char *pe[] = {(void *)Initial_39_0,(void *)Initial_47_1,(void *)Monitor_48_2};
	xsi_register_didat("work_m_09520277883203855671_3754060312", "isim/notgate_test_isim_beh.exe.sim/work/m_09520277883203855671_3754060312.didat");
	xsi_register_executes(pe);
}
