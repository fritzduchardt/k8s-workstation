# Ansible Workstation Setup

This project uses Ansible to automate the setup and configuration of development workstations. It is designed to provision a consistent environment with tools for Kubernetes, AI development, and general productivity on both x86_64 and ARM architectures.

## Overview

The repository contains a collection of Ansible playbooks and roles that handle everything from installing essential system packages to configuring a custom Zsh shell environment. The configuration is modular, allowing for the selective installation of toolsets using tags.

Key components include:

- **Playbooks**: Top-level files like `fritz-machine.yaml` orchestrate the application of roles to target machines. Utility playbooks for rebooting (`reboot.yaml`) and shutting down (`shutdown.yaml`) hosts are also included.
- **Inventory**: The `inventory/` directory defines the hosts to manage and sets variables for different groups (e.g., `arm`) and specific hosts.
- **Roles**: The `roles/` directory contains the core logic, broken down by function:
    - **`k8s/tools`**: Installs a comprehensive suite of Kubernetes and cloud-native CLI tools (kubectl, helm, k9s, trivy, etc.).
    - **`ai/tools`**: Installs AI-related tools like Ollama and Fabric.
    - **`productivity-tools/tools`**: Installs a wide range of general-purpose CLI utilities (fzf, ripgrep, bat, lazygit, etc.).
    - **`productivity-tools/oh-my-zsh`**: Configures a Zsh shell with Oh My Zsh and a custom plugin set.
    - **`ubuntu/*`**: Manages base system configuration for Ubuntu, including essential packages, network tools, and Docker.
- **Containerized Environment**: The `Dockerfile` provides a consistent environment for running the Ansible playbooks.
- **Automated Updates**: `renovate.json5` is configured to automatically manage and update the versions of the tools installed by the roles.

## Usage

1.  **Define Hosts**: Add your target machines to the `inventory/` files.
2.  **Set Variables**: Customize variables in `inventory/group_vars/` or `inventory/host_vars/` as needed. Create a `.pwd` file with the sudo password.
3.  **Run Playbook**: Execute the main playbook against your inventory. You can use tags to apply only specific parts of the configuration.

```bash
# Example: Run the full setup on a host from the raspberry inventory
ansible-playbook -i inventory/raspberry.yaml fritz-machine.yaml

# Example: Install only Kubernetes tools
ansible-playbook -i inventory/raspberry.yaml fritz-machine.yaml --tags "k8s"
```
