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
static const char *ng0 = "/home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/xnorgate_4.v";



static void Cont_24_0(char *t0)
{
    char t3[8];
    char t6[8];
    char t21[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t5);
    t9 = (t7 ^ t8);
    *((unsigned int *)t6) = t9;
    t2 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t10);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t11);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB4;

LAB5:
LAB6:    t19 = (t0 + 1368U);
    t20 = *((char **)t19);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t20);
    t24 = (t22 ^ t23);
    *((unsigned int *)t21) = t24;
    t19 = (t6 + 4);
    t25 = (t20 + 4);
    t26 = (t21 + 4);
    t27 = *((unsigned int *)t19);
    t28 = *((unsigned int *)t25);
    t29 = (t27 | t28);
    *((unsigned int *)t26) = t29;
    t30 = *((unsigned int *)t26);
    t31 = (t30 != 0);
    if (t31 == 1)
        goto LAB7;

LAB8:
LAB9:    t34 = (t0 + 1528U);
    t35 = *((char **)t34);
    t37 = *((unsigned int *)t21);
    t38 = *((unsigned int *)t35);
    t39 = (t37 ^ t38);
    *((unsigned int *)t36) = t39;
    t34 = (t21 + 4);
    t40 = (t35 + 4);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB10;

LAB11:
LAB12:    memset(t3, 0, 8);
    t49 = (t36 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t36);
    t53 = (t52 & t51);
    t54 = (t53 & 1U);
    if (t54 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t49) == 0)
        goto LAB13;

LAB15:    t55 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t55) = 1;

LAB16:    t56 = (t3 + 4);
    t57 = (t36 + 4);
    t58 = *((unsigned int *)t36);
    t59 = (~(t58));
    *((unsigned int *)t3) = t59;
    *((unsigned int *)t56) = 0;
    if (*((unsigned int *)t57) != 0)
        goto LAB18;

LAB17:    t64 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t64 & 1U);
    t65 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t65 & 1U);
    t66 = (t0 + 3240);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memset(t70, 0, 8);
    t71 = 1U;
    t72 = t71;
    t73 = (t3 + 4);
    t74 = *((unsigned int *)t3);
    t71 = (t71 & t74);
    t75 = *((unsigned int *)t73);
    t72 = (t72 & t75);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t77 | t71);
    t78 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t78 | t72);
    xsi_driver_vfirst_trans(t66, 0, 0);
    t79 = (t0 + 3160);
    *((int *)t79) = 1;

LAB1:    return;
LAB4:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB6;

LAB7:    t32 = *((unsigned int *)t21);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t21) = (t32 | t33);
    goto LAB9;

LAB10:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t36) = (t47 | t48);
    goto LAB12;

LAB13:    *((unsigned int *)t3) = 1;
    goto LAB16;

LAB18:    t60 = *((unsigned int *)t3);
    t61 = *((unsigned int *)t57);
    *((unsigned int *)t3) = (t60 | t61);
    t62 = *((unsigned int *)t56);
    t63 = *((unsigned int *)t57);
    *((unsigned int *)t56) = (t62 | t63);
    goto LAB17;

}


extern void work_m_09801200080697861265_0324310711_init()
{
	static char *pe[] = {(void *)Cont_24_0};
	xsi_register_didat("work_m_09801200080697861265_0324310711", "isim/xnorgate4_test_isim_beh.exe.sim/work/m_09801200080697861265_0324310711.didat");
	xsi_register_executes(pe);
}
