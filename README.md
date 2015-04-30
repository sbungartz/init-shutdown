# init-shutdown

## Why
When I start my computer with wake on lan from a remote location and later turn it off via ssh it immediately boots again.
Issuing another shutdown request via ssh turns it off for good.
This requires waiting for the reboot and then running ssh and entering the root password again.
The actual issue seems to be with BIOS / ACPI as discussed [here][1], but none of the solutions have worked for me so far.
Until I find a proper fix I will use this `shutdown-twice` script to make my PC reboot and then shutdown again which keeps it powered off.

## How
Install the scripts using

    sudo make install

To schedule a shutdown after the next boot use

    sudo update-rc.d init-shutdown defaults

To cancel the scheduled shutdown use

    sudo update-rc.d -f init-shutdown remove

To schedule a shutdown and reboot you can use the shortcut script

    sudo shutdown-twice

To uninstall the scripts use
    sudo make uninstall
[1]: http://askubuntu.com/questions/281039/on-shutdown-computer-reboots-when-started-via-wake-on-lan
