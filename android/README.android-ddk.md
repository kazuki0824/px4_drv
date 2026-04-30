# Android/Kleaf DDK layout for px4_drv

This archive is a minimal source tree for building `px4_drv.ko` with
ACK/Kleaf `kernel_module`.

It intentionally keeps only:

- `BUILD.bazel`
- top-level `Kbuild`
- top-level `Makefile`
- `driver/*.c`
- `driver/*.h`
- `include/**/*.h`
- license/readme files

It intentionally removes:

- `.git`
- `.github`
- `.vscode`
- DKMS / Debian packaging
- firmware tooling
- Windows USB files
- nested `driver/BUILD.bazel`

The Android product still needs firmware handling separately. If the product
uses `etc/it930x-firmware.bin`, copy it from the upstream px4_drv repository
into the product firmware path separately; it is not needed to compile
`px4_drv.ko`.

Build target when staged inside ACK root:

```text
//local_modules/px4_drv:px4_drv
```
