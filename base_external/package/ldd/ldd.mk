
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '77110a371d0103f976dbc519095348f64681d518'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-iker-conde-ziv.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/

define LDD_INSTALL_TARGET_CMDS
	sed -i 's:insmod:modprobe:g' $(@D)/misc-modules/module_load
	sed -i 's:./$$module.ko:$$module:g' $(@D)/misc-modules/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
	sed -i 's:insmod:modprobe:g' $(@D)/scull/scull_load
	sed -i 's:./$$module.ko:$$module:g' $(@D)/scull/scull_load
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
