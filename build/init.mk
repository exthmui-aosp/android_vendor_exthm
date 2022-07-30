#
# Copyright (C) 2022 The exTHmUI Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit vendor submodules
$(call inherit-product, vendor/exthm/overlay/overlay.mk)

# exTHmUI version
-include vendor/exthm/build/tools/version.mk