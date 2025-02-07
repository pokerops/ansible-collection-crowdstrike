# Ansible Collection - pokerops.crowdstrike

[![Build Status](https://github.com/nephelaiio/ansible-collection-libvirt/actions/workflows/libvirt.yml/badge.svg)](https://github.com/nephelaiio/ansible-collection-libvirt/actions/wofklows/libvirt.yml)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-nephelaiio.libvirt-blue.svg)](https://galaxy.ansible.com/ui/repo/published/nephelaiio/libvirt/)

An opinionated [ansible collection](https://galaxy.ansible.com/ui/repo/published/pokerops/crowdstrike/) for managing [Crowdstrike Falcon](https://www.crowdstrike.com/platform/) deployments.

## Requirements

- Ansible 2.9 or higher
- Target hosts must meet CrowdStrike Falcon system requirements

## Collection hostgroups

| Hostgroup   | Description               |
| :---------- | ------------------------- |
| crowdstrike | Target Crowdstrike agents |

## Collection playbooks

- pokerops.crowdstrike.deploy: Create Falcon hostgroup and deploy Falcon agents to target hosts
- pokerops.crowdstrike.destroy: Remove Falcon agents from target hosts and destroy Falcon hostgroup

## Configuration Parameters

The following parameters control the behavior of the collection playbooks:

### API Settings

| Parameter                  | Description                        | Default                     |
| -------------------------- | ---------------------------------- | --------------------------- |
| `falcon_api_base`          | Base URL for CrowdStrike API       | https://api.crowdstrike.com |
| `falcon_api_page_size`     | Number of items per API page       | 50                          |
| `falcon_api_redirect`      | Allow API redirects                | true                        |
| `falcon_api_poll_interval` | Seconds between API retry attempts | 60                          |
| `falcon_api_poll_retries`  | Maximum number of API retries      | 10                          |

### Agent Settings

| Parameter                        | Description                           | Default |
| -------------------------------- | ------------------------------------- | ------- |
| `falcon_host_state`              | Desired state of Falcon agent         | present |
| `falcon_agent_version_decrement` | Version offset for agent installation | 2       |

### Group Settings

| Parameter             | Description                  | Default |
| --------------------- | ---------------------------- | ------- |
| `falcon_group_state`  | Desired state of host groups | present |
| `falcon_group_manage` | Enable state management      | true    |

## Testing

This Collection is tested against the following host OS:

- Ubuntu Noble

Collection is tested against the following guest OS:

- Ubuntu Noble
- Ubuntu Jammy
- Debian Bookworm
- Rocky Linux 9

You can test the collection directly from sources using command `make test`

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
