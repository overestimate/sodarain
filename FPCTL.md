# fixing fileproviderctl
you just did part 1, and now you need to fix fileproviderctl. here's how on mac and using appveyor.

# with a mac
- copy `/usr/bin/fileproviderctl` from phone to your mac
- `gsed -i 's|/usr/local/bin/fileproviderctl_internal|/usr/local/bin/fileproviderctl_XXXXXXXX|g' fileproviderctl`
- copy back into place.

# without a mac (using appveyor)
- make a public repo on your user named `fpctlfixup`
- upload your `/usr/bin/fileproviderctl` to the repo
- upload `appveyor_fileproviderctl.yml` and rename to `appveyor.yml`
- open <appveyor.com>
- log in using github
- add a new project
- choose github as source
- find repo
- add it
- run a build
- download artifact
- copy onto device on top of `/usr/bin/fileproviderctl`
