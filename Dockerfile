FROM amd64/ubuntu:20.04

ENV TZ=Europe/Rome
ENV DEBIAN_FRONTEND=noninteractive

# Set a non-root UID for security
ARG UID=1000

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        gcc-multilib \
        git \
        nano \
        htop \
        wget \
        sudo \
        python3 \
        python3-pip \
        rsyslog \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/local/bin

# Download and install sis
RUN wget -O sis.deb https://github.com/JackHack96/logic-synthesis/releases/download/1.3.6/sis_1.3.6-1_amd64.deb && \
    dpkg -i sis.deb && \
    rm sis.deb

# Install Python packages
RUN pip3 install \
            siswrapper==1.2.2 \
            prompt-toolkit==3.0.22 \
            certifi==2021.10.8 \
            blifparser==1.0.0 \
            graphviz==0.17 \
            blif2graph==1.0.0

# Install bettersis sudo snap install bettersis
RUN wget https://github.com/mario33881/betterSIS/releases/download/1.2.1/bettersis.deb && \
    dpkg -i bettersis.deb && \
    rm bettersis.deb

# Set environment variables
RUN echo "export BSIS_HISTORY_ENABLED=true" >> /root/.bashrc

# Set user UID
RUN useradd -m -s /bin/bash -u "$UID" dockeruser


ENV NC='\033[0m' 
ENV GREEN='\033[0;32m'

# create a welcome message for the user
RUN echo "echo \"\n\n${GREEN}Sei in Ubuntu 20.04 LTS AMD64 Come fossi nel terminale del PC in lab. Delta! Ecco le tue informazioni:\n\n- Nome utente: dockeruser\n- Home: /home/dockeruser\n- Cartella Sincronizzata per i BLIF: /home/dockeruser/esercizio-sis\n- SIS: 1.3.6\n- BSIS: 1.2.1\n- OS: Ubuntu 20.04 LTS amd64\nNon preoccuparti se ci saranno alcuni errori con bsis, il tool funziona comunque!${NC}\n\n\"" \
    >> /home/dockeruser/.bashrc

# Switch to non-root user
USER dockeruser

# Make esercizio-sis directory
RUN mkdir -p /home/dockeruser/esercizio-sis
WORKDIR /home/dockeruser/esercizio-sis

# Set the entry point command if necessary
CMD ["/bin/bash"]