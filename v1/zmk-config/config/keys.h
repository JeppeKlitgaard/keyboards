#include "zmk-helpers/key-labels/hillside52.h"

/*
 ╭─────────────────────────╮               ╭─────────────────────────╮
 │ LT5 LT4 LT3 LT2 LT1 LT0 │               │ RT0 RT1 RT2 RT3 RT4 RT5 │
 │ LM5 LM4 LM3 LM2 LM1 LM0 ╰──╮         ╭──╯ RM0 RM1 RM2 RM3 RM4 RM5 │
 │ LB5 LB4 LB3 LB2 LB1 LB0 LH4╰────┬────╯RH4 RB0 RB1 RB2 RB3 RB4 RB5 │
 │ LP2 LP1 LP0╭───╮LH3 LH2 LH1 LH0 │ RH0 RH1 RH2 RH3╭───╮RP0 RP1 RP2 │
 ╰────────────╯   ╰────────────────┴────────────────╯   ╰────────────╯
*/

#define KEYS_L_NON_THUMB_SWEEP LT0 LT1 LT2 LT3 LT4 LT5 LM0 LM1 LM2 LM3 LM4 LM5 LB0 LB1 LB2 LB3 LB4 LB5 LP0 LP1 LP2 LH4
#define KEYS_R_NON_THUMB_SWEEP RT0 RT1 RT2 RT3 RT4 RT5 RM0 RM1 RM2 RM3 RM4 RM5 RB0 RB1 RB2 RB3 RB4 RB5 RP0 RP1 RP2 RH4
#define KEYS_THUMBS_SWEEP LH0 LH1 LH2 LH3 RH0 RH1 RH2 RH3
