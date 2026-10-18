# Third-Party Notices

This project (`smolt`) incorporates or depends on the third-party
components listed below. Full license texts are in the `licenses/` directory.

---

## smolvm

- **Version:** <e.g. 1.18.1, or "CLI, any version installed by the user">
- **License:** Apache License 2.0
- **Source:** https://github.com/smol-machines/smolvm
- **Copyright:** Copyright 2024-2025 smolvm contributors

Licensed under the Apache License, Version 2.0. You may obtain a copy of the
License at: http://www.apache.org/licenses/LICENSE-2.0

<!-- TODO: review legal part of project -->
# for now next is under consideration
> it is needed only if i will distribute libs from smolvm that are bundled there
---

## libkrun

- **Version:** 1.15.1
- **License:** Apache License 2.0
- **Source:** https://github.com/containers/libkrun
- **Copyright:** The libkrun Authors

Licensed under the Apache License, Version 2.0. You may obtain a copy of the
License at: http://www.apache.org/licenses/LICENSE-2.0

---

## libkrunfw

- **Version:** 4.x
- **License:** LGPL-2.1-only (library), GPL-2.0-only (bundled Linux kernel)
- **Source:** https://github.com/containers/libkrunfw
- **Copyright:** The libkrunfw Authors

libkrunfw bundles the Linux kernel for use with libkrun.

### Source Code Availability

In compliance with LGPL-2.1 and GPL-2.0, the complete source code for
libkrunfw and the bundled Linux kernel is available at:

- libkrunfw: https://github.com/containers/libkrunfw
- Linux kernel (with patches):
  https://github.com/containers/libkrunfw/tree/main/patches

To obtain the exact source code corresponding to the bundled binary, check
out the version tag matching the library version from the repository above.
