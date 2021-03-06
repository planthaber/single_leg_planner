/*
 * buildRRTWrapper.c
 *
 * Code generation for function 'buildRRTWrapper'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "buildRRTWrapper.h"
#include "buildRRTWrapper_emxutil.h"
#include "buildRRT.h"
#include "validJointState.h"
#include "sherpaTTIKVel.h"
#include "sherpaTTIK.h"
#include "buildRRTWrapper_data.h"
#include <stdio.h>

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 60, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtRSInfo b_emlrtRSI = { 69, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtRSInfo c_emlrtRSI = { 70, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtRSInfo d_emlrtRSI = { 84, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtRSInfo e_emlrtRSI = { 86, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtRTEInfo emlrtRTEI = { 27, 36, "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m"
};

static emlrtBCInfo emlrtBCI = { 1, 4, 18, 17, "kC.legAngleOffset", "trP2B",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/kinematics/trP2B.m",
  0 };

static emlrtBCInfo b_emlrtBCI = { -1, -1, 100, 30, "pathJ", "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 101, 36, "pathJ", "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 101, 49, "pathJ", "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 104, 14, "pathC", "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 104, 28, "pathJ", "buildRRTWrapper",
  "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/rrt/buildRRTWrapper.m",
  0 };

/* Function Definitions */
void NODE_SIZE_not_empty_init(void)
{
}

void U_SIZE_not_empty_init(void)
{
}

void buildRRTWrapper(const emlrtStack *sp, const real_T nInitCartesianB[6],
                     const real_T nGoalCartesianB[6], real_T phiInit, real_T
                     omegaInit, const real_T jointLimits[20], real_T bodyHeight,
                     const real_T U[10], real_T dt, real_T Dt, const struct0_T
                     *kC, real_T threshold, int32_T legNum, const real_T uBDot[6],
                     const real_T HGAINS[3], int32_T NUM_NODES, boolean_T
                     exhaustive, real_T ankleThreshold, const real_T
                     cartesianLimits[4], emxArray_real_T *T, emxArray_real_T
                     *pathC, emxArray_real_T *pathJ, boolean_T *success)
{
  real_T TP2B[16];
  int32_T i0;
  static const int8_T iv0[4] = { 0, 0, 0, 1 };

  real_T b_TP2B[9];
  int32_T pathJ_idx_0;
  real_T c_TP2B[3];
  real_T TB2P[16];
  real_T b_TB2P[3];
  real_T d0;
  real_T qInit[3];
  real_T qGoal[3];
  real_T c_TB2P[3];
  real_T nInitJoint[10];
  real_T d_TB2P[3];
  real_T nGoalJoint[10];
  emxArray_real_T *b_pathC;
  real_T dv0[13];
  real_T dv1[13];
  int32_T i;
  real_T uP[3];
  real_T b_pathJ[3];
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  emlrtHeapReferenceStackEnterFcnR2012b(sp);

  /* BUILDRRTWRAPPER This function acts as a wrapper for the buildRRT function. */
  /* Code generation for the singleLegPlanner is performed using this function */
  /* as an entry point. */
  /*    */
  /* Inputs: */
  /* -nInitCartesianB: the */
  /* -nGoalCartesianB: */
  /* -jointLimits: */
  /* -bodyHeight: */
  /* -U: */
  /* -dt: */
  /* -Dt: */
  /* -kC: */
  /* -threshold: */
  /* -legNum: */
  /*  */
  /* Outputs: */
  /* -T: */
  /* -pathC: */
  /* -pathJ: */
  /* -success: */
  /*  */
  /* buildRRTWrapper.m */
  /* author: wreid */
  /* date: 20150502 */
  /* persistent NUM_NODES  */
  /* persistent ankleThreshold  */
  /* persistent exhaustive  */
  /* persistent cartesianLimits */
  /* if isempty(NUM_NODES) */
  /*     NUM_NODES = int32(1000); */
  /* end */
  /* if isempty(ankleThreshold) */
  /*     ankleThreshold = pi/8; */
  /* end */
  /* if isempty(exhaustive) */
  /*     exhaustive = false; */
  /* end */
  /* GETPANHEIGHT Summary of this function goes here */
  /*    Detailed explanation goes here */
  /* Transform the nInitCartesianB and nGoalCartesianB variables from the body coordinate frame */
  /* to the pan coordinate frame. */
  st.site = &emlrtRSI;

  /* TRP2B Generates the homogeneous transformation matrix between the body */
  /* and pan coordinate frames. kC is a struct containing the kinematic */
  /* constants of the leg. legNum indicates the number of the leg that is being */
  /* considered. */
  /*  */
  /* Inputs: */
  /* -kC: Struct of kinematic constants of the Sherpa_TT leg */
  /* -legNum: The leg number identification. */
  /* Outputs: */
  /* -TP2B: The homogeneous transformation matrix that is used to transform */
  /* coordinates from the pan frame to the body frame. */
  /*  */
  /* trP2B.m */
  /* author:    wreid */
  /* date:      20150214 */
  emlrtDynamicBoundsCheckFastR2012b(legNum, 1, 4, &emlrtBCI, &st);

  /* TRDH Generates the homogeneous transformation matrix A using the  */
  /* Denavit-Hartenberg parameters theta, d, a and alpha. */
  /*  */
  /* trDH.m */
  /* author:    wreid */
  /* date:      20150214 */
  TP2B[0] = muDoubleScalarCos(kC->legAngleOffset[legNum - 1]);
  TP2B[4] = -muDoubleScalarSin(kC->legAngleOffset[legNum - 1]);
  TP2B[8] = muDoubleScalarSin(kC->legAngleOffset[legNum - 1]) * 0.0;
  TP2B[12] = kC->B2PXOffset * muDoubleScalarCos(kC->legAngleOffset[legNum - 1]);
  TP2B[1] = muDoubleScalarSin(kC->legAngleOffset[legNum - 1]);
  TP2B[5] = muDoubleScalarCos(kC->legAngleOffset[legNum - 1]);
  TP2B[9] = -muDoubleScalarCos(kC->legAngleOffset[legNum - 1]) * 0.0;
  TP2B[13] = kC->B2PXOffset * muDoubleScalarSin(kC->legAngleOffset[legNum - 1]);
  TP2B[2] = 0.0;
  TP2B[6] = 0.0;
  TP2B[10] = 1.0;
  TP2B[14] = kC->B2PZOffset;
  for (i0 = 0; i0 < 4; i0++) {
    TP2B[3 + (i0 << 2)] = iv0[i0];
  }

  for (i0 = 0; i0 < 3; i0++) {
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      b_TP2B[pathJ_idx_0 + 3 * i0] = -TP2B[i0 + (pathJ_idx_0 << 2)];
    }
  }

  for (i0 = 0; i0 < 3; i0++) {
    c_TP2B[i0] = 0.0;
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      c_TP2B[i0] += b_TP2B[i0 + 3 * pathJ_idx_0] * TP2B[12 + pathJ_idx_0];
    }

    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      TB2P[pathJ_idx_0 + (i0 << 2)] = TP2B[i0 + (pathJ_idx_0 << 2)];
    }
  }

  for (i0 = 0; i0 < 3; i0++) {
    TB2P[12 + i0] = c_TP2B[i0];
  }

  for (i0 = 0; i0 < 4; i0++) {
    TB2P[3 + (i0 << 2)] = iv0[i0];
  }

  /* inv(TP2B);% */
  /* Transform the Cartesian goal and final positions in the pan coordinate */
  /* frame to the joint space. */
  for (i0 = 0; i0 < 3; i0++) {
    d0 = 0.0;
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      d0 += TB2P[i0 + (pathJ_idx_0 << 2)] * nInitCartesianB[pathJ_idx_0];
    }

    b_TB2P[i0] = d0 + TB2P[12 + i0];
  }

  st.site = &b_emlrtRSI;
  sherpaTTIK(&st, b_TB2P, kC->l1, kC->l2, kC->l3, kC->l4, kC->l5, kC->l6, kC->l7,
             kC->l8, kC->zeta, kC->r, jointLimits, qInit);
  for (i0 = 0; i0 < 3; i0++) {
    d0 = 0.0;
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      d0 += TB2P[i0 + (pathJ_idx_0 << 2)] * nGoalCartesianB[pathJ_idx_0];
    }

    b_TB2P[i0] = d0 + TB2P[12 + i0];
  }

  st.site = &c_emlrtRSI;
  sherpaTTIK(&st, b_TB2P, kC->l1, kC->l2, kC->l3, kC->l4, kC->l5, kC->l6, kC->l7,
             kC->l8, kC->zeta, kC->r, jointLimits, qGoal);
  for (i0 = 0; i0 < 3; i0++) {
    c_TB2P[i0] = 0.0;
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      c_TB2P[i0] += TB2P[i0 + (pathJ_idx_0 << 2)] * nInitCartesianB[3 +
        pathJ_idx_0];
    }

    b_TB2P[i0] = c_TB2P[i0];
    nInitJoint[i0] = qInit[i0];
  }

  sherpaTTIKVel(b_TB2P, qInit, kC->l2, kC->l3, kC->l4, kC->l5, kC->l7, kC->zeta,
                c_TP2B);
  nInitJoint[3] = phiInit;
  nInitJoint[4] = 0.0;
  for (i0 = 0; i0 < 3; i0++) {
    nInitJoint[i0 + 5] = c_TP2B[i0];
    d_TB2P[i0] = 0.0;
    for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
      d_TB2P[i0] += TB2P[i0 + (pathJ_idx_0 << 2)] * nGoalCartesianB[3 +
        pathJ_idx_0];
    }

    b_TB2P[i0] = d_TB2P[i0];
    nGoalJoint[i0] = qGoal[i0];
  }

  nInitJoint[8] = 0.0;
  nInitJoint[9] = omegaInit;
  sherpaTTIKVel(b_TB2P, qGoal, kC->l2, kC->l3, kC->l4, kC->l5, kC->l7, kC->zeta,
                c_TP2B);
  nGoalJoint[3] = 0.0;
  nGoalJoint[4] = 0.0;
  for (i0 = 0; i0 < 3; i0++) {
    nGoalJoint[i0 + 5] = c_TP2B[i0];
  }

  nGoalJoint[8] = 0.0;
  nGoalJoint[9] = 0.0;

  /* Check that the initial and final positions are valid. If they are not */
  /* return failure and an empty path. */
  emxInit_real_T(sp, &b_pathC, 2, &emlrtRTEI, true);
  if (validJointState(nInitJoint, jointLimits) && validJointState(nGoalJoint,
       jointLimits)) {
    *success = true;

    /* Run buildRRT. */
    dv0[0] = 1.0;
    dv0[1] = 0.0;
    dv0[2] = 0.0;
    dv1[0] = 0.0;
    dv1[1] = 0.0;
    dv1[2] = 0.0;
    for (i0 = 0; i0 < 10; i0++) {
      dv0[i0 + 3] = nInitJoint[i0];
      dv1[i0 + 3] = nGoalJoint[i0];
    }

    st.site = &d_emlrtRSI;
    buildRRT(&st, dv0, dv1, NUM_NODES, jointLimits, cartesianLimits,
             -(bodyHeight + kC->B2PZOffset), HGAINS, U, dt, Dt, kC,
             ankleThreshold, exhaustive, threshold, uBDot, legNum, T, pathJ);

    /* Transform path back to the Cartesian space. */
    st.site = &e_emlrtRSI;
    pathJ_idx_0 = pathJ->size[0];
    i0 = b_pathC->size[0] * b_pathC->size[1];
    b_pathC->size[0] = pathJ_idx_0;
    b_pathC->size[1] = 7;
    emxEnsureCapacity(&st, (emxArray__common *)b_pathC, i0, (int32_T)sizeof
                      (real_T), &emlrtRTEI);
    pathJ_idx_0 = pathJ->size[0] * 7;
    for (i0 = 0; i0 < pathJ_idx_0; i0++) {
      b_pathC->data[i0] = 0.0;
    }

    i = 0;
    while (i <= pathJ->size[0] - 1) {
      i0 = pathJ->size[0];
      pathJ_idx_0 = i + 1;
      emlrtDynamicBoundsCheckFastR2012b(pathJ_idx_0, 1, i0, &b_emlrtBCI, &st);

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
      uP[0] = ((((kC->l2 + kC->l3 * muDoubleScalarCos(-pathJ->data[i +
        (pathJ->size[0] << 1)])) + kC->l4 * muDoubleScalarCos(kC->zeta)) +
                kC->l5 * muDoubleScalarCos(pathJ->data[i + pathJ->size[0] * 3] +
                 kC->zeta)) - kC->l7) * muDoubleScalarCos(pathJ->data[i +
        pathJ->size[0]]);
      uP[1] = ((((kC->l2 + kC->l3 * muDoubleScalarCos(-pathJ->data[i +
        (pathJ->size[0] << 1)])) + kC->l4 * muDoubleScalarCos(kC->zeta)) +
                kC->l5 * muDoubleScalarCos(pathJ->data[i + pathJ->size[0] * 3] +
                 kC->zeta)) - kC->l7) * muDoubleScalarSin(pathJ->data[i +
        pathJ->size[0]]);
      uP[2] = ((((kC->l1 + kC->l3 * muDoubleScalarSin(-pathJ->data[i +
        (pathJ->size[0] << 1)])) - kC->l4 * muDoubleScalarSin(kC->zeta)) -
                kC->l5 * muDoubleScalarSin(pathJ->data[i + pathJ->size[0] * 3] +
                 kC->zeta)) - kC->l6) - (kC->l8 + kC->r);
      i0 = pathJ->size[0];
      pathJ_idx_0 = i + 1;
      emlrtDynamicBoundsCheckFastR2012b(pathJ_idx_0, 1, i0, &c_emlrtBCI, &st);
      i0 = pathJ->size[0];
      pathJ_idx_0 = i + 1;
      emlrtDynamicBoundsCheckFastR2012b(pathJ_idx_0, 1, i0, &d_emlrtBCI, &st);

      /* sherpaTTFKVel.m */
      /* author: wreid */
      /* date: 20150122 */
      /* sherpaTTFKVel Sherpa_TT single leg forward velocity kinematics. */
      pathJ_idx_0 = b_pathC->size[0];
      i0 = 1 + i;
      emlrtDynamicBoundsCheckFastR2012b(i0, 1, pathJ_idx_0, &e_emlrtBCI, &st);
      for (i0 = 0; i0 < 3; i0++) {
        d0 = 0.0;
        for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
          d0 += TP2B[i0 + (pathJ_idx_0 << 2)] * uP[pathJ_idx_0];
        }

        c_TP2B[i0] = d0 + TP2B[12 + i0];
      }

      b_pathJ[0] = (-pathJ->data[i + pathJ->size[0] * 6] * muDoubleScalarSin
                    (pathJ->data[i + pathJ->size[0]]) * ((((kC->l2 - kC->l7) +
        kC->l5 * muDoubleScalarCos(pathJ->data[i + pathJ->size[0] * 3] +
        kC->zeta)) + kC->l3 * muDoubleScalarCos(pathJ->data[i + (pathJ->size[0] <<
        1)])) + kC->l4 * muDoubleScalarCos(kC->zeta)) - pathJ->data[i +
                    pathJ->size[0] * 7] * kC->l3 * muDoubleScalarCos(pathJ->
        data[i + pathJ->size[0]]) * muDoubleScalarSin(pathJ->data[i +
        (pathJ->size[0] << 1)])) - pathJ->data[i + (pathJ->size[0] << 3)] *
        kC->l5 * muDoubleScalarSin(pathJ->data[i + pathJ->size[0] * 3] +
        kC->zeta) * muDoubleScalarCos(pathJ->data[i + pathJ->size[0]]);
      b_pathJ[1] = (pathJ->data[i + pathJ->size[0] * 6] * muDoubleScalarCos
                    (pathJ->data[i + pathJ->size[0]]) * ((((kC->l2 - kC->l7) +
        kC->l5 * muDoubleScalarCos(pathJ->data[i + pathJ->size[0] * 3] +
        kC->zeta)) + kC->l3 * muDoubleScalarCos(pathJ->data[i + (pathJ->size[0] <<
        1)])) + kC->l4 * muDoubleScalarCos(kC->zeta)) - pathJ->data[i +
                    (pathJ->size[0] << 3)] * kC->l5 * muDoubleScalarSin
                    (pathJ->data[i + pathJ->size[0] * 3] + kC->zeta) *
                    muDoubleScalarSin(pathJ->data[i + pathJ->size[0]])) -
        pathJ->data[i + pathJ->size[0] * 7] * kC->l3 * muDoubleScalarSin
        (pathJ->data[i + pathJ->size[0]]) * muDoubleScalarSin(pathJ->data[i +
        (pathJ->size[0] << 1)]);
      b_pathJ[2] = -pathJ->data[i + pathJ->size[0] * 7] * kC->l3 *
        muDoubleScalarCos(pathJ->data[i + (pathJ->size[0] << 1)]) - kC->l5 *
        pathJ->data[i + (pathJ->size[0] << 3)] * muDoubleScalarCos(kC->zeta +
        pathJ->data[i + pathJ->size[0] * 3]);
      for (i0 = 0; i0 < 3; i0++) {
        c_TB2P[i0] = 0.0;
        for (pathJ_idx_0 = 0; pathJ_idx_0 < 3; pathJ_idx_0++) {
          c_TB2P[i0] += TP2B[i0 + (pathJ_idx_0 << 2)] * b_pathJ[pathJ_idx_0];
        }
      }

      i0 = pathJ->size[0];
      pathJ_idx_0 = 1 + i;
      b_pathC->data[i] = pathJ->data[emlrtDynamicBoundsCheckFastR2012b
        (pathJ_idx_0, 1, i0, &f_emlrtBCI, &st) - 1];
      for (i0 = 0; i0 < 3; i0++) {
        b_pathC->data[i + b_pathC->size[0] * (i0 + 1)] = c_TP2B[i0];
      }

      for (i0 = 0; i0 < 3; i0++) {
        b_pathC->data[i + b_pathC->size[0] * (i0 + 4)] = c_TB2P[i0];
      }

      i++;
      emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, &st);
    }

    /*  function [pathC,pathJ] = transformPath(pathOld,NODE_SIZE,kC,dt,Dt,TP2B) */
    /*      %Take the pathOld array and combine the general nodes and intermediate */
    /*      %states into a uniform path. The output path should be a npx6 array */
    /*      %that contains the n general nodes and the p intermediate nodes between */
    /*      %general nodes. Each row in the path matrix contains  */
    /*      %[t,x,y,z,xDot,yDot,zDot] state data. */
    /*       */
    /*      [pathH,pathW] = size(pathOld); */
    /*      pathC = zeros(round(Dt/dt)*pathH,7); */
    /*      pathJ = zeros(round(Dt/dt)*pathH,10); */
    /*      count = 1; */
    /*      time = round(Dt/dt)*pathH*dt; */
    /*      for i = 1:pathH */
    /*          for j = pathW:-6:NODE_SIZE+7 */
    /*              uP = sherpaTTFK(pathOld(i,j-5:j-3),kC); */
    /*              uB = TP2B(1:3,1:3)*uP' + TP2B(1:3,4); */
    /*              uDot = sherpaTTFKVel(pathOld(i,j-2:j)',pathOld(i,j-5:j-3)',kC); */
    /*              uBDot = TP2B(1:3,1:3)*uDot; */
    /*              pathC(count,:) = [time uB' uBDot']; */
    /*              pathJ(count,:) = [time pathOld(i,j-5:j) pathOld(i,10) pathOld(i,11)]; */
    /*              time = time - dt; */
    /*              count = count + 1; */
    /*          end */
    /*      end */
    /*       */
    /*      pathC = flipud(pathC(:,1:end)); */
    /*      pathJ = flipud(pathJ(:,1:end)); */
    /*       */
    /*  end */
    i0 = pathC->size[0] * pathC->size[1];
    pathC->size[0] = b_pathC->size[0];
    pathC->size[1] = 7;
    emxEnsureCapacity(sp, (emxArray__common *)pathC, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    pathJ_idx_0 = b_pathC->size[0] * b_pathC->size[1];
    for (i0 = 0; i0 < pathJ_idx_0; i0++) {
      pathC->data[i0] = b_pathC->data[i0];
    }
  } else {
    *success = false;
    i0 = pathC->size[0] * pathC->size[1];
    pathC->size[0] = 0;
    pathC->size[1] = 0;
    emxEnsureCapacity(sp, (emxArray__common *)pathC, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    i0 = pathJ->size[0] * pathJ->size[1];
    pathJ->size[0] = 0;
    pathJ->size[1] = 11;
    emxEnsureCapacity(sp, (emxArray__common *)pathJ, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    i0 = T->size[0] * T->size[1];
    T->size[0] = 0;
    T->size[1] = 0;
    emxEnsureCapacity(sp, (emxArray__common *)T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
  }

  emxFree_real_T(&b_pathC);
  emlrtHeapReferenceStackLeaveFcnR2012b(sp);
}

void buildRRTWrapper_init(void)
{
}

void goalSeedFreq_not_empty_init(void)
{
}

/* End of code generation (buildRRTWrapper.c) */
