// 
// File: buildRRTWrapper_types.h 
//  
// MATLAB Coder version            : 2.7 
// C/C++ source code generated on  : 26-Feb-2015 11:03:31 
//

#ifndef __BUILDRRTWRAPPER_TYPES_H__
#define __BUILDRRTWRAPPER_TYPES_H__

// Include Files 
#include "rtwtypes.h"

// Type Definitions 
#ifndef struct_emxArray__common
#define struct_emxArray__common
struct emxArray__common
{
    void *data;
    int *size;
    int allocatedSize;
    int numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray__common*/
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T
struct emxArray_real_T
{
    double *data;
    int *size;
    int allocatedSize;
    int numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray_real_T*/
#ifndef struct_emxArray_real_T_1x10
#define struct_emxArray_real_T_1x10
struct emxArray_real_T_1x10
{
    double data[10];
    int size[2];
};
#endif /*struct_emxArray_real_T_1x10*/
#ifndef struct_emxArray_real_T_1x13
#define struct_emxArray_real_T_1x13
struct emxArray_real_T_1x13
{
    double data[13];
    int size[2];
};
#endif /*struct_emxArray_real_T_1x13*/
#ifndef struct_emxArray_real_T_1x16
#define struct_emxArray_real_T_1x16
struct emxArray_real_T_1x16
{
    double data[16];
    int size[2];
};
#endif /*struct_emxArray_real_T_1x16*/
#ifndef struct_emxArray_real_T_1x9
#define struct_emxArray_real_T_1x9
struct emxArray_real_T_1x9
{
    double data[9];
    int size[2];
};
#endif /*struct_emxArray_real_T_1x9*/
#ifndef struct_emxArray_real_T_9x13
#define struct_emxArray_real_T_9x13
struct emxArray_real_T_9x13
{
    double data[117];
    int size[2];
};
#endif /*struct_emxArray_real_T_9x13*/
typedef struct
{
    double l1;
    double l2;
    double l3;
    double l4;
    double l5;
    double l6;
    double l7;
    double l8;
    double zeta;
    double r;
    double B2PXOffset;
    double B2PZOffset;
    double legAngleOffset[4];
} struct0_T;

#endif
// 
// File trailer for buildRRTWrapper_types.h 
//  
// [EOF] 
//
