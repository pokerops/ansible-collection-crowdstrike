# Ansible Collection - pokerops.crowdstrike

[![Build Status](https://github.com/nephelaiio/ansible-collection-libvirt/actions/workflows/libvirt.yml/badge.svg)](https://github.com/nephelaiio/ansible-collection-libvirt/actions/wofklows/libvirt.yml)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-nephelaiio.libvirt-blue.svg)](https://galaxy.ansible.com/ui/repo/published/nephelaiio/libvirt/)

An opinionated [ansible collection](https://galaxy.ansible.com/ui/repo/published/pokerops/crowdstrike/) for managing [Crowdstrike Falcon](https://www.crowdstrike.com/platform/) deployments.

## Requirements

- Ansible 2.9 or higher
- Target hosts must meet CrowdStrike Falcon system requirements

## Collection hostgroups

| Hostgroup   | Default | Description               |
| :---------- | ------: | :------------------------ |
| crowdstrike |   'n/a' | Target Crowdstrike agents |

## Collection playbooks

- pokerops.crowdstrike.deploy: Create Falcon hostgroup and deploy Falcon agents to target hosts
- pokerops.crowdstrike.destroy: Remove Falcon agents from target hosts and destroy Falcon hostgroup

## Configuration Parameters

The following parameters can be configured (defaults shown):

### API Configuration

- `falcon_api_base`: Base URL for CrowdStrike API (default: https://api.crowdstrike.com)
- `falcon_api_page_size`: Number of items per API page (default: 50)
- `falcon_api_redirect`: Whether to allow API redirects (default: true)
- `falcon_api_poll_interval`: Interval in seconds between API retries (default: 60)
- `falcon_api_poll_retries`: Maximum number of API retry attempts (default: 10)

### Agent Configuration

- `falcon_host_state`: Desired state of the Falcon host agent (default: present)
- `falcon_agent_version_decrement`: Version decrement for agent installation (default: 2)

### Group Configuration

- `falcon_group_state`: Desired state of Falcon host groups (default: present)
- `falcon_group_update`: Whether to update existing groups (default: false)
- `falcon_group_tag`: Tag to assign to host group (defaults to group name)

## Testing

Collection is tested against the following host OS:

- Ubuntu

Collection is tested against the following guest OS:

- Ubuntu Noble
- Ubuntu Jammy
- Ubuntu Focal
- Debian Bookworm
- Alma Linux 9
- Rocky Linux 9

You can test the collection directly from sources using command `make test`

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
