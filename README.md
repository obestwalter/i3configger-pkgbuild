# i3configger-pkgbuild

Vagrant powered PKGBUILD for i3configger Arch Linux package.

**WIP - not in AUR or anywhere yet.**

## Create a new package

* Make necessary changes in PKGBUILD
* `vagrant up --provision`
* DONE - all work is done in provisioning scripts :)

or ensure a fresh build on a fresh, updated system:

    $ vagrant destroy -f && vagrant up

# TODO

check out other automation scripts to do the actual publishing bit.

* https://github.com/eli-schwartz/pkgbuilds
* ...
