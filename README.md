CyanogenMod 10 UNOFFICIAL alfa device configuration for ZTE Blade G.

How to build:
-------------

Initialize CyanogenMod repo:

    repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    repo sync

Add the following to your cm10/.repo/local_manifests/local_manifest.xml and repo sync again:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <!-- ZTE Blade G -->
        <project path="device/zte/blade_g" name="Keeperv85/Blade_G" revision="master" />
        <project path="vendor/zte" name="Keeperv85/Blade_G_vendor" revision="master" />
    </manifest>

Compile:

    . build/envsetup.sh
    brunch blade_g


