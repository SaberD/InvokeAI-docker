all: docker docker-nvidia

.PHONY: docker
docker:
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key --keyring /etc/apt/trusted.gpg.d/docker-apt-key.gpg add
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"
	sudo apt update
	sudo apt install -y docker-ce
	-sudo groupadd docker
	-sudo usermod -aG docker ${USER}
	sudo systemctl restart docker.socket
	sudo systemctl restart docker.service
	# if docker gives premission denied try to reboot

.PHONY: docker-nvidia
docker-nvidia:
	sudo wget https://nvidia.github.io/nvidia-container-runtime/gpgkey -O /etc/apt/trusted.gpg.d/nvidia-container-runtime.asc
	sudo curl -o /etc/apt/sources.list.d/nvidia-docker.list -s -L https://nvidia.github.io/nvidia-docker/ubuntu22.04/nvidia-docker.list
	sudo apt-get update
	sudo apt-get install -y nvidia-container-toolkit
	sudo nvidia-ctk runtime configure --runtime=docker
	sudo systemctl restart docker
