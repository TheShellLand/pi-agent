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

After running this script, the following executables will be available in `/usr/bin`:

| Command | Source Script | Description |
|---------|---------------|-------------|
| `pi-docker` | `$docker` | Primary Docker entry point |
| `pi-d` | `$docker` | Short docker command |
| `pi-loop` | `$loop` | Loop mode interface |
| `pi-web` | `$web` | Web interface |
| `pi-ro` | `$ro` | RO (Read Only) / specialized view |

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
