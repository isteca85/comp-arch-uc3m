ES_CONFIG_INPUT=\
config/*.tex \
config/es/*.tex \
es/license-cc.tex \

#include for slides
include es/00-intro/Makefile.def
include es/m1-01-fund/Makefile.def
include es/m2-01-trends/Makefile.def
include es/m2-02-perf/Makefile.def
include es/m6-01-cppintro/Makefile.def

# Exercise statements
include es/ex/Makefile.def

# Labs statements
include es/labs/Makefile.def

ALL_ES_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_ES_FINAL_PDF) \
$(ALL_INTRO_ES_FINAL_PDF) \
$(ALL_EX_ES_FINAL_PDF) \
$(ALL_LABS_ES_FINAL_PDF) \

alles:	$(ALL_ES_FINAL_PDF)

#include rules for slides
include $(ES_00_INTRO_DIR)/Makefile.mk
include $(ES_M1_01_FUND_DIR)/Makefile.mk
include $(ES_M2_01_TRENDS_DIR)/Makefile.mk
include $(ES_M2_02_PERF_DIR)/Makefile.mk
include $(ES_M6_01_CPPINTRO_DIR)/Makefile.mk

#Rules for exercises
include $(ES_EX_DIR)/Makefile.mk

#Rules for labs
include ${ES_LABS_DIR}/Makefile.mk
