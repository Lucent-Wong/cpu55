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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/cpu55/mux32x32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {11U, 0U};
static unsigned int ng13[] = {12U, 0U};
static unsigned int ng14[] = {13U, 0U};
static unsigned int ng15[] = {14U, 0U};
static unsigned int ng16[] = {15U, 0U};
static unsigned int ng17[] = {16U, 0U};
static unsigned int ng18[] = {17U, 0U};
static unsigned int ng19[] = {18U, 0U};
static unsigned int ng20[] = {19U, 0U};
static unsigned int ng21[] = {20U, 0U};
static unsigned int ng22[] = {21U, 0U};
static unsigned int ng23[] = {22U, 0U};
static unsigned int ng24[] = {23U, 0U};
static unsigned int ng25[] = {24U, 0U};
static unsigned int ng26[] = {25U, 0U};
static unsigned int ng27[] = {26U, 0U};
static unsigned int ng28[] = {27U, 0U};
static unsigned int ng29[] = {28U, 0U};
static unsigned int ng30[] = {29U, 0U};
static unsigned int ng31[] = {30U, 0U};
static unsigned int ng32[] = {31U, 0U};



static void Always_58_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4492);
    *((int *)t2) = 1;
    t3 = (t0 + 4324);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng32)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB69;

LAB70:
LAB71:    goto LAB2;

LAB7:    xsi_set_current_line(61, ng0);

LAB72:    xsi_set_current_line(62, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 3772);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB71;

LAB9:    xsi_set_current_line(64, ng0);

LAB73:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB11:    xsi_set_current_line(67, ng0);

LAB74:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 876U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB13:    xsi_set_current_line(70, ng0);

LAB75:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 968U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB15:    xsi_set_current_line(73, ng0);

LAB76:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB17:    xsi_set_current_line(76, ng0);

LAB77:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 1152U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB19:    xsi_set_current_line(79, ng0);

LAB78:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1244U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB21:    xsi_set_current_line(82, ng0);

LAB79:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 1336U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB23:    xsi_set_current_line(85, ng0);

LAB80:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 1428U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB25:    xsi_set_current_line(88, ng0);

LAB81:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 1520U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB27:    xsi_set_current_line(91, ng0);

LAB82:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 1612U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB29:    xsi_set_current_line(94, ng0);

LAB83:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 1704U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB31:    xsi_set_current_line(97, ng0);

LAB84:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 1796U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB33:    xsi_set_current_line(100, ng0);

LAB85:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 1888U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB35:    xsi_set_current_line(103, ng0);

LAB86:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 1980U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB37:    xsi_set_current_line(106, ng0);

LAB87:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 2072U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB39:    xsi_set_current_line(109, ng0);

LAB88:    xsi_set_current_line(110, ng0);
    t3 = (t0 + 2164U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB41:    xsi_set_current_line(112, ng0);

LAB89:    xsi_set_current_line(113, ng0);
    t3 = (t0 + 2256U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB43:    xsi_set_current_line(115, ng0);

LAB90:    xsi_set_current_line(116, ng0);
    t3 = (t0 + 2348U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB45:    xsi_set_current_line(118, ng0);

LAB91:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 2440U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB47:    xsi_set_current_line(121, ng0);

LAB92:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 2532U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB49:    xsi_set_current_line(124, ng0);

LAB93:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 2624U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB51:    xsi_set_current_line(127, ng0);

LAB94:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 2716U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB53:    xsi_set_current_line(130, ng0);

LAB95:    xsi_set_current_line(131, ng0);
    t3 = (t0 + 2808U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB55:    xsi_set_current_line(133, ng0);

LAB96:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 2900U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB57:    xsi_set_current_line(136, ng0);

LAB97:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 2992U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB59:    xsi_set_current_line(139, ng0);

LAB98:    xsi_set_current_line(140, ng0);
    t3 = (t0 + 3084U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB61:    xsi_set_current_line(142, ng0);

LAB99:    xsi_set_current_line(143, ng0);
    t3 = (t0 + 3176U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB63:    xsi_set_current_line(145, ng0);

LAB100:    xsi_set_current_line(146, ng0);
    t3 = (t0 + 3268U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB65:    xsi_set_current_line(148, ng0);

LAB101:    xsi_set_current_line(149, ng0);
    t3 = (t0 + 3360U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB67:    xsi_set_current_line(151, ng0);

LAB102:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 3452U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

LAB69:    xsi_set_current_line(154, ng0);

LAB103:    xsi_set_current_line(155, ng0);
    t3 = (t0 + 3544U);
    t4 = *((char **)t3);
    t3 = (t0 + 3772);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB71;

}


extern void work_m_00000000000275593667_0467083739_init()
{
	static char *pe[] = {(void *)Always_58_0};
	xsi_register_didat("work_m_00000000000275593667_0467083739", "isim/cpu_tb_isim_beh.exe.sim/work/m_00000000000275593667_0467083739.didat");
	xsi_register_executes(pe);
}
