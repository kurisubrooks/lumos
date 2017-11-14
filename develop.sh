# Install Dev Libs
echo "Installing Pre-requisites"
sudo apt install libgtk-3-dev git build-essential -y

echo "Enabling GTK+ Inspector"
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true