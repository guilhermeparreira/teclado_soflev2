qmk json2c ~/Downloads/v2_2025-05-20.json -o /keymap.c
#!/bin/bash
qmk compile -kb sofle/rev1 -km "$(pwd)"
qmk flash -kb sofle/rev1 -km "$(pwd)"



## It works
qmk json2c ~/Downloads/v2_2025-05-20.json -o ~/qmk_firmware/keyboards/sofle/keymaps/personal/keymap.c
cd ~/qmk_firmware
qmk flash -kb sofle/rev1 -km personal