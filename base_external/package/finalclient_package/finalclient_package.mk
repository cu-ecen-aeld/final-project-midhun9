
##############################################################
#
# FINALCLIENT-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
FINALCLIENT_PACKAGE_VERSION = '64dc51cdbec8d5707a32bb9ab67dff053c50d2e2'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
FINALCLIENT_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
FINALCLIENT_PACKAGE_SITE_METHOD = git
FINALCLIENT_PACKAGE_GIT_SUBMODULES = YES

define FINALCLIENT_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/final_test_client_integrated all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define FINALCLIENT_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/final_test_client_integrated/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
