#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Det.c PostBuildConfig.c main.c app/appswcs/HMI.c app/appswcs/SeatManager.c app/sensors_actuators/HeightMotor.c app/sensors_actuators/HeightSensor.c app/sensors_actuators/InclineMotor.c app/sensors_actuators/InclineSensor.c app/sensors_actuators/IoHwAbs.c app/sensors_actuators/SlideMotor.c app/sensors_actuators/SlideSensor.c app/sensors_actuators/WeightSensor.c bsw/static/Adc.c bsw/static/Com.c bsw/static/Dio.c bsw/static/Os.c bsw/static/Spi.c rte/Rte.c vfb/vfb.c bsw/static/Port.c bsw/cfg/Adc_Cfg.c bsw/cfg/Dio_Cfg.c bsw/cfg/Spi_Cfg.c bsw/static/interrupt.c bsw/static/Uart_CDD.c bsw/cfg/Uart_Cfg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Det.p1 ${OBJECTDIR}/PostBuildConfig.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/app/appswcs/HMI.p1 ${OBJECTDIR}/app/appswcs/SeatManager.p1 ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 ${OBJECTDIR}/bsw/static/Adc.p1 ${OBJECTDIR}/bsw/static/Com.p1 ${OBJECTDIR}/bsw/static/Dio.p1 ${OBJECTDIR}/bsw/static/Os.p1 ${OBJECTDIR}/bsw/static/Spi.p1 ${OBJECTDIR}/rte/Rte.p1 ${OBJECTDIR}/vfb/vfb.p1 ${OBJECTDIR}/bsw/static/Port.p1 ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 ${OBJECTDIR}/bsw/static/interrupt.p1 ${OBJECTDIR}/bsw/static/Uart_CDD.p1 ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Det.p1.d ${OBJECTDIR}/PostBuildConfig.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/app/appswcs/HMI.p1.d ${OBJECTDIR}/app/appswcs/SeatManager.p1.d ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d ${OBJECTDIR}/bsw/static/Adc.p1.d ${OBJECTDIR}/bsw/static/Com.p1.d ${OBJECTDIR}/bsw/static/Dio.p1.d ${OBJECTDIR}/bsw/static/Os.p1.d ${OBJECTDIR}/bsw/static/Spi.p1.d ${OBJECTDIR}/rte/Rte.p1.d ${OBJECTDIR}/vfb/vfb.p1.d ${OBJECTDIR}/bsw/static/Port.p1.d ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d ${OBJECTDIR}/bsw/static/interrupt.p1.d ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Det.p1 ${OBJECTDIR}/PostBuildConfig.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/app/appswcs/HMI.p1 ${OBJECTDIR}/app/appswcs/SeatManager.p1 ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 ${OBJECTDIR}/bsw/static/Adc.p1 ${OBJECTDIR}/bsw/static/Com.p1 ${OBJECTDIR}/bsw/static/Dio.p1 ${OBJECTDIR}/bsw/static/Os.p1 ${OBJECTDIR}/bsw/static/Spi.p1 ${OBJECTDIR}/rte/Rte.p1 ${OBJECTDIR}/vfb/vfb.p1 ${OBJECTDIR}/bsw/static/Port.p1 ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 ${OBJECTDIR}/bsw/static/interrupt.p1 ${OBJECTDIR}/bsw/static/Uart_CDD.p1 ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1

# Source Files
SOURCEFILES=Det.c PostBuildConfig.c main.c app/appswcs/HMI.c app/appswcs/SeatManager.c app/sensors_actuators/HeightMotor.c app/sensors_actuators/HeightSensor.c app/sensors_actuators/InclineMotor.c app/sensors_actuators/InclineSensor.c app/sensors_actuators/IoHwAbs.c app/sensors_actuators/SlideMotor.c app/sensors_actuators/SlideSensor.c app/sensors_actuators/WeightSensor.c bsw/static/Adc.c bsw/static/Com.c bsw/static/Dio.c bsw/static/Os.c bsw/static/Spi.c rte/Rte.c vfb/vfb.c bsw/static/Port.c bsw/cfg/Adc_Cfg.c bsw/cfg/Dio_Cfg.c bsw/cfg/Spi_Cfg.c bsw/static/interrupt.c bsw/static/Uart_CDD.c bsw/cfg/Uart_Cfg.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F877A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Det.p1: Det.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Det.p1.d 
	@${RM} ${OBJECTDIR}/Det.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Det.p1 Det.c 
	@-${MV} ${OBJECTDIR}/Det.d ${OBJECTDIR}/Det.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Det.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PostBuildConfig.p1: PostBuildConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PostBuildConfig.p1.d 
	@${RM} ${OBJECTDIR}/PostBuildConfig.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/PostBuildConfig.p1 PostBuildConfig.c 
	@-${MV} ${OBJECTDIR}/PostBuildConfig.d ${OBJECTDIR}/PostBuildConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PostBuildConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/appswcs/HMI.p1: app/appswcs/HMI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/appswcs" 
	@${RM} ${OBJECTDIR}/app/appswcs/HMI.p1.d 
	@${RM} ${OBJECTDIR}/app/appswcs/HMI.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/appswcs/HMI.p1 app/appswcs/HMI.c 
	@-${MV} ${OBJECTDIR}/app/appswcs/HMI.d ${OBJECTDIR}/app/appswcs/HMI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/appswcs/HMI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/appswcs/SeatManager.p1: app/appswcs/SeatManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/appswcs" 
	@${RM} ${OBJECTDIR}/app/appswcs/SeatManager.p1.d 
	@${RM} ${OBJECTDIR}/app/appswcs/SeatManager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/appswcs/SeatManager.p1 app/appswcs/SeatManager.c 
	@-${MV} ${OBJECTDIR}/app/appswcs/SeatManager.d ${OBJECTDIR}/app/appswcs/SeatManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/appswcs/SeatManager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1: app/sensors_actuators/HeightMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 app/sensors_actuators/HeightMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.d ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1: app/sensors_actuators/HeightSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 app/sensors_actuators/HeightSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.d ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1: app/sensors_actuators/InclineMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 app/sensors_actuators/InclineMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.d ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1: app/sensors_actuators/InclineSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 app/sensors_actuators/InclineSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.d ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1: app/sensors_actuators/IoHwAbs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 app/sensors_actuators/IoHwAbs.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.d ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1: app/sensors_actuators/SlideMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 app/sensors_actuators/SlideMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.d ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1: app/sensors_actuators/SlideSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 app/sensors_actuators/SlideSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.d ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1: app/sensors_actuators/WeightSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 app/sensors_actuators/WeightSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.d ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Adc.p1: bsw/static/Adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Adc.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Adc.p1 bsw/static/Adc.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Adc.d ${OBJECTDIR}/bsw/static/Adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Com.p1: bsw/static/Com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Com.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Com.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Com.p1 bsw/static/Com.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Com.d ${OBJECTDIR}/bsw/static/Com.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Com.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Dio.p1: bsw/static/Dio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Dio.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Dio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Dio.p1 bsw/static/Dio.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Dio.d ${OBJECTDIR}/bsw/static/Dio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Dio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Os.p1: bsw/static/Os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Os.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Os.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Os.p1 bsw/static/Os.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Os.d ${OBJECTDIR}/bsw/static/Os.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Os.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Spi.p1: bsw/static/Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Spi.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Spi.p1 bsw/static/Spi.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Spi.d ${OBJECTDIR}/bsw/static/Spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/rte/Rte.p1: rte/Rte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rte" 
	@${RM} ${OBJECTDIR}/rte/Rte.p1.d 
	@${RM} ${OBJECTDIR}/rte/Rte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/rte/Rte.p1 rte/Rte.c 
	@-${MV} ${OBJECTDIR}/rte/Rte.d ${OBJECTDIR}/rte/Rte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/rte/Rte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/vfb/vfb.p1: vfb/vfb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/vfb" 
	@${RM} ${OBJECTDIR}/vfb/vfb.p1.d 
	@${RM} ${OBJECTDIR}/vfb/vfb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/vfb/vfb.p1 vfb/vfb.c 
	@-${MV} ${OBJECTDIR}/vfb/vfb.d ${OBJECTDIR}/vfb/vfb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/vfb/vfb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Port.p1: bsw/static/Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Port.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Port.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Port.p1 bsw/static/Port.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Port.d ${OBJECTDIR}/bsw/static/Port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1: bsw/cfg/Adc_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 bsw/cfg/Adc_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.d ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1: bsw/cfg/Dio_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 bsw/cfg/Dio_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.d ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1: bsw/cfg/Spi_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 bsw/cfg/Spi_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.d ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/interrupt.p1: bsw/static/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/interrupt.p1 bsw/static/interrupt.c 
	@-${MV} ${OBJECTDIR}/bsw/static/interrupt.d ${OBJECTDIR}/bsw/static/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Uart_CDD.p1: bsw/static/Uart_CDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Uart_CDD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Uart_CDD.p1 bsw/static/Uart_CDD.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Uart_CDD.d ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1: bsw/cfg/Uart_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1 bsw/cfg/Uart_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.d ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Det.p1: Det.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Det.p1.d 
	@${RM} ${OBJECTDIR}/Det.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Det.p1 Det.c 
	@-${MV} ${OBJECTDIR}/Det.d ${OBJECTDIR}/Det.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Det.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PostBuildConfig.p1: PostBuildConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PostBuildConfig.p1.d 
	@${RM} ${OBJECTDIR}/PostBuildConfig.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/PostBuildConfig.p1 PostBuildConfig.c 
	@-${MV} ${OBJECTDIR}/PostBuildConfig.d ${OBJECTDIR}/PostBuildConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PostBuildConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/appswcs/HMI.p1: app/appswcs/HMI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/appswcs" 
	@${RM} ${OBJECTDIR}/app/appswcs/HMI.p1.d 
	@${RM} ${OBJECTDIR}/app/appswcs/HMI.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/appswcs/HMI.p1 app/appswcs/HMI.c 
	@-${MV} ${OBJECTDIR}/app/appswcs/HMI.d ${OBJECTDIR}/app/appswcs/HMI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/appswcs/HMI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/appswcs/SeatManager.p1: app/appswcs/SeatManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/appswcs" 
	@${RM} ${OBJECTDIR}/app/appswcs/SeatManager.p1.d 
	@${RM} ${OBJECTDIR}/app/appswcs/SeatManager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/appswcs/SeatManager.p1 app/appswcs/SeatManager.c 
	@-${MV} ${OBJECTDIR}/app/appswcs/SeatManager.d ${OBJECTDIR}/app/appswcs/SeatManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/appswcs/SeatManager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1: app/sensors_actuators/HeightMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1 app/sensors_actuators/HeightMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.d ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/HeightMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1: app/sensors_actuators/HeightSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1 app/sensors_actuators/HeightSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.d ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/HeightSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1: app/sensors_actuators/InclineMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1 app/sensors_actuators/InclineMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.d ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/InclineMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1: app/sensors_actuators/InclineSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1 app/sensors_actuators/InclineSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.d ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/InclineSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1: app/sensors_actuators/IoHwAbs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1 app/sensors_actuators/IoHwAbs.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.d ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/IoHwAbs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1: app/sensors_actuators/SlideMotor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1 app/sensors_actuators/SlideMotor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.d ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/SlideMotor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1: app/sensors_actuators/SlideSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1 app/sensors_actuators/SlideSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.d ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/SlideSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1: app/sensors_actuators/WeightSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/app/sensors_actuators" 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d 
	@${RM} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1 app/sensors_actuators/WeightSensor.c 
	@-${MV} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.d ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app/sensors_actuators/WeightSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Adc.p1: bsw/static/Adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Adc.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Adc.p1 bsw/static/Adc.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Adc.d ${OBJECTDIR}/bsw/static/Adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Com.p1: bsw/static/Com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Com.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Com.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Com.p1 bsw/static/Com.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Com.d ${OBJECTDIR}/bsw/static/Com.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Com.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Dio.p1: bsw/static/Dio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Dio.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Dio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Dio.p1 bsw/static/Dio.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Dio.d ${OBJECTDIR}/bsw/static/Dio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Dio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Os.p1: bsw/static/Os.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Os.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Os.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Os.p1 bsw/static/Os.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Os.d ${OBJECTDIR}/bsw/static/Os.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Os.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Spi.p1: bsw/static/Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Spi.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Spi.p1 bsw/static/Spi.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Spi.d ${OBJECTDIR}/bsw/static/Spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/rte/Rte.p1: rte/Rte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rte" 
	@${RM} ${OBJECTDIR}/rte/Rte.p1.d 
	@${RM} ${OBJECTDIR}/rte/Rte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/rte/Rte.p1 rte/Rte.c 
	@-${MV} ${OBJECTDIR}/rte/Rte.d ${OBJECTDIR}/rte/Rte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/rte/Rte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/vfb/vfb.p1: vfb/vfb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/vfb" 
	@${RM} ${OBJECTDIR}/vfb/vfb.p1.d 
	@${RM} ${OBJECTDIR}/vfb/vfb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/vfb/vfb.p1 vfb/vfb.c 
	@-${MV} ${OBJECTDIR}/vfb/vfb.d ${OBJECTDIR}/vfb/vfb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/vfb/vfb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Port.p1: bsw/static/Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Port.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Port.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Port.p1 bsw/static/Port.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Port.d ${OBJECTDIR}/bsw/static/Port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1: bsw/cfg/Adc_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1 bsw/cfg/Adc_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.d ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Adc_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1: bsw/cfg/Dio_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1 bsw/cfg/Dio_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.d ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Dio_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1: bsw/cfg/Spi_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1 bsw/cfg/Spi_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.d ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Spi_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/interrupt.p1: bsw/static/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/interrupt.p1 bsw/static/interrupt.c 
	@-${MV} ${OBJECTDIR}/bsw/static/interrupt.d ${OBJECTDIR}/bsw/static/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/static/Uart_CDD.p1: bsw/static/Uart_CDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/static" 
	@${RM} ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d 
	@${RM} ${OBJECTDIR}/bsw/static/Uart_CDD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/static/Uart_CDD.p1 bsw/static/Uart_CDD.c 
	@-${MV} ${OBJECTDIR}/bsw/static/Uart_CDD.d ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/static/Uart_CDD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1: bsw/cfg/Uart_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsw/cfg" 
	@${RM} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1 bsw/cfg/Uart_Cfg.c 
	@-${MV} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.d ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsw/cfg/Uart_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/SeatCtrlApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
