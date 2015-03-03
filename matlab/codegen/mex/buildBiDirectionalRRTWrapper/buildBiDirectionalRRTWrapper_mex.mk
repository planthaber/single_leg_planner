START_DIR = /Users/fuji/Dropbox/phd/matlab/singleLegPlanning/single_leg_planner/matlab

MATLAB_ROOT = /Applications/MATLAB_R2014b.app
MAKEFILE = buildBiDirectionalRRTWrapper_mex.mk

include buildBiDirectionalRRTWrapper_mex.mki


SRC_FILES =  \
	buildBiDirectionalRRTWrapper_mexutil.c \
	buildBiDirectionalRRTWrapper_data.c \
	buildBiDirectionalRRTWrapper_initialize.c \
	buildBiDirectionalRRTWrapper_terminate.c \
	buildBiDirectionalRRTWrapper.c \
	sin.c \
	trInv.c \
	sherpaTTIK.c \
	eml_error.c \
	exp.c \
	log.c \
	asin.c \
	eml_int_forloop_overflow_check.c \
	sherpaTTIKVel.c \
	validJointState.c \
	buildBiDirectionalRRT.c \
	getXStar.c \
	heuristicSingleLeg.c \
	norm.c \
	selectInput.c \
	rk4.c \
	getPhiAndOmega.c \
	angDiff.c \
	flipud.c \
	_coder_buildBiDirectionalRRTWrapper_api.c \
	buildBiDirectionalRRTWrapper_emxutil.c \
	_coder_buildBiDirectionalRRTWrapper_mex.c \
	_coder_buildBiDirectionalRRTWrapper_info.c

MEX_FILE_NAME_WO_EXT = buildBiDirectionalRRTWrapper_mex
MEX_FILE_NAME = $(MEX_FILE_NAME_WO_EXT).mexmaci64
TARGET = $(MEX_FILE_NAME)

SYS_LIBS = 


#
#====================================================================
# gmake makefile fragment for building MEX functions using Unix
# Copyright 2007-2013 The MathWorks, Inc.
#====================================================================
#
OBJEXT = o
.SUFFIXES: .$(OBJEXT)

OBJLISTC = $(SRC_FILES:.c=.$(OBJEXT))
OBJLISTCPP  = $(OBJLISTC:.cpp=.$(OBJEXT))
OBJLIST  = $(OBJLISTCPP:.cu=.$(OBJEXT))

target: $(TARGET)

ML_INCLUDES = -I "$(MATLAB_ROOT)/simulink/include"
ML_INCLUDES+= -I "$(MATLAB_ROOT)/toolbox/shared/simtargets"
SYS_INCLUDE = $(ML_INCLUDES)

# Additional includes

SYS_INCLUDE += -I "$(START_DIR)"
SYS_INCLUDE += -I "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/codegen/mex/buildBiDirectionalRRTWrapper"
SYS_INCLUDE += -I "/Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/codegen/mex/buildBiDirectionalRRTWrapper/interface"
SYS_INCLUDE += -I "$(START_DIR)/rrt/biDirectionalRRT"
SYS_INCLUDE += -I "$(MATLAB_ROOT)/extern/include"
SYS_INCLUDE += -I "."

EML_LIBS = -lemlrt -lcovrt -lut -lmwmathutil -lmwblas 
SYS_LIBS += $(CLIBS) $(EML_LIBS)


EXPORTFILE = $(MEX_FILE_NAME_WO_EXT)_mex.map
ifeq ($(Arch),maci)
  EXPORTOPT = -Wl,-exported_symbols_list,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS))
else ifeq ($(Arch),maci64)
  EXPORTOPT = -Wl,-exported_symbols_list,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS))
else
  EXPORTOPT = -Wl,--version-script,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32 $(OMPFLAGS)
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32 $(OMPFLAGS)
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS)) 
endif
LINK_FLAGS += $(OMPLINKFLAGS)
ifeq ($(Arch),maci)
  LINK_FLAGS += -L$(MATLAB_ROOT)/sys/os/maci
endif
ifeq ($(EMC_CONFIG),optim)
  ifeq ($(Arch),mac)
    COMP_FLAGS += $(CDEBUGFLAGS)
    CXX_FLAGS += $(CXXDEBUGFLAGS)
  else
    COMP_FLAGS += $(COPTIMFLAGS)
    CXX_FLAGS += $(CXXOPTIMFLAGS)
  endif
  LINK_FLAGS += $(LDOPTIMFLAGS)
else
  COMP_FLAGS += $(CDEBUGFLAGS)
  CXX_FLAGS += $(CXXDEBUGFLAGS)
  LINK_FLAGS += $(LDDEBUGFLAGS)
endif
LINK_FLAGS += -o $(TARGET)
LINK_FLAGS += 

CCFLAGS =  $(COMP_FLAGS) $(USER_INCLUDE) $(SYS_INCLUDE)
CPPFLAGS =   $(CXX_FLAGS) $(USER_INCLUDE) $(SYS_INCLUDE)

%.$(OBJEXT) : %.c
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : %.cpp
	$(CXX) $(CPPFLAGS) "$<"

# Additional sources

%.$(OBJEXT) : $(START_DIR)/%.c
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : /Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/codegen/mex/buildBiDirectionalRRTWrapper/%.c
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : interface/%.c
	$(CC) $(CCFLAGS) "$<"



%.$(OBJEXT) : $(START_DIR)/%.cu
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : /Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/codegen/mex/buildBiDirectionalRRTWrapper/%.cu
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : interface/%.cu
	$(CC) $(CCFLAGS) "$<"



%.$(OBJEXT) : $(START_DIR)/%.cpp
	$(CXX) $(CPPFLAGS) "$<"

%.$(OBJEXT) : /Users/fuji/Dropbox/PhD/matlab/singleLegPlanning/single_leg_planner/matlab/codegen/mex/buildBiDirectionalRRTWrapper/%.cpp
	$(CXX) $(CPPFLAGS) "$<"

%.$(OBJEXT) : interface/%.cpp
	$(CXX) $(CPPFLAGS) "$<"



$(TARGET): $(OBJLIST) $(MAKEFILE)
	$(LD) $(EXPORTOPT) $(LINK_FLAGS) $(OBJLIST) $(SYS_LIBS)

#====================================================================

