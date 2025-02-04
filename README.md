# Ansible Collection - pokerops.crowdstrike

This collection provides Ansible playbooks for managing CrowdStrike Falcon agent deployments.

## Playbooks

### Deploy Playbook
The deploy playbook (`playbooks/deploy.yml`) performs the following operations in sequence:
1. Sets Falcon defaults
2. Validates installation parameters
3. Creates Falcon host group
4. Deploys Falcon agent to target hosts

### Destroy Playbook
The destroy playbook (`playbooks/destroy.yml`) performs these operations in sequence:
1. Sets Falcon defaults
2. Validates parameters
3. Undeploys Falcon agent from hosts
4. Destroys Falcon host group

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

## Usage

1. Configure your CrowdStrike API credentials
2. Set any required parameters in your playbook variables
3. Run the deploy playbook:
   ```bash
   ansible-playbook playbooks/deploy.yml
   ```
4. To remove the agent, run the destroy playbook:
   ```bash
   ansible-playbook playbooks/destroy.yml
   ```

## Requirements

- Ansible 2.9 or higher
- Valid CrowdStrike API credentials
- Target hosts must meet CrowdStrike Falcon system requirements
