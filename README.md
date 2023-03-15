# InvokeAI: A Stable Diffusion Toolkit

This is a fork of InvokeAI for running it with a couple of simple docker commands.

![canvas preview](https://github.com/invoke-ai/InvokeAI/raw/main/docs/assets/canvas_preview.png)

## Hardware Requirements

InvokeAI is supported across Linux, Windows and macOS. Linux
users can use either an Nvidia-based card (with CUDA support) or an
AMD card (using the ROCm driver).

### System

You will need one of the following:

- An NVIDIA-based graphics card with 4 GB or more VRAM memory.
- An Apple computer with an M1 chip.
- An AMD-based graphics card with 4GB or more VRAM memory. (Linux only)

### Memory

- At least 12 GB Main Memory RAM.

### Disk

- At least 12 GB of free disk space for the machine learning model, Python, and all its dependencies.

### Prerequisites

Install [Docker](https://github.com/santisbon/guides#docker) and [nvidia-docker-toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
this can be done from within this repo with the terminal command (Ubuntu 22.04 Jammy):
```bash
make
```

The make commands runs `make docker` and `make docker-nvidia`, for details see: [makefile](https://github.com/SaberD/InvokeAI-docker/blob/main/makefile)

Get a Huggingface-Token you will need an Account on
[huggingface.co](https://huggingface.co/join).

After you succesfully registered your account, go to [huggingface.co/settings/tokens](https://huggingface.co/settings/tokens), 
create a token and copy it, since you will need in for the next step.

Paste the token into the file [.env.example](.env.example) file and rename the file to just `.env`.


## Ready to run
then your are ready to run the container.
use the terminal command:
```bash
docker compose up -d
```