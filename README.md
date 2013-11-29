Getting Started
---------------

To get started with Android/CyanogenMod, you'll need to get
familiar with [Git and Repo](http://source.android.com/source/using-repo.html).

To initialize your local repository using the CyanogenMod trees, use a command like this:

    repo init -u git://github.com/Galaxy-S2-Plus-Cyanogenmod/android.git -b cm-10.2

Then to sync up:

    repo sync

Please see the [CyanogenMod Wiki](http://wiki.cyanogenmod.org/) for building instructions.

Building
---------------

Enter this command:

    ./build.sh

Then choose the device/devices you want to compile for:

    1 = Galaxy S2 Plus NFC (s2vep)
    2 = Galaxy S2 Plus (s2ve)
    3 = Galaxy Grand Duos (baffin)
    12 = Galaxy S2 Plus NFC (s2vep) + Galaxy S2 Plus (s2ve)
    13 = Galaxy S2 Plus NFC (s2vep) + Galaxy Grand Duos (baffin)
    23 = Galaxy S2 Plus (s2ve) + Galaxy Grand Duos (baffin)
    123 = Galaxy S2 Plus NFC (s2vep) + Galaxy S2 Plus (s2ve) + Galaxy Grand Duos (baffin)

