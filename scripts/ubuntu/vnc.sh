sudo apt install -y \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server tigervnc-common \
    firefox vlc libreoffice 
echo "PasswordFile=/dev/null" > ~/.vnc/config
echo "Authentication=VncAuth" >> ~/.vnc/config
echo "Localhost=True" >> ~/.vnc/config
echo "startxfce4" >> ~/.vnc/xstartup
vncserver -localhost
