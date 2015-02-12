//
// File: sherpaTTIK.h
//
// MATLAB Coder version            : 2.7
// C/C++ source code generated on  : 12-Feb-2015 09:24:14
//
#ifndef __SHERPATTIK_H__
#define __SHERPATTIK_H__

// Include Files
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rt_defines.h"
#include "rt_nonfinite.h"
#include "rtwtypes.h"
#include "buildRRTWrapper_types.h"

// Function Declarations
extern void sherpaTTIK(double xC, double yC, double zC, const double
  kinematicConst[16], const double jointLimits[12], double *alpha, double *beta,
  double *b_gamma);

#endif

//
// File trailer for sherpaTTIK.h
//
// [EOF]
//