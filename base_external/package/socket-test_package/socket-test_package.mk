
##############################################################
#
# SOCKET-TEST-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOCKET_TEST_PACKAGE_VERSION = '402a43381e3bf601c5a7703fc22038bee3834986'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_TEST_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-support-midhun-venkat.git'
SOCKET_TEST_PACKAGE_SITE_METHOD = git
SOCKET_TEST_PACKAGE_GIT_SUBMODULES = YES

define SOCKET_TEST_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_test all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_TEST_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_test/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
