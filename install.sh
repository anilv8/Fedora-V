
echo Adding the free RPM Fusion repositories
echo
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

echo Adding the non-free RPM Fusion repositories  
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
 
echo Installing multimedia codecs
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

echo Installing neofetch
sudo dnf install neofetch

echo Installing Thunderbird
sudo dnf install thunderbird

echo Installing non-free nVidia driver
sudo dnf install akmod-nvidia
