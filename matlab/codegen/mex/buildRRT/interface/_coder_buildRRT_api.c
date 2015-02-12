/*
 * _coder_buildRRT_api.c
 *
 * Code generation for function '_coder_buildRRT_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "buildRRT.h"
#include "_coder_buildRRT_api.h"
#include "buildRRT_emxutil.h"

/* Variable Definitions */
static emlrtRTEInfo k_emlrtRTEI = { 1, 1, "_coder_buildRRT_api", "" };

/* Function Declarations */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[11];
static int32_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *NUM_NODES,
  const char_T *identifier);
static int32_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *jointLimits, const char_T *identifier))[12];
static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *nInit,
  const char_T *identifier))[11];
static const mxArray *emlrt_marshallOut(const emxArray_real_T *u);
static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[12];
static real_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *K, const
  char_T *identifier);
static real_T h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static real_T (*i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *HGAINS,
  const char_T *identifier))[3];
static real_T (*j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[3];
static real_T (*k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *U, const
  char_T *identifier))[10];
static real_T (*l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[10];
static real_T (*m_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *kinematicConst, const char_T *identifier))[12];
static real_T (*n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[12];
static boolean_T o_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *exhaustive, const char_T *identifier);
static boolean_T p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId);
static real_T (*q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[11];
static int32_T r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId);
static real_T (*s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[12];
static real_T t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);
static real_T (*u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[3];
static real_T (*v_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[10];
static real_T (*w_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[12];
static boolean_T x_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId);

/* Function Definitions */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[11]
{
  real_T (*y)[11];
  y = q_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static int32_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *NUM_NODES, const char_T *identifier)
{
  int32_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = d_emlrt_marshallIn(sp, emlrtAlias(NUM_NODES), &thisId);
  emlrtDestroyArray(&NUM_NODES);
  return y;
}

static int32_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  int32_T y;
  y = r_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *jointLimits, const char_T *identifier))[12]
{
  real_T (*y)[12];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = f_emlrt_marshallIn(sp, emlrtAlias(jointLimits), &thisId);
  emlrtDestroyArray(&jointLimits);
  return y;
}
  static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *nInit,
  const char_T *identifier))[11]
{
  real_T (*y)[11];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = b_emlrt_marshallIn(sp, emlrtAlias(nInit), &thisId);
  emlrtDestroyArray(&nInit);
  return y;
}

static const mxArray *emlrt_marshallOut(const emxArray_real_T *u)
{
  const mxArray *y;
  static const int32_T iv12[2] = { 0, 0 };

  const mxArray *m4;
  y = NULL;
  m4 = emlrtCreateNumericArray(2, iv12, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m4, (void *)u->data);
  emlrtSetDimensions((mxArray *)m4, u->size, 2);
  emlrtAssign(&y, m4);
  return y;
}

static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[12]
{
  real_T (*y)[12];
  y = s_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *K, const
  char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = h_emlrt_marshallIn(sp, emlrtAlias(K), &thisId);
  emlrtDestroyArray(&K);
  return y;
}

static real_T h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = t_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *HGAINS,
  const char_T *identifier))[3]
{
  real_T (*y)[3];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = j_emlrt_marshallIn(sp, emlrtAlias(HGAINS), &thisId);
  emlrtDestroyArray(&HGAINS);
  return y;
}
  static real_T (*j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[3]
{
  real_T (*y)[3];
  y = u_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *U, const
  char_T *identifier))[10]
{
  real_T (*y)[10];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = l_emlrt_marshallIn(sp, emlrtAlias(U), &thisId);
  emlrtDestroyArray(&U);
  return y;
}
  static real_T (*l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[10]
{
  real_T (*y)[10];
  y = v_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*m_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *kinematicConst, const char_T *identifier))[12]
{
  real_T (*y)[12];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = n_emlrt_marshallIn(sp, emlrtAlias(kinematicConst), &thisId);
  emlrtDestroyArray(&kinematicConst);
  return y;
}
  static real_T (*n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[12]
{
  real_T (*y)[12];
  y = w_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static boolean_T o_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *exhaustive, const char_T *identifier)
{
  boolean_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = p_emlrt_marshallIn(sp, emlrtAlias(exhaustive), &thisId);
  emlrtDestroyArray(&exhaustive);
  return y;
}

static boolean_T p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId)
{
  boolean_T y;
  y = x_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[11]
{
  real_T (*ret)[11];
  int32_T iv13[2];
  int32_T i7;
  for (i7 = 0; i7 < 2; i7++) {
    iv13[i7] = 1 + 10 * i7;
  }

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, iv13);
  ret = (real_T (*)[11])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static int32_T r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId)
{
  int32_T ret;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "int32", false, 0U, 0);
  ret = *(int32_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[12]
{
  real_T (*ret)[12];
  int32_T iv14[2];
  int32_T i8;
  for (i8 = 0; i8 < 2; i8++) {
    iv14[i8] = 2 + (i8 << 2);
  }

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, iv14);
  ret = (real_T (*)[12])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId)
{
  real_T ret;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, 0);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[3]
{
  real_T (*ret)[3];
  int32_T iv15[2];
  int32_T i9;
  for (i9 = 0; i9 < 2; i9++) {
    iv15[i9] = 1 + (i9 << 1);
  }

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, iv15);
  ret = (real_T (*)[3])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*v_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[10]
{
  real_T (*ret)[10];
  int32_T iv16[2];
  int32_T i10;
  for (i10 = 0; i10 < 2; i10++) {
    iv16[i10] = 5 + -3 * i10;
  }

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, iv16);
  ret = (real_T (*)[10])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*w_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[12]
{
  real_T (*ret)[12];
  int32_T iv17[2];
  int32_T i11;
  for (i11 = 0; i11 < 2; i11++) {
    iv17[i11] = 1 + 11 * i11;
  }

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, iv17);
  ret = (real_T (*)[12])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static boolean_T x_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId)
{
  boolean_T ret;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "logical", false, 0U, 0);
  ret = *mxGetLogicals(src);
  emlrtDestroyArray(&src);
  return ret;
}

void buildRRT_api(const mxArray * const prhs[16], const mxArray *plhs[2])
{
  emxArray_real_T *T;
  emxArray_real_T *path;
  real_T (*nInit)[11];
  real_T (*nGoal)[11];
  int32_T NUM_NODES;
  real_T (*jointLimits)[12];
  real_T K;
  real_T (*HGAINS)[3];
  int32_T NODE_SIZE;
  real_T (*U)[10];
  int32_T U_SIZE;
  real_T dt;
  real_T Dt;
  real_T (*kinematicConst)[12];
  real_T ankleThreshold;
  boolean_T exhaustive;
  real_T threshold;
  int32_T goalSeedFreq;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  emxInit_real_T(&st, &T, 2, &k_emlrtRTEI, true);
  emxInit_real_T(&st, &path, 2, &k_emlrtRTEI, true);

  /* Marshall function inputs */
  nInit = emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "nInit");
  nGoal = emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "nGoal");
  NUM_NODES = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "NUM_NODES");
  jointLimits = e_emlrt_marshallIn(&st, emlrtAlias(prhs[3]), "jointLimits");
  K = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "K");
  HGAINS = i_emlrt_marshallIn(&st, emlrtAlias(prhs[5]), "HGAINS");
  NODE_SIZE = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[6]), "NODE_SIZE");
  U = k_emlrt_marshallIn(&st, emlrtAlias(prhs[7]), "U");
  U_SIZE = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[8]), "U_SIZE");
  dt = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[9]), "dt");
  Dt = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[10]), "Dt");
  kinematicConst = m_emlrt_marshallIn(&st, emlrtAlias(prhs[11]),
    "kinematicConst");
  ankleThreshold = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[12]),
    "ankleThreshold");
  exhaustive = o_emlrt_marshallIn(&st, emlrtAliasP(prhs[13]), "exhaustive");
  threshold = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[14]), "threshold");
  goalSeedFreq = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[15]), "goalSeedFreq");

  /* Invoke the target function */
  buildRRT(&st, *nInit, *nGoal, NUM_NODES, *jointLimits, K, *HGAINS, NODE_SIZE, *
           U, U_SIZE, dt, Dt, *kinematicConst, ankleThreshold, exhaustive,
           threshold, goalSeedFreq, T, path);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(T);
  plhs[1] = emlrt_marshallOut(path);
  path->canFreeData = false;
  emxFree_real_T(&path);
  T->canFreeData = false;
  emxFree_real_T(&T);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

/* End of code generation (_coder_buildRRT_api.c) */