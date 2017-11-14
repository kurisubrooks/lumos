# Install Fonts
cp -R ./fonts ~/.fonts/
fc-cache -f -v

# Install GTK Theme
cp -R ./gtk ~/.themes/

# Set GTK Theme
gsettings set org.gnome.desktop.interface gtk-theme "Lumos"
gsettings set org.gnome.desktop.interface icon-theme "Paper"

# Set GNOME Shell Theme
gsettings set org.gnome.desktop.wm.preferences theme "Lumos"
gsettings set org.gnome.shell.extensions.user-theme name "Lumos"

# Set GNOME Colour Scheme
#gsettings set org.gnome.desktop.interface gtk-color-scheme "bg_color:#e9efe9;fg_color:#444444;base_color:#ffffff;text_color:#333333;selected_bg_color:#6666cc;selected_fg_color:#eeeeee;tooltip_bg_color:#222222;tooltip_fg_color:#dfcfcf;link_color:#cc0099;"

# GNOME Shell Settings
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface cursor-theme "DMZ-White"
gsettings set org.gnome.desktop.interface document-font-name "Sans 10"
gsettings set org.gnome.desktop.interface font-name "Roboto 10"
gsettings set org.gnome.desktop.interface monospace-font-name "Roboto Mono 11"
gsettings set org.gnome.nautilus.desktop font "Roboto 10"
gsettings set org.gnome.desktop.wm.preferences titlebar-font "Rubik 10"
gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false

# Font Display Settings
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting "slight"
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "grayscale"

# screen lock (screen off: 10 minutes, screen lock: 15 minutes)
gsettings set org.gnome.settings-daemon.plugins.power sleep-display-ac 600
gsettings set org.gnome.settings-daemon.plugins.power sleep-display-battery 600
gsettings set org.gnome.desktop.session idle-delay 600
gsettings set org.gnome.desktop.screensaver idle-activation-enabled "true"
gsettings set org.gnome.desktop.screensaver lock-enabled "true"
gsettings set org.gnome.desktop.screensaver lock-delay 900

# Nautilus Settings
gsettings set org.gnome.nautilus.preferences sort-directories-first true
