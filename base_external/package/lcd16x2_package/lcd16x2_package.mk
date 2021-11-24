
##############################################################
#
# LCD-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD16X2_PACKAGE_VERSION = '3867ab3b0a63fbc2b9e6957f7c0015166805cc0f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD16X2_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
LCD16X2_PACKAGE_SITE_METHOD = git
LCD16X2_PACKAGE_GIT_SUBMODULES = YES

define LCD16X2_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd16x2 all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD16X2_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/lcd16x2/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
