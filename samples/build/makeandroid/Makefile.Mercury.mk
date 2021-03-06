# Makefile generated by XPJ for android
-include Makefile.custom
ProjectName = Mercury
Mercury_cppfiles   += ./../../es3aep-kepler/Mercury/MCPolygonizer.cpp
Mercury_cppfiles   += ./../../es3aep-kepler/Mercury/Mercury.cpp
Mercury_cppfiles   += ./../../es3aep-kepler/Mercury/ParticleSystem.cpp
Mercury_cppfiles   += ./../../es3aep-kepler/Mercury/ShaderPipeline.cpp

Mercury_cpp_debug_dep    = $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Mercury_cppfiles)))))
Mercury_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(Mercury_ccfiles)))))
Mercury_c_debug_dep      = $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Mercury_cfiles)))))
Mercury_debug_dep      = $(Mercury_cpp_debug_dep) $(Mercury_cc_debug_dep) $(Mercury_c_debug_dep)
-include $(Mercury_debug_dep)
Mercury_cpp_release_dep    = $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Mercury_cppfiles)))))
Mercury_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(Mercury_ccfiles)))))
Mercury_c_release_dep      = $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Mercury_cfiles)))))
Mercury_release_dep      = $(Mercury_cpp_release_dep) $(Mercury_cc_release_dep) $(Mercury_c_release_dep)
-include $(Mercury_release_dep)
Mercury_debug_hpaths    := 
Mercury_debug_hpaths    += ./../../es3aep-kepler/Mercury
Mercury_debug_hpaths    += ./../../../extensions/include
Mercury_debug_hpaths    += ./../../../extensions/externals/include
Mercury_debug_hpaths    += ./../../../extensions/include/NsFoundation
Mercury_debug_hpaths    += ./../../../extensions/include/NvFoundation
Mercury_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-24/arch-arm/usr/include
Mercury_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/include
Mercury_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/libs/armeabi-v7a/include
Mercury_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/include/backward
Mercury_debug_lpaths    := 
Mercury_debug_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
Mercury_debug_lpaths    += ./../../../extensions/lib/Tegra-Android
Mercury_debug_lpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/libs/armeabi-v7a
Mercury_debug_lpaths    += ./../../../extensions/lib/Tegra-Android
Mercury_debug_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
Mercury_debug_defines   := $(Mercury_custom_defines)
Mercury_debug_defines   += android
Mercury_debug_defines   += ANDROID
Mercury_debug_defines   += _LIB
Mercury_debug_defines   += NV_ANDROID
Mercury_debug_defines   += __STDC_LIMIT_MACROS
Mercury_debug_defines   += GW_APP_NAME=\"Mercury\"
Mercury_debug_defines   += GL_API_LEVEL_ES3_1_AEP
Mercury_debug_defines   += _DEBUG
Mercury_debug_libraries := 
Mercury_debug_libraries += NsFoundationD
Mercury_debug_libraries += NvAppBaseD
Mercury_debug_libraries += NvAssetLoaderD
Mercury_debug_libraries += NvModelD
Mercury_debug_libraries += NvGLUtilsD
Mercury_debug_libraries += NvGamepadD
Mercury_debug_libraries += NvImageD
Mercury_debug_libraries += NvUID
Mercury_debug_libraries += HalfD
Mercury_debug_libraries += NvEGLUtilD
Mercury_debug_libraries += gnustl_static
Mercury_debug_libraries += EGL
Mercury_debug_libraries += android
Mercury_debug_libraries += m
Mercury_debug_libraries += c
Mercury_debug_libraries += supc++
Mercury_debug_libraries += log
Mercury_debug_libraries += gcc
Mercury_debug_libraries += GLESv3
Mercury_debug_common_cflags	:= $(Mercury_custom_cflags)
Mercury_debug_common_cflags    += -MMD
Mercury_debug_common_cflags    += $(addprefix -D, $(Mercury_debug_defines))
Mercury_debug_common_cflags    += $(addprefix -I, $(Mercury_debug_hpaths))
Mercury_debug_common_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
Mercury_debug_common_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer -Wno-attributes
Mercury_debug_cflags	:= $(Mercury_debug_common_cflags)
Mercury_debug_cppflags	:= $(Mercury_debug_common_cflags)
Mercury_debug_cppflags  += -std="gnu++11"
Mercury_debug_lflags    := $(Mercury_custom_lflags)
Mercury_debug_lflags    += $(addprefix -L, $(Mercury_debug_lpaths))
Mercury_debug_lflags    += -Wl,--start-group $(addprefix -l, $(Mercury_debug_libraries)) -Wl,--end-group
Mercury_debug_lflags  += --sysroot=$(NDKROOT)/platforms/android-24/arch-arm -shared -Wl,--no-undefined
Mercury_debug_objsdir  = $(OBJS_DIR)/Mercury_debug
Mercury_debug_cpp_o    = $(addprefix $(Mercury_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Mercury_cppfiles)))))
Mercury_debug_cc_o    = $(addprefix $(Mercury_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Mercury_ccfiles)))))
Mercury_debug_c_o      = $(addprefix $(Mercury_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Mercury_cfiles)))))
Mercury_debug_obj      =  $(Mercury_debug_cpp_o) $(Mercury_debug_cc_o) $(Mercury_debug_c_o) 
Mercury_debug_bin      := ./../../es3aep-kepler/Mercury/libs/armeabi-v7a/libMercury.so

clean_Mercury_debug: 
	@$(ECHO) clean Mercury debug
	@$(RMDIR) $(Mercury_debug_objsdir)
	@$(RMDIR) $(Mercury_debug_bin)
	@$(RMDIR) $(DEPSDIR)/Mercury/debug

build_Mercury_debug: postbuild_Mercury_debug
postbuild_Mercury_debug: mainbuild_Mercury_debug preantbuild_Mercury_debug antbuild_Mercury_debug
preantbuild_Mercury_debug: mainbuild_Mercury_debug
antbuild_Mercury_debug: preantbuild_Mercury_debug
	dos2unix $(ANT_TOOL); JAVA_HOME=$(JAVA_HOME) $(ANT_TOOL) -f ./../../es3aep-kepler/Mercury/build.xml debug
mainbuild_Mercury_debug: prebuild_Mercury_debug $(Mercury_debug_bin)
prebuild_Mercury_debug:

$(Mercury_debug_bin): $(Mercury_debug_obj) build_NsFoundation_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvModel_debug build_NvGLUtils_debug build_NvGamepad_debug build_NvImage_debug build_NvUI_debug build_Half_debug build_NvEGLUtil_debug 
	mkdir -p `dirname ./../../es3aep-kepler/Mercury/libs/armeabi-v7a/libMercury.so`
	$(CXX) -shared $(filter %.o, $(Mercury_debug_obj)) $(Mercury_debug_lflags) -lc -o $@ 
	$(ECHO) building $@ complete!

Mercury_debug_DEPDIR = $(dir $(@))/$(*F)
$(Mercury_debug_cpp_o): $(Mercury_debug_objsdir)/%.o:
	$(ECHO) Mercury: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Mercury_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cppfiles))))))
	cp $(Mercury_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cppfiles))))).P; \
	  rm -f $(Mercury_debug_DEPDIR).d

$(Mercury_debug_cc_o): $(Mercury_debug_objsdir)/%.o:
	$(ECHO) Mercury: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Mercury_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_ccfiles))))))
	cp $(Mercury_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_ccfiles))))).debug.P; \
	  rm -f $(Mercury_debug_DEPDIR).d

$(Mercury_debug_c_o): $(Mercury_debug_objsdir)/%.o:
	$(ECHO) Mercury: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Mercury_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cfiles))))))
	cp $(Mercury_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Mercury/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_debug_objsdir),, $@))), $(Mercury_cfiles))))).P; \
	  rm -f $(Mercury_debug_DEPDIR).d

Mercury_release_hpaths    := 
Mercury_release_hpaths    += ./../../es3aep-kepler/Mercury
Mercury_release_hpaths    += ./../../../extensions/include
Mercury_release_hpaths    += ./../../../extensions/externals/include
Mercury_release_hpaths    += ./../../../extensions/include/NsFoundation
Mercury_release_hpaths    += ./../../../extensions/include/NvFoundation
Mercury_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-24/arch-arm/usr/include
Mercury_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/include
Mercury_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/libs/armeabi-v7a/include
Mercury_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/include/backward
Mercury_release_lpaths    := 
Mercury_release_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
Mercury_release_lpaths    += ./../../../extensions/lib/Tegra-Android
Mercury_release_lpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/$(if $(NVPACK_NDK_TOOL_VERSION),$(NVPACK_NDK_TOOL_VERSION),4.8)/libs/armeabi-v7a
Mercury_release_lpaths    += ./../../../extensions/lib/Tegra-Android
Mercury_release_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
Mercury_release_defines   := $(Mercury_custom_defines)
Mercury_release_defines   += android
Mercury_release_defines   += ANDROID
Mercury_release_defines   += _LIB
Mercury_release_defines   += NV_ANDROID
Mercury_release_defines   += __STDC_LIMIT_MACROS
Mercury_release_defines   += GW_APP_NAME=\"Mercury\"
Mercury_release_defines   += GL_API_LEVEL_ES3_1_AEP
Mercury_release_defines   += NDEBUG
Mercury_release_libraries := 
Mercury_release_libraries += NsFoundation
Mercury_release_libraries += NvAppBase
Mercury_release_libraries += NvAssetLoader
Mercury_release_libraries += NvModel
Mercury_release_libraries += NvGLUtils
Mercury_release_libraries += NvGamepad
Mercury_release_libraries += NvImage
Mercury_release_libraries += NvUI
Mercury_release_libraries += Half
Mercury_release_libraries += NvEGLUtil
Mercury_release_libraries += gnustl_static
Mercury_release_libraries += EGL
Mercury_release_libraries += android
Mercury_release_libraries += m
Mercury_release_libraries += c
Mercury_release_libraries += supc++
Mercury_release_libraries += log
Mercury_release_libraries += gcc
Mercury_release_libraries += GLESv3
Mercury_release_common_cflags	:= $(Mercury_custom_cflags)
Mercury_release_common_cflags    += -MMD
Mercury_release_common_cflags    += $(addprefix -D, $(Mercury_release_defines))
Mercury_release_common_cflags    += $(addprefix -I, $(Mercury_release_hpaths))
Mercury_release_common_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
Mercury_release_common_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer -Wno-attributes
Mercury_release_cflags	:= $(Mercury_release_common_cflags)
Mercury_release_cppflags	:= $(Mercury_release_common_cflags)
Mercury_release_cppflags  += -std="gnu++11"
Mercury_release_lflags    := $(Mercury_custom_lflags)
Mercury_release_lflags    += $(addprefix -L, $(Mercury_release_lpaths))
Mercury_release_lflags    += -Wl,--start-group $(addprefix -l, $(Mercury_release_libraries)) -Wl,--end-group
Mercury_release_lflags  += --sysroot=$(NDKROOT)/platforms/android-24/arch-arm -shared -Wl,--no-undefined
Mercury_release_objsdir  = $(OBJS_DIR)/Mercury_release
Mercury_release_cpp_o    = $(addprefix $(Mercury_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Mercury_cppfiles)))))
Mercury_release_cc_o    = $(addprefix $(Mercury_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Mercury_ccfiles)))))
Mercury_release_c_o      = $(addprefix $(Mercury_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Mercury_cfiles)))))
Mercury_release_obj      =  $(Mercury_release_cpp_o) $(Mercury_release_cc_o) $(Mercury_release_c_o) 
Mercury_release_bin      := ./../../es3aep-kepler/Mercury/libs/armeabi-v7a/libMercury.so

clean_Mercury_release: 
	@$(ECHO) clean Mercury release
	@$(RMDIR) $(Mercury_release_objsdir)
	@$(RMDIR) $(Mercury_release_bin)
	@$(RMDIR) $(DEPSDIR)/Mercury/release

build_Mercury_release: postbuild_Mercury_release
postbuild_Mercury_release: mainbuild_Mercury_release preantbuild_Mercury_release antbuild_Mercury_release
preantbuild_Mercury_release: mainbuild_Mercury_release
antbuild_Mercury_release: preantbuild_Mercury_release
	dos2unix $(ANT_TOOL); JAVA_HOME=$(JAVA_HOME) $(ANT_TOOL) -f ./../../es3aep-kepler/Mercury/build.xml debug
mainbuild_Mercury_release: prebuild_Mercury_release $(Mercury_release_bin)
prebuild_Mercury_release:

$(Mercury_release_bin): $(Mercury_release_obj) build_NsFoundation_release build_NvAppBase_release build_NvAssetLoader_release build_NvModel_release build_NvGLUtils_release build_NvGamepad_release build_NvImage_release build_NvUI_release build_Half_release build_NvEGLUtil_release 
	mkdir -p `dirname ./../../es3aep-kepler/Mercury/libs/armeabi-v7a/libMercury.so`
	$(CXX) -shared $(filter %.o, $(Mercury_release_obj)) $(Mercury_release_lflags) -lc -o $@ 
	$(ECHO) building $@ complete!

Mercury_release_DEPDIR = $(dir $(@))/$(*F)
$(Mercury_release_cpp_o): $(Mercury_release_objsdir)/%.o:
	$(ECHO) Mercury: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Mercury_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cppfiles))))))
	cp $(Mercury_release_DEPDIR).d $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cppfiles))))).P; \
	  rm -f $(Mercury_release_DEPDIR).d

$(Mercury_release_cc_o): $(Mercury_release_objsdir)/%.o:
	$(ECHO) Mercury: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Mercury_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_ccfiles))))))
	cp $(Mercury_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_ccfiles))))).release.P; \
	  rm -f $(Mercury_release_DEPDIR).d

$(Mercury_release_c_o): $(Mercury_release_objsdir)/%.o:
	$(ECHO) Mercury: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Mercury_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cfiles))))))
	cp $(Mercury_release_DEPDIR).d $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Mercury_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Mercury/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Mercury_release_objsdir),, $@))), $(Mercury_cfiles))))).P; \
	  rm -f $(Mercury_release_DEPDIR).d

clean_Mercury:  clean_Mercury_debug clean_Mercury_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
