
echo Adding the free RPM Fusion repositories
echo
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

echo Adding the non-free RPM Fusion repositories  
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
 
echo Installing multimedia codecs
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia -y

echo Installing non-free nVidia driver
sudo dnf install akmod-nvidia -y

echo Installing Brave /
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

echo Installing LibreWolf
sudo rpm --import https://keys.openpgp.org/vks/v1/by-fingerprint/034F7776EF5E0C613D2F7934D29FBD5F93C0CFC3
sudo dnf config-manager --add-repo https://rpm.librewolf.net -y
sudo dnf install librewolf -y

echo Installing neofetch
sudo dnf install neofetch -y

echo Installing Thunderbird
sudo dnf install thunderbird -y

echo Installing Spotify
flatpak install flathub com.spotify.Client -y

echo Installing htop
sudo dnf install htop -y

echo Installing zsh
sudo dnf install zsh -y

echo Installing fragments
sudo dnf install fragments -y

echo Installing steam
sudo dnf install steam -y

echo Installing lutris
sudo dnf install lutris -y

echo Installing Virtualization tools
sudo dnf install @virtualization -y

echo Installing openRGB
sudo dnf install openrgb -y
