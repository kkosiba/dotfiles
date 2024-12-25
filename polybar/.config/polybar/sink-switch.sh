#!/usr/bin/env bash

arg="${1:-}"
case "$arg" in
--speakers)
  pactl set-default-sink "alsa_output.pci-0000_00_1f.3.analog-stereo"
  echo "SPEAKERS"
  ;;
--headphones)
  pactl set-default-sink "bluez_output.E8_EE_CC_27_F0_E5.1"
  echo "HEADPHONES"
  ;;
*)
  # Show current sink
  [[ $(pactl get-default-sink) == "alsa_output.pci-0000_00_1f.3.analog-stereo" ]] && echo "SPEAKERS" || echo "HEADPHONES"
  ;;
esac
