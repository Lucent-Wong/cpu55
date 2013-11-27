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
static const char *ng0 = "D:/cpu55/slt.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Cont_34_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t17[8];
    char t20[8];
    char t34[8];
    char t47[8];
    char t55[8];
    char t63[8];
    char t95[8];
    char t103[8];
    char t152[8];
    char t153[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    char *t172;
    char *t173;
    char *t174;
    char *t175;
    char *t176;
    char *t177;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 784U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t148 = *((unsigned int *)t4);
    t149 = (~(t148));
    t150 = *((unsigned int *)t12);
    t151 = (t149 || t150);
    if (t151 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t152, 8);

LAB16:    t172 = (t0 + 2388);
    t173 = (t172 + 32U);
    t174 = *((char **)t173);
    t175 = (t174 + 40U);
    t176 = *((char **)t175);
    memcpy(t176, t3, 8);
    xsi_driver_vfirst_trans(t172, 0, 31);
    t177 = (t0 + 2336);
    *((int *)t177) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1060U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t18) != 0)
        goto LAB19;

LAB20:    t27 = (t20 + 4);
    t28 = *((unsigned int *)t20);
    t29 = (!(t28));
    t30 = *((unsigned int *)t27);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB21;

LAB22:    memcpy(t103, t20, 8);

LAB23:    memset(t17, 0, 8);
    t131 = (t103 + 4);
    t132 = *((unsigned int *)t131);
    t133 = (~(t132));
    t134 = *((unsigned int *)t103);
    t135 = (t134 & t133);
    t136 = (t135 & 1U);
    if (t136 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t131) != 0)
        goto LAB47;

LAB48:    t138 = (t17 + 4);
    t139 = *((unsigned int *)t17);
    t140 = *((unsigned int *)t138);
    t141 = (t139 || t140);
    if (t141 > 0)
        goto LAB49;

LAB50:    t143 = *((unsigned int *)t17);
    t144 = (~(t143));
    t145 = *((unsigned int *)t138);
    t146 = (t144 || t145);
    if (t146 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t138) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t17) > 0)
        goto LAB55;

LAB56:    memcpy(t16, t147, 8);

LAB57:    goto LAB9;

LAB10:    t154 = (t0 + 968U);
    t155 = *((char **)t154);
    memset(t153, 0, 8);
    t154 = (t155 + 4);
    t156 = *((unsigned int *)t154);
    t157 = (~(t156));
    t158 = *((unsigned int *)t155);
    t159 = (t158 & t157);
    t160 = (t159 & 1U);
    if (t160 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t154) != 0)
        goto LAB60;

LAB61:    t162 = (t153 + 4);
    t163 = *((unsigned int *)t153);
    t164 = *((unsigned int *)t162);
    t165 = (t163 || t164);
    if (t165 > 0)
        goto LAB62;

LAB63:    t167 = *((unsigned int *)t153);
    t168 = (~(t167));
    t169 = *((unsigned int *)t162);
    t170 = (t168 || t169);
    if (t170 > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t162) > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t153) > 0)
        goto LAB68;

LAB69:    memcpy(t152, t171, 8);

LAB70:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t152, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t20) = 1;
    goto LAB20;

LAB19:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB20;

LAB21:    t32 = (t0 + 1244U);
    t33 = *((char **)t32);
    memset(t34, 0, 8);
    t32 = (t33 + 4);
    t35 = *((unsigned int *)t32);
    t36 = (~(t35));
    t37 = *((unsigned int *)t33);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t32) != 0)
        goto LAB26;

LAB27:    t41 = (t34 + 4);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t41);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB28;

LAB29:    memcpy(t63, t34, 8);

LAB30:    memset(t95, 0, 8);
    t96 = (t63 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t63);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t96) != 0)
        goto LAB40;

LAB41:    t104 = *((unsigned int *)t20);
    t105 = *((unsigned int *)t95);
    t106 = (t104 | t105);
    *((unsigned int *)t103) = t106;
    t107 = (t20 + 4);
    t108 = (t95 + 4);
    t109 = (t103 + 4);
    t110 = *((unsigned int *)t107);
    t111 = *((unsigned int *)t108);
    t112 = (t110 | t111);
    *((unsigned int *)t109) = t112;
    t113 = *((unsigned int *)t109);
    t114 = (t113 != 0);
    if (t114 == 1)
        goto LAB42;

LAB43:
LAB44:    goto LAB23;

LAB24:    *((unsigned int *)t34) = 1;
    goto LAB27;

LAB26:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB27;

LAB28:    t45 = (t0 + 600U);
    t46 = *((char **)t45);
    memset(t47, 0, 8);
    t45 = (t47 + 4);
    t48 = (t46 + 4);
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 31);
    t51 = (t50 & 1);
    *((unsigned int *)t47) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 >> 31);
    t54 = (t53 & 1);
    *((unsigned int *)t45) = t54;
    memset(t55, 0, 8);
    t56 = (t47 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t47);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t56) != 0)
        goto LAB33;

LAB34:    t64 = *((unsigned int *)t34);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t67 = (t34 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB30;

LAB31:    *((unsigned int *)t55) = 1;
    goto LAB34;

LAB33:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB34;

LAB35:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t34 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t34);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t87 = (t80 & t82);
    t88 = (t84 & t86);
    t89 = (~(t87));
    t90 = (~(t88));
    t91 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t91 & t89);
    t92 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB37;

LAB38:    *((unsigned int *)t95) = 1;
    goto LAB41;

LAB40:    t102 = (t95 + 4);
    *((unsigned int *)t95) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB41;

LAB42:    t115 = *((unsigned int *)t103);
    t116 = *((unsigned int *)t109);
    *((unsigned int *)t103) = (t115 | t116);
    t117 = (t20 + 4);
    t118 = (t95 + 4);
    t119 = *((unsigned int *)t117);
    t120 = (~(t119));
    t121 = *((unsigned int *)t20);
    t122 = (t121 & t120);
    t123 = *((unsigned int *)t118);
    t124 = (~(t123));
    t125 = *((unsigned int *)t95);
    t126 = (t125 & t124);
    t127 = (~(t122));
    t128 = (~(t126));
    t129 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t129 & t127);
    t130 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t130 & t128);
    goto LAB44;

LAB45:    *((unsigned int *)t17) = 1;
    goto LAB48;

LAB47:    t137 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t137) = 1;
    goto LAB48;

LAB49:    t142 = ((char*)((ng1)));
    goto LAB50;

LAB51:    t147 = ((char*)((ng2)));
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t16, 32, t142, 32, t147, 32);
    goto LAB57;

LAB55:    memcpy(t16, t142, 8);
    goto LAB57;

LAB58:    *((unsigned int *)t153) = 1;
    goto LAB61;

LAB60:    t161 = (t153 + 4);
    *((unsigned int *)t153) = 1;
    *((unsigned int *)t161) = 1;
    goto LAB61;

LAB62:    t166 = ((char*)((ng1)));
    goto LAB63;

LAB64:    t171 = ((char*)((ng2)));
    goto LAB65;

LAB66:    xsi_vlog_unsigned_bit_combine(t152, 32, t166, 32, t171, 32);
    goto LAB70;

LAB68:    memcpy(t152, t166, 8);
    goto LAB70;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    xsi_vlogtype_concat(t3, 2, 2, 2U, t5, 1, t2, 1);
    t4 = (t0 + 2424);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t3);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 1);
    t18 = (t0 + 2344);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000004135803533_3402758622_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000004135803533_3402758622", "isim/cpu_tb_isim_beh.exe.sim/work/m_00000000004135803533_3402758622.didat");
	xsi_register_executes(pe);
}
