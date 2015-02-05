//
// File: log.cpp
//
// MATLAB Coder version            : 2.7
// C/C++ source code generated on  : 05-Feb-2015 15:38:22
//

// Include Files
#include "rt_nonfinite.h"
#include "buildRRTWrapper.h"
#include "log.h"
#include "sherpaTTIK.h"
#include "asin.h"
#include "buildRRTWrapper_rtwutil.h"
#include <stdio.h>

// Function Definitions

//
// Arguments    : creal_T *x
// Return Type  : void
//
void b_log(creal_T *x)
{
  double x_im;
  double x_re;
  if ((x->im == 0.0) && rtIsNaN(x->re)) {
  } else if ((fabs(x->re) > 8.9884656743115785E+307) || (fabs(x->im) >
              8.9884656743115785E+307)) {
    x_im = x->im;
    x_re = x->re;
    x->re = log(rt_hypotd_snf(x->re / 2.0, x->im / 2.0)) + 0.69314718055994529;
    x->im = rt_atan2d_snf(x_im, x_re);
  } else {
    x_im = x->im;
    x_re = x->re;
    x->re = log(rt_hypotd_snf(x->re, x->im));
    x->im = rt_atan2d_snf(x_im, x_re);
  }
}

//
// File trailer for log.cpp
//
// [EOF]
//
