RIDETHELN_VERSION=0.7.0
RIDETHELN_BUILD_DIR=$(BUILD_DIR)/ridetheln-$(RIDETHELN_VERSION)


RIDETHELN_SOURCE_DIR=$(SOURCE_DIR)/ridetheln
RIDETHELN_DEB_VERSION=$(RIDETHELN_VERSION)-1
RIDETHELN_BIN_VERSION=$(RIDETHELN_DEB_VERSION)_$(DEB_ARCH)
RIDETHELN_SHARE_VERSION=$(RIDETHELN_DEB_VERSION)_all

RIDETHELN_BIN_PACKAGES=$(addsuffix _$(RIDETHELN_BIN_VERSION),)
RIDETHELN_SHARE_PACKAGES=$(addsuffix _$(RIDETHELN_SHARE_VERSION), ridetheln ridetheln-mainnet)
RIDETHELN_PACKAGES=$(addprefix $(BUILD_DIR)/, $(addsuffix .deb, $(RIDETHELN_BIN_PACKAGES) $(RIDETHELN_SHARE_PACKAGES)))
RIDETHELN_EXTRA_FILES=$(addprefix $(BUILD_DIR)/,ridetheln_$(RIDETHELN_BIN_VERSION).buildinfo ridetheln_$(RIDETHELN_BIN_VERSION).changes ridetheln_$(RIDETHELN_DEB_VERSION).dsc ridetheln_$(RIDETHELN_DEB_VERSION).tar.gz)
