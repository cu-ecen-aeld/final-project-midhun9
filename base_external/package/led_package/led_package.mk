
##############################################################
#
# LED-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LED_PACKAGE_VERSION = '8b517379862da19a11963de2e078f1811057c8bb'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LED_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
LED_PACKAGE_SITE_METHOD = git
LED_PACKAGE_GIT_SUBMODULES = YES

define LED_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/led all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LED_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/led/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
