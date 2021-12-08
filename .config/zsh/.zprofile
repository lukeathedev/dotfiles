if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx > /dev/null 2>&1
  # exec sway --my-next-gpu-wont-be-nvidia
fi
