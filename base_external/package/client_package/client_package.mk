
##############################################################
#
# CLIENT-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CLIENT_PACKAGE_VERSION = '820e1500509dd933e44f6a2efde10872e492a918'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CLIENT_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
CLIENT_PACKAGE_SITE_METHOD = git
CLIENT_PACKAGE_GIT_SUBMODULES = YES

define CLIENT_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define CLIENT_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
