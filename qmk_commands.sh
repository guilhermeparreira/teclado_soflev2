# Commands for Building QMK - First time

# Install qmk
sudo apt install git python3-pip python3-venv dfu-programmer dfu-util gcc-avr binutils-avr avr-libc
pip3 install qmk

# Do the setup
`qmk setup`
`qmk list-keyboard`
# sofle/rev1 is mine


# It will builds the keyboard's default keymap, which -kb is /home/guilherme/qmk_firmware/keyboards/sofle/keymaps/default
qmk compile -kb sofle/rev1 -km default

############
# Step to build my own env
# keymap.c is the REAL keymap file that arduio understand
############
# First, config
qmk config user.keyboard=sofle/rev1
qmk config user.keymap=guilherme

####### Didn't use
# You can convert this file to a keymap.c using this command: 
qmk json2c sofle_rev1_layout_2025-05-20.json # And then the result of it, I would need to put in the folder
# Create a new keymap (I think)
qmk new-keymap -kb sofle/rev1 -km guilherme

####### I used.
# You can compile this keymap using this command: 
qmk compile sofle_rev1_layout_2025-05-20.json

qmk flash

coração
# Flashing after changing the layout in qmk online
cp ~/Downloads/sofle_rev1_layout_2025-05-19.hex ~/qmk_firmware/.build/sofle_rev1_default.hex
qmk flash -kb sofle/rev1 -km personal

# Command to flash
qmk flash -bl dfu -f ~/Downloads/sofle_rev1_layout_2025-05-20.hex
qmk flash -kb sofle/rev1 -bl dfu -f ~/Downloads/sofle_rev1_layout_2025-05-20.hex
