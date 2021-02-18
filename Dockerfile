FROM slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Add user so that container does not run as root 
RUN useradd -m docker 
RUN echo "docker:test" | chpasswd 
RUN usermod -s /bin/bash docker 
RUN usermod -aG wheel docker 
ENV HOME /home/docker
