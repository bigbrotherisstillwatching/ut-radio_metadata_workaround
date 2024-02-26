#! /bin/bash

pactl set-default-sink sink.primary_output

oldsink=$(head -1 /home/phablet/.config/radio.s710/radio.s710.oldsink.txt)
pactl unload-module $oldsink

pactl load-module module-ladspa-sink sink_name=equalizer sink_master=sink.primary_output plugin=/opt/click.ubuntu.com/radio.s710/1.4.5/lib/caps.so label=Eq10X2 control=$(sed -n '3p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '5p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '6p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '7p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '8p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '9p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '10p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '11p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '12p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//'),$(sed -n '4p' /home/phablet/.config/radio.s710/radio.s710.conf | sed 's/.*[=] *//') > /home/phablet/.config/radio.s710/radio.s710.oldsink.txt

pactl set-default-sink equalizer
