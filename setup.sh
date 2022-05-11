#installing required packages
sudo apt install -y gnuradio gr-osmosdr python-pip python2-dev

#installing required pip modules
sudo pip install wheel ephem pyasn1 pyasn1-modules service_identity twisted txws six pyserial pathlib

#installing shinysdr
cd /home/pi
sudo git clone https://github.com/kpreid/shinysdr/
cd shinysdr
sudo python2 setup.py build
sudo python2 setup.py install
sudo shinysdr --create websdr

# sudo sed -i "s/\'osmo\'\, OsmoSDRDevice\(\'\'\)/\'osmo\'\, OsmoSDRDevice\(\'rtl\-sdr\'\)/" websdr/config.py
