
##############################################################
#
# LCD-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_PACKAGE_VERSION = 'b4210067b5520a4aed91590fba02116ebe580a40'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
LCD_PACKAGE_SITE_METHOD = git
LCD_PACKAGE_GIT_SUBMODULES = YES

define LCD_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/lcd/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
