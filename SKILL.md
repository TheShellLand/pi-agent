---
name: pi-installation
description: Provide instructions for setting up and running Pi via Docker or direct local installation. Use when the user needs help starting or installing the environment.
---

# Pi Installation Instructions

This repository provides tools to run and interact with Pi through multiple interfaces. Below are the instructions for setting up and running Pi using either Docker or a direct local installation.

## Running Pi via Docker

You can run Pi using Docker by utilizing the provided scripts. 

### Direct Execution
The execution scripts (e.g., `$docker`, `$loop`, etc.) can be executed directly from their respective paths within the project structure.

### Installation as System Binaries
Alternatively, you can install these binaries into your system's bin path for easier access globally. Use the following script:

```bash
./install/install-docker.sh
```

## Building Images

Depending on your specific needs, there are different scripts for building the project containers:

| Script | Purpose | References / Details |
|--------|---------|----------------------|
| `build.sh` | Build only the Pi Coding Agent image. | N/A |
| `build-antsable.sh` | Build with Ansible and install environment components via [readyup-agents.yml](https://github.com/TheShellLand/antsable/blob/master/playbooks/readyup-agents.yml) using roles from [Debian_agent](https://github.com/TheShellLand/antsable/blob/master/playbooks/roles/readyup/tasks/Debian-agent.yml). | Ansible Playbook |
| `build-python.sh` | Build including all Python package requirements for the project architecture. | Based on https://github.com/TheShellLand/automonisaur |
| `build-all.sh` | Builds every image required to build and run antsable in entirety. | Full Suite |

## Running Pi Directly (Local Installation)

For a direct shell installation where the environment is set up locally without a container.

### Setup
To install and configure the local runtime, execute:

```bash
./install/install-local-always.sh
```

### Usage
Once installed via the method above, you can run Pi directly from your terminal by typing:

```bash
pi
```
