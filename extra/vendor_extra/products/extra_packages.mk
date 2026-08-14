# microG (FOSS re-implementation of Google Play Services) + Aurora Store/Services
# Populated at CI build time by .github/workflows/build.yml — see that file for
# where the actual .apk / .xml binaries are fetched from.

PRODUCT_PACKAGES += \
    GmsCore \
    FakeStore \
    GsfProxy \
    AuroraStore \
    AuroraServices \
    NewPipe

# Aurora Services needs this permissions whitelist file to be recognized as a
# privileged installer helper by the framework.
PRODUCT_COPY_FILES += \
    vendor/extra/permissions/permissions_com.aurora.services.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/permissions_com.aurora.services.xml
