# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# RYZEN
#cpu_temperature=$(sensors -f k10temp-pci-00c3 | grep Tctl | awk -F'+' '{print $2}')
# INTEL
cpu_temperature=$(sensors -f coretemp-isa-0000 | grep Package | awk -F'+' '{print $2}' | awk -F' ' '{print $1}')
battery_percent=$(cat /sys/class/power_supply/BAT1/capacity)
audio_volume=$(pamixer --get-volume-human)
brightness_percent=$(light -G | awk -F'.' '{print $1}')

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M:%S")

# Get the Linux version but remove the "-1-ARCH" part
linux_version=$(uname -r | cut -d '-' -f1)

# Additional emojis and characters for the status bar:
# Electricity: ⚡ ↯ ⭍ 🔌
# Audio: 🔈 🔊 🎧 🎶 🎵 🎤
# Separators: \| ❘ ❙ ❚
# Misc: 🐧 💎 💻 💡 ⭐ 📁 ↑ ↓ ✉ ✅ ❎

echo Battery: $battery_percent% ❙ CPU: $cpu_temperature ❙ Volume: $audio_volume ❙ Brightness: $brightness_percent% ❙ $uptime_formatted ↑ $linux_version 🐧 $date_formatted
