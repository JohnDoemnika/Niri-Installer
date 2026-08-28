echo "Niri Auto installer BETA V.0"
echo "____________________________"
read -p "Do you want to start the script ? [y/n] : " start
if [ "$start" = "y" ]; then
    echo "Installing niri, noctalia and git..."
    sudo pacman -S noctalia niri git alacritty
    echo "Cloning the config..."
    git clone https://github.com/JohnDoemnika/niri-config.git
    echo "copying the config..."
    mkdir ~/.config/niri
    cp -r niri-config ~/.config/niri
    echo "enabling sddm..."
    sudo systemctl enable sddm
    echo "the installation is done.
    ___\___\___\___\___\___\_"
    read -p "Do you want to reboot your computer ? [y/n]" rebootchc
    if [ "$rebootchc" = "y" ]; then
    echo "rebooting.  3"
    sleep 1
    echo "rebooting.. 2"
    sleep 1
    echo "rebooting...1"
    sleep 1
    sudo reboot
    else
    exit
    fi
else
exit
fi
