
##############################################################
#
# WIRINGPI-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
WIRINGPI_PACKAGE_VERSION = '7f8fe26e4f775abfced43c07657a353f03ddb2d0'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
WIRINGPI_PACKAGE_SITE = 'git@github.com:WiringPi/WiringPi.git'
WIRINGPI_PACKAGE_SITE_METHOD = git
WIRINGPI_PACKAGE_GIT_SUBMODULES = YES

define WIRINGPI_PACKAGE_BUILD_CMDS
	cd /home/midhun/Desktop/aesd/final-project-midhun9/buildroot/output/build/wiringpi_package-7f8fe26e4f775abfced43c07657a353f03ddb2d0/
	sh build
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
#define WIRINGPIPACKAGE_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/gpio/* $(TARGET_DIR)/usr/bin
#endef

$(eval $(generic-package))
