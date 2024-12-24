#!/usr/bin/env bash

PATH_AC="/sys/class/power_supply/AC"
PATH_BATTERY_0="/sys/class/power_supply/BAT0"
PATH_BATTERY_1="/sys/class/power_supply/BAT1"

ac=0
battery_level_0=0
battery_level_1=0
battery_max_0=0
battery_max_1=0

# Check if AC power is connected
if [[ -f "$PATH_AC/online" ]]; then
  ac=$(cat "$PATH_AC/online")
fi

# Get battery 0 status
if [[ -f "$PATH_BATTERY_0/energy_now" ]]; then
  battery_level_0=$(cat "$PATH_BATTERY_0/energy_now")
fi

if [[ -f "$PATH_BATTERY_0/energy_full" ]]; then
  battery_max_0=$(cat "$PATH_BATTERY_0/energy_full")
fi

# Get battery 1 status
if [[ -f "$PATH_BATTERY_1/energy_now" ]]; then
  battery_level_1=$(cat "$PATH_BATTERY_1/energy_now")
fi

if [[ -f "$PATH_BATTERY_1/energy_full" ]]; then
  battery_max_1=$(cat "$PATH_BATTERY_1/energy_full")
fi

# Calculate total battery level and max
battery_level=$(("$battery_level_0 + $battery_level_1"))
battery_max=$(("$battery_max_0 + $battery_max_1"))

# Calculate battery percentage
battery_percent=$(("$battery_level * 100"))
battery_percent=$(("$battery_percent / $battery_max"))

# Font Awesome battery icons
battery_full=""
battery_three_quarters=""
battery_half=""
battery_quarter=""
battery_empty=""

# Check if AC is plugged in
if [[ "$ac" -eq 1 ]]; then
  icon="" # AC power icon
  if [[ "$battery_percent" -gt 97 ]]; then
    echo "$icon"
  else
    echo "$icon $battery_percent%"
  fi
else
  if [[ "$battery_percent" -gt 85 ]]; then
    icon="$battery_full" # Fully charged icon
  elif [[ "$battery_percent" -gt 60 ]]; then
    icon="$battery_three_quarters" # 75% or more
  elif [[ "$battery_percent" -gt 35 ]]; then
    icon="$battery_half" # 50% or more
  elif [[ "$battery_percent" -gt 10 ]]; then
    icon="$battery_quarter" # 25% or more
  else
    icon="$battery_empty" # Low battery
  fi

  echo "$icon $battery_percent%"
fi
