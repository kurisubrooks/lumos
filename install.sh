#!/bin/bash

# Check for User-Themes Module
if [ ! -d "$HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com" ]; then
    echo "Installing GNOME User Themes Module"
    mkdir -p ~/.temp/
    wget -O ~/.temp/shell-extension-install https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/ubuntugnome/gnomeshell-extension-manage
    chmod +x ~/.temp/shell-extension-install
    ~/.temp/shell-extension-install --install --extension-id 19 &> /dev/null
    echo "GNOME User Themes Module installed successfully"
    echo "Restart your session before continuing with installation."
    exit
fi

# Install Fonts
echo "Installing Fonts..."
mkdir -p ~/.fonts/
cp -R ./fonts ~/.fonts/
fc-cache -f -v &> /dev/null

# Install GTK Theme
echo "Installing Themes..."
mkdir -p ~/.themes/Lumos/
cp -R ./gtk/* ~/.themes/Lumos/

# Set GTK Theme
gsettings set org.gnome.desktop.interface gtk-theme "Lumos"
#gsettings set org.gnome.desktop.interface icon-theme "Paper"

# Set GNOME Shell Theme
gsettings set org.gnome.desktop.wm.preferences theme "Lumos"
#gsettings set org.gnome.shell.extensions.user-theme name "Lumos"

# Set GNOME Colour Scheme
#gsettings set org.gnome.desktop.interface gtk-color-scheme "bg_color:#e9efe9;fg_color:#444444;base_color:#ffffff;text_color:#333333;selected_bg_color:#6666cc;selected_fg_color:#eeeeee;tooltip_bg_color:#222222;tooltip_fg_color:#dfcfcf;link_color:#cc0099;"

# GNOME Shell Settings
echo "Modifying Settings..."
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface cursor-theme "DMZ-White"
gsettings set org.gnome.desktop.interface document-font-name "Sans 10"
gsettings set org.gnome.desktop.interface font-name "Roboto 11"
gsettings set org.gnome.desktop.interface monospace-font-name "Roboto Mono 11"
gsettings set org.gnome.nautilus.desktop font "Roboto 11"
gsettings set org.gnome.desktop.wm.preferences titlebar-font "Rubik 11"
gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false

# Font Display Settings
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting "slight"
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "grayscale"

# Done
echo "Installation Complete"
