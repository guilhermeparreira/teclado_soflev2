# Commands for Building QMK - First time

# Install qmk
sudo apt install git python3-pip python3-venv dfu-programmer dfu-util gcc-avr binutils-avr avr-libc
pip3 install qmk

# Do the setup
`qmk setup`
`qmk list-keyboard`
# sofle/rev1 is mine

# Create a new keymap
qmk new-keymap -kb sofle/rev2 -km personal

qmk compile -kb sofle/rev1 -km personal
qmk flash -kb sofle/rev1 -km personal

 
# Flashing after changing the layout in qmk online
cp ~/Downloads/sofle_rev1_layout_2025-05-19.hex ~/qmk_firmware/.build/sofle_rev1_default.hex
qmk flash -kb sofle/rev1 -km personal
