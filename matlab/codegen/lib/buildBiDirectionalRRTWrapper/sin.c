/*
 * File: sin.c
 *
 * MATLAB Coder version            : 2.7
 * C/C++ source code generated on  : 26-Feb-2015 09:54:49
 */

/* Include Files */
#include "rt_nonfinite.h"
#include "buildBiDirectionalRRTWrapper.h"
#include "sin.h"
#include <stdio.h>

/* Function Definitions */

/*
 * Arguments    : creal_T *x
 * Return Type  : void
 */
void b_sin(creal_T *x)
{
  double x_re;
  double x_im;
  if (x->im == 0.0) {
    x->re = sin(x->re);
    x->im = 0.0;
  } else {
    x_re = x->re;
    x_im = x->im;
    x->re = sin(x->re) * cosh(x->im);
    x->im = cos(x_re) * sinh(x_im);
  }
}

/*
 * File trailer for sin.c
 *
 * [EOF]
 */