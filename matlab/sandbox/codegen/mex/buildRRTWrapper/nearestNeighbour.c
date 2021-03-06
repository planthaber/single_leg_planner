/*
 * nearestNeighbour.c
 *
 * Code generation for function 'nearestNeighbour'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "buildRRTWrapper.h"
#include "nearestNeighbour.h"
#include "eml_error.h"
#include "buildRRTWrapper_emxutil.h"
#include "norm.h"
#include "eml_int_forloop_overflow_check.h"
#include "buildRRTWrapper_mexutil.h"
#include "buildRRTWrapper_data.h"
#include <stdio.h>

/* Variable Definitions */
static emlrtRSInfo ib_emlrtRSI = { 29, "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m"
};

static emlrtRSInfo jb_emlrtRSI = { 26, "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m"
};

static emlrtRSInfo pb_emlrtRSI = { 96, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtRSInfo qb_emlrtRSI = { 229, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtRSInfo rb_emlrtRSI = { 202, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtMCInfo d_emlrtMCI = { 41, 9, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtMCInfo e_emlrtMCI = { 38, 19, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtRTEInfo j_emlrtRTEI = { 5, 38, "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m"
};

static emlrtRTEInfo k_emlrtRTEI = { 5, 33, "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m"
};

static emlrtBCInfo n_emlrtBCI = { -1, -1, 30, 14, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo o_emlrtBCI = { -1, -1, 29, 15, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo p_emlrtBCI = { -1, -1, 28, 17, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo q_emlrtBCI = { -1, -1, 27, 16, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo r_emlrtBCI = { -1, -1, 26, 17, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo s_emlrtBCI = { -1, -1, 18, 16, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo t_emlrtBCI = { -1, -1, 17, 12, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo u_emlrtBCI = { -1, -1, 16, 14, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo v_emlrtBCI = { -1, -1, 15, 13, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtBCInfo w_emlrtBCI = { -1, -1, 14, 14, "xB", "heuristicSingleLeg",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/heuristicSingleLeg.m",
  0 };

static emlrtRTEInfo r_emlrtRTEI = { 25, 5, "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m"
};

static emlrtBCInfo x_emlrtBCI = { -1, -1, 26, 39, "T", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo y_emlrtBCI = { -1, -1, 29, 24, "d", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo ab_emlrtBCI = { -1, -1, 31, 15, "T", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo bb_emlrtBCI = { -1, -1, 31, 24, "T", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo cb_emlrtBCI = { -1, -1, 32, 25, "T", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo db_emlrtBCI = { -1, -1, 32, 34, "T", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtBCInfo eb_emlrtBCI = { -1, -1, 26, 9, "d", "nearestNeighbour",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/nearestNeighbour.m",
  0 };

static emlrtRSInfo cc_emlrtRSI = { 38, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

static emlrtRSInfo ec_emlrtRSI = { 41, "eml_min_or_max",
  "/Applications/MATLAB_R2014b.app/toolbox/eml/lib/matlab/eml/eml_min_or_max.m"
};

/* Function Declarations */
static const mxArray *b_message(const emlrtStack *sp, const mxArray *b,
  emlrtMCInfo *location);

/* Function Definitions */
static const mxArray *b_message(const emlrtStack *sp, const mxArray *b,
  emlrtMCInfo *location)
{
  const mxArray *pArray;
  const mxArray *m8;
  pArray = b;
  return emlrtCallMATLABR2012b(sp, 1, &m8, 1, &pArray, "message", true, location);
}

void nearestNeighbour(const emlrtStack *sp, const real_T x[13], const
                      emxArray_real_T *T, const real_T jointLimits[20], real_T
                      kC_l1, real_T kC_l2, real_T kC_l3, real_T kC_l4, real_T
                      kC_l5, real_T kC_l6, real_T kC_l7, real_T kC_l8, real_T
                      kC_zeta, real_T kC_r, real_T nodeIDCount, int32_T
                      NODE_SIZE, real_T xNear_data[], int32_T xNear_size[2],
                      emxArray_real_T *transitionArray, real_T *d)
{
  emxArray_real_T *b_d;
  int32_T i5;
  int32_T ixstart;
  int32_T ix;
  real_T xStarMin;
  real_T dxStarMax;
  real_T dAlphaMax;
  real_T uA[3];
  real_T uB[3];
  real_T b_uB[3];
  boolean_T b1;
  const mxArray *y;
  static const int32_T iv5[2] = { 1, 36 };

  const mxArray *m1;
  char_T cv4[36];
  static const char_T cv5[36] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'a', 'u', 't', 'o', 'D', 'i', 'm', 'I', 'n', 'c',
    'o', 'm', 'p', 'a', 't', 'i', 'b', 'i', 'l', 'i', 't', 'y' };

  int32_T itmp;
  boolean_T b2;
  boolean_T exitg1;
  boolean_T b_ixstart;
  emlrtStack st;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  emlrtStack f_st;
  emlrtStack g_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  e_st.prev = &c_st;
  e_st.tls = c_st.tls;
  f_st.prev = &d_st;
  f_st.tls = d_st.tls;
  g_st.prev = &f_st;
  g_st.tls = f_st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b(sp);
  emxInit_real_T(sp, &b_d, 2, &k_emlrtRTEI, true);

  /* nearestNeigbour.m */
  /* author: wreid */
  /* date: 20150107 */
  /* nearestNeigbour Finds the node in the tree closest to x. */
  /*    This function scans each node within the tree and finds the node that */
  /*    is closest to the xRand node. The nearest node is returned by the */
  /*    function. A distance heuristic is  used */
  /*    Inputs: */
  /*        x:  The 1xn state that each node in the tree will be compared to, */
  /*            to find the node with the minimum distance to it. n refers to */
  /*            the number of dimensions within the state space. */
  /*        T:  The nxm tree being searched, m is the number of possible nodes */
  /*            within the tree. */
  /*        HGAINS: The gains applied to the heuristic function. */
  /*    Outputs: */
  /*        xNear:  The node in the tree that is closet to x. */
  /* Iterate over the entire tree and apply the distance heuristic function */
  /* to each node. */
  i5 = b_d->size[0] * b_d->size[1];
  b_d->size[0] = 1;
  b_d->size[1] = (int32_T)nodeIDCount;
  emxEnsureCapacity(sp, (emxArray__common *)b_d, i5, (int32_T)sizeof(real_T),
                    &j_emlrtRTEI);
  ixstart = (int32_T)nodeIDCount;
  for (i5 = 0; i5 < ixstart; i5++) {
    b_d->data[i5] = 0.0;
  }

  /* parfor i = 1:nodeIDCount */
  emlrtForLoopVectorCheckR2012b(1.0, 1.0, nodeIDCount, mxDOUBLE_CLASS, (int32_T)
    nodeIDCount, &r_emlrtRTEI, sp);
  ixstart = 0;
  while (ixstart <= (int32_T)nodeIDCount - 1) {
    st.site = &jb_emlrtRSI;
    i5 = T->size[0];
    ix = ixstart + 1;
    emlrtDynamicBoundsCheckFastR2012b(ix, 1, i5, &x_emlrtBCI, &st);

    /* heuristicSingleLeg.m */
    /* author: wreid */
    /* date: 20150107 */
    /* heuristic Calculates the distance between states x1 and x2. */
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(4, 1, i5, &w_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(5, 1, i5, &v_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(6, 1, i5, &u_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(7, 1, i5, &t_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(8, 1, i5, &s_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(9, 1, i5, &r_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(10, 1, i5, &q_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(11, 1, i5, &p_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(12, 1, i5, &o_emlrtBCI, &st);
    i5 = T->size[1];
    emlrtDynamicBoundsCheckFastR2012b(13, 1, i5, &n_emlrtBCI, &st);

    /* Calculate the distance between angular positions. */
    xStarMin = (((kC_l2 + kC_l3 * muDoubleScalarCos(jointLimits[2])) + kC_l4 *
                 muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(kC_zeta
      + jointLimits[4])) - kC_l7;
    dxStarMax = ((((kC_l2 + kC_l3 * muDoubleScalarCos(jointLimits[3])) + kC_l4 *
                   muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos
                  (kC_zeta + jointLimits[5])) - kC_l7) - xStarMin;

    /* angDiff Finds the angular difference between th1 and th2. */
    dAlphaMax = ((jointLimits[0] - jointLimits[2]) + 3.1415926535897931) /
      6.2831853071795862;
    if (muDoubleScalarAbs(dAlphaMax - muDoubleScalarRound(dAlphaMax)) <=
        2.2204460492503131E-16 * muDoubleScalarAbs(dAlphaMax)) {
      dAlphaMax = 0.0;
    } else {
      dAlphaMax = (dAlphaMax - muDoubleScalarFloor(dAlphaMax)) *
        6.2831853071795862;
    }

    dAlphaMax = muDoubleScalarAbs(dAlphaMax - 3.1415926535897931);
    b_st.site = &kb_emlrtRSI;
    c_st.site = &mb_emlrtRSI;
    if (dxStarMax * dxStarMax + xStarMin * xStarMin * (dAlphaMax * dAlphaMax) <
        0.0) {
      d_st.site = &g_emlrtRSI;
      eml_error(&d_st);
    }

    xStarMin = (((kC_l2 + kC_l3 * muDoubleScalarCos(x[4])) + kC_l4 *
                 muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(kC_zeta
      + x[5])) - kC_l7;
    dxStarMax = ((((kC_l2 + kC_l3 * muDoubleScalarCos(T->data[ixstart + (T->
      size[0] << 2)])) + kC_l4 * muDoubleScalarCos(kC_zeta)) + kC_l5 *
                  muDoubleScalarCos(kC_zeta + T->data[ixstart + T->size[0] * 5]))
                 - kC_l7) - xStarMin;

    /* angDiff Finds the angular difference between th1 and th2. */
    dAlphaMax = ((x[3] - T->data[ixstart + T->size[0] * 3]) + 3.1415926535897931)
      / 6.2831853071795862;
    if (muDoubleScalarAbs(dAlphaMax - muDoubleScalarRound(dAlphaMax)) <=
        2.2204460492503131E-16 * muDoubleScalarAbs(dAlphaMax)) {
      dAlphaMax = 0.0;
    } else {
      dAlphaMax = (dAlphaMax - muDoubleScalarFloor(dAlphaMax)) *
        6.2831853071795862;
    }

    dAlphaMax = muDoubleScalarAbs(dAlphaMax - 3.1415926535897931);
    b_st.site = &lb_emlrtRSI;
    if (dxStarMax * dxStarMax + xStarMin * xStarMin * (dAlphaMax * dAlphaMax) <
        0.0) {
      c_st.site = &g_emlrtRSI;
      eml_error(&c_st);
    }

    /* SHERPATTFK Calcluates the Cartesian position of the wheel contact point */
    /* relative to the pan coordinate frame for the SherpaTT Leg. */
    /*  */
    /* Inputs: */
    /* -q: A 1x3 vector containing the joint angular positions [alpha beta gamma] */
    /* -kC: A struct containing the kinematic constants of the SherpaTT leg. */
    /* Outputs: */
    /*  */
    /* sherpaTTFK.m */
    /* author: wreid */
    /* date: 20150122 */
    /* sherpaTTFK Sherpa_TT Forward Kinematics */
    /*    Calculates the x,y,z position of the contact point given the alpha, */
    /*    beta and gamma joint values. */
    uA[0] = ((((kC_l2 + kC_l3 * muDoubleScalarCos(-x[4])) + kC_l4 *
               muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(x[5] +
               kC_zeta)) - kC_l7) * muDoubleScalarCos(x[3]);
    uA[1] = ((((kC_l2 + kC_l3 * muDoubleScalarCos(-x[4])) + kC_l4 *
               muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(x[5] +
               kC_zeta)) - kC_l7) * muDoubleScalarSin(x[3]);
    uA[2] = ((((kC_l1 + kC_l3 * muDoubleScalarSin(-x[4])) - kC_l4 *
               muDoubleScalarSin(kC_zeta)) - kC_l5 * muDoubleScalarSin(x[5] +
               kC_zeta)) - kC_l6) - (kC_l8 + kC_r);
    dAlphaMax = T->data[ixstart + T->size[0] * 3];
    xStarMin = T->data[ixstart + (T->size[0] << 2)];
    dxStarMax = T->data[ixstart + T->size[0] * 5];

    /* SHERPATTFK Calcluates the Cartesian position of the wheel contact point */
    /* relative to the pan coordinate frame for the SherpaTT Leg. */
    /*  */
    /* Inputs: */
    /* -q: A 1x3 vector containing the joint angular positions [alpha beta gamma] */
    /* -kC: A struct containing the kinematic constants of the SherpaTT leg. */
    /* Outputs: */
    /*  */
    /* sherpaTTFK.m */
    /* author: wreid */
    /* date: 20150122 */
    /* sherpaTTFK Sherpa_TT Forward Kinematics */
    /*    Calculates the x,y,z position of the contact point given the alpha, */
    /*    beta and gamma joint values. */
    uB[0] = ((((kC_l2 + kC_l3 * muDoubleScalarCos(-xStarMin)) + kC_l4 *
               muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(dxStarMax
               + kC_zeta)) - kC_l7) * muDoubleScalarCos(dAlphaMax);
    uB[1] = ((((kC_l2 + kC_l3 * muDoubleScalarCos(-xStarMin)) + kC_l4 *
               muDoubleScalarCos(kC_zeta)) + kC_l5 * muDoubleScalarCos(dxStarMax
               + kC_zeta)) - kC_l7) * muDoubleScalarSin(dAlphaMax);
    uB[2] = ((((kC_l1 + kC_l3 * muDoubleScalarSin(-xStarMin)) - kC_l4 *
               muDoubleScalarSin(kC_zeta)) - kC_l5 * muDoubleScalarSin(dxStarMax
               + kC_zeta)) - kC_l6) - (kC_l8 + kC_r);

    /* dVel = (alphaDotB - alphaDotA) + (betaDotB - betaDotA) + (gammaDotB - gammaDotA); */
    /* dVelNorm = jointLimits(2,6) - jointLimits(1,6) + jointLimits(2,7) - jointLimits(1,7) + jointLimits(2,8) - jointLimits(1,8); */
    /*     uA = sherpaTTFK(xA(4:6),kC); */
    /*     uB = sherpaTTFK(xB(4:6),kC); */
    /* dPos = norm(uA-uB); */
    /* Calculate the total distance. */
    /* d = HGAINS(1)*dPosNorm;%+HGAINS(2)*dVelNorm;  */
    for (i5 = 0; i5 < 3; i5++) {
      b_uB[i5] = uB[i5] - uA[i5];
    }

    i5 = b_d->size[1];
    b_d->data[emlrtDynamicBoundsCheckFastR2012b(ixstart + 1, 1, i5, &eb_emlrtBCI,
      sp) - 1] = norm(b_uB);
    ixstart++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, sp);
  }

  i5 = b_d->size[1];
  ix = (int32_T)nodeIDCount;
  emlrtDynamicBoundsCheckFastR2012b(ix, 1, i5, &y_emlrtBCI, sp);
  st.site = &ib_emlrtRSI;
  b_st.site = &nb_emlrtRSI;
  c_st.site = &ob_emlrtRSI;
  if (((int32_T)nodeIDCount == 1) || ((int32_T)nodeIDCount != 1)) {
    b1 = true;
  } else {
    b1 = false;
  }

  if (b1) {
  } else {
    y = NULL;
    m1 = emlrtCreateCharArray(2, iv5);
    for (ixstart = 0; ixstart < 36; ixstart++) {
      cv4[ixstart] = cv5[ixstart];
    }

    emlrtInitCharArrayR2013a(&c_st, 36, m1, cv4);
    emlrtAssign(&y, m1);
    d_st.site = &cc_emlrtRSI;
    e_st.site = &ec_emlrtRSI;
    error(&d_st, b_message(&e_st, y, &d_emlrtMCI), &e_emlrtMCI);
  }

  d_st.site = &pb_emlrtRSI;
  ixstart = 1;
  dAlphaMax = b_d->data[0];
  itmp = 1;
  if ((int32_T)nodeIDCount > 1) {
    if (muDoubleScalarIsNaN(dAlphaMax)) {
      f_st.site = &rb_emlrtRSI;
      if (2 > (int32_T)nodeIDCount) {
        b2 = false;
      } else {
        b2 = ((int32_T)nodeIDCount > 2147483646);
      }

      if (b2) {
        g_st.site = &n_emlrtRSI;
        b_check_forloop_overflow_error(&g_st);
      }

      ix = 2;
      exitg1 = false;
      while ((!exitg1) && (ix <= (int32_T)nodeIDCount)) {
        ixstart = ix;
        if (!muDoubleScalarIsNaN(b_d->data[ix - 1])) {
          dAlphaMax = b_d->data[ix - 1];
          itmp = ix;
          exitg1 = true;
        } else {
          ix++;
        }
      }
    }

    if (ixstart < (int32_T)nodeIDCount) {
      f_st.site = &qb_emlrtRSI;
      if (ixstart + 1 > (int32_T)nodeIDCount) {
        b_ixstart = false;
      } else {
        b_ixstart = ((int32_T)nodeIDCount > 2147483646);
      }

      if (b_ixstart) {
        g_st.site = &n_emlrtRSI;
        b_check_forloop_overflow_error(&g_st);
      }

      while (ixstart + 1 <= (int32_T)nodeIDCount) {
        if (b_d->data[ixstart] < dAlphaMax) {
          dAlphaMax = b_d->data[ixstart];
          itmp = ixstart + 1;
        }

        ixstart++;
      }
    }
  }

  emxFree_real_T(&b_d);
  *d = dAlphaMax;

  /* [d,minIndex] = min(d(1:nodeIDCount)); */
  i5 = T->size[1];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, i5, &bb_emlrtBCI, sp);
  i5 = T->size[1];
  emlrtDynamicBoundsCheckFastR2012b(NODE_SIZE, 1, i5, &bb_emlrtBCI, sp);
  i5 = T->size[0];
  ixstart = emlrtDynamicBoundsCheckFastR2012b(itmp, 1, i5, &ab_emlrtBCI, sp);
  xNear_size[0] = 1;
  xNear_size[1] = 13;
  for (i5 = 0; i5 < 13; i5++) {
    xNear_data[xNear_size[0] * i5] = T->data[(ixstart + T->size[0] * i5) - 1];
  }

  if (14 > T->size[1]) {
    i5 = 0;
    ix = 0;
  } else {
    i5 = 13;
    ix = T->size[1];
    ixstart = T->size[1];
    ix = emlrtDynamicBoundsCheckFastR2012b(ixstart, 1, ix, &db_emlrtBCI, sp);
  }

  ixstart = T->size[0];
  itmp = emlrtDynamicBoundsCheckFastR2012b(itmp, 1, ixstart, &cb_emlrtBCI, sp);
  ixstart = transitionArray->size[0] * transitionArray->size[1];
  transitionArray->size[0] = 1;
  transitionArray->size[1] = ix - i5;
  emxEnsureCapacity(sp, (emxArray__common *)transitionArray, ixstart, (int32_T)
                    sizeof(real_T), &j_emlrtRTEI);
  ixstart = ix - i5;
  for (ix = 0; ix < ixstart; ix++) {
    transitionArray->data[transitionArray->size[0] * ix] = T->data[(itmp +
      T->size[0] * (i5 + ix)) - 1];
  }

  emlrtHeapReferenceStackLeaveFcnR2012b(sp);
}

/* End of code generation (nearestNeighbour.c) */
