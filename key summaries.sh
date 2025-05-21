# This script summarizes the keystrokes. so, I can design a better layout of my keyboard based on it

sudo apt install logkeys
sudo logkeys --start --output /tmp/keystroke.log
# Let it run for a while, then:
sudo logkeys --stop
cat /tmp/keystroke.log | fold -w1 | sort | uniq -c | sort -nr | head
