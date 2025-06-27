## What

- some kind of tool to make iso images of all kinds of linux distros, with the
  power of nix
- like nix-vm-test/system-manager for bootable linux isos
- nix packages are optional, use nix like ansible here
  - need the nixos module system???

## TODO

- find best tools to make iso images
  - pycdlib, used by iso_create ansible community.general module
  - comes with cdrkit's genisoimage
  - cdrkit is an unmaintained fork of relicensed cdrtools whos author expired
    in 2021.
- nixos iso is made using xorriso which is from libburnia/libisoburn
- https://github.com/fossable/goldboot
