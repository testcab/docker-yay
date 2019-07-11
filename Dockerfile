FROM archlinux/base
MAINTAINER test.cab <git@test.cab>

RUN pacman -Syu --needed --noconfirm \
  base-devel \
  # We use git to install yay; it's also a dependency of yay.
  git \
  # makepkg does not run as root
  sudo

# makepkg user and workdir
ARG user=makepkg
RUN useradd -m $user
RUN echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user
USER $user
WORKDIR /home/$user

# Install yay
RUN git clone https://aur.archlinux.org/yay.git \
  && cd yay \
  && makepkg -sri --needed --noconfirm \
  && cd \
  # Clean up
  && rm -rf .cache yay
