set allow-duplicate-variables := true

import '.devbox/virtenv/pokerops.ansible-utils.molecule/justfile'

MOLECULE_SCENARIO := 'install'
MOLECULE_KVM_DISTRO := 'noble'
