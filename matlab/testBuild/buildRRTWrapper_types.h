/*
 * buildRRTWrapper_types.h
 *
 * Code generation for function 'buildRRTWrapper'
 *
 */

#ifndef __BUILDRRTWRAPPER_TYPES_H__
#define __BUILDRRTWRAPPER_TYPES_H__

/* Include files */
#include "rtwtypes.h"

/* Type Definitions */
#ifndef struct_emxArray__common
#define struct_emxArray__common
struct emxArray__common
{
    void *data;
    int32_T *size;
    int32_T allocatedSize;
    int32_T numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray__common*/
#ifndef typedef_emxArray__common
#define typedef_emxArray__common
typedef struct emxArray__common emxArray__common;
#endif /*typedef_emxArray__common*/
#ifndef struct_emxArray_int32_T
#define struct_emxArray_int32_T
struct emxArray_int32_T
{
    int32_T *data;
    int32_T *size;
    int32_T allocatedSize;
    int32_T numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray_int32_T*/
#ifndef typedef_emxArray_int32_T
#define typedef_emxArray_int32_T
typedef struct emxArray_int32_T emxArray_int32_T;
#endif /*typedef_emxArray_int32_T*/
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T
struct emxArray_real_T
{
    real_T *data;
    int32_T *size;
    int32_T allocatedSize;
    int32_T numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray_real_T*/
#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T
typedef struct emxArray_real_T emxArray_real_T;
#endif /*typedef_emxArray_real_T*/
#ifndef struct_emxArray_real_T_1x11
#define struct_emxArray_real_T_1x11
struct emxArray_real_T_1x11
{
    real_T data[11];
    int32_T size[2];
};
#endif /*struct_emxArray_real_T_1x11*/
#ifndef typedef_emxArray_real_T_1x11
#define typedef_emxArray_real_T_1x11
typedef struct emxArray_real_T_1x11 emxArray_real_T_1x11;
#endif /*typedef_emxArray_real_T_1x11*/
#ifndef struct_emxArray_real_T_1x16
#define struct_emxArray_real_T_1x16
struct emxArray_real_T_1x16
{
    real_T data[16];
    int32_T size[2];
};
#endif /*struct_emxArray_real_T_1x16*/
#ifndef typedef_emxArray_real_T_1x16
#define typedef_emxArray_real_T_1x16
typedef struct emxArray_real_T_1x16 emxArray_real_T_1x16;
#endif /*typedef_emxArray_real_T_1x16*/
#ifndef struct_emxArray_real_T_1x6
#define struct_emxArray_real_T_1x6
struct emxArray_real_T_1x6
{
    real_T data[6];
    int32_T size[2];
};
#endif /*struct_emxArray_real_T_1x6*/
#ifndef typedef_emxArray_real_T_1x6
#define typedef_emxArray_real_T_1x6
typedef struct emxArray_real_T_1x6 emxArray_real_T_1x6;
#endif /*typedef_emxArray_real_T_1x6*/
#ifndef struct_emxArray_real_T_5x3
#define struct_emxArray_real_T_5x3
struct emxArray_real_T_5x3
{
    real_T data[15];
    int32_T size[2];
};
#endif /*struct_emxArray_real_T_5x3*/
#ifndef typedef_emxArray_real_T_5x3
#define typedef_emxArray_real_T_5x3
typedef struct emxArray_real_T_5x3 emxArray_real_T_5x3;
#endif /*typedef_emxArray_real_T_5x3*/

#endif
/* End of code generation (buildRRTWrapper_types.h) */
