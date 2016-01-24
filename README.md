# gwx

A Puppet module that removes GWX, the Windows 10 upgrade / adware application.

# Module usage

To ensure GWX is removed and stays that way using Hiera:

    classes:
        - gwx

Currently this class only removes GWX, but later it could potentially reinstall 
it. For details, see

* [Class: gwx](manifests/init.pp)

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on

* Windows 7 Pro 64-bit

It will only ever work on Windows platforms.
