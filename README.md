# PulseAudio shell scripts

These shell scripts handle some basic functionality such as increasing and decreasing the volume for the PulseAudio sound system and are intended to be used via keyboard shortcuts (for Linux window managers where such functionality is not built-in).


#### pulseaudio\_increase\_output\_volume.sh
- increases volume by 5%
- on the current output only, i.e. volume on headphones and speakers are controlled separately

#### pulseaudio\_decrease\_output\_volume.sh
- decreases volume by 5%
- on the current output only, i.e. volume on headphones and speakers are controlled separately

#### pulseaudio\_toggle\_mute.sh
- mutes/unmutes the current output, i.e. headphones and speakers are muted separately

#### pulseaudio\_toggle\_mute\_all.sh
- mutes/unmutes all outputs, i.e. headphones and speakers are muted together
- this will likely be the preferred option as it is more intuitive

#### pulseaudio\_toggle\_output.sh
- toggles output, e.g. switches between audio going to headphones or speakers
- note that changing the output sink through the command line interface can only take effect if [stream target device reading](https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/DefaultDevice/) is disabled which can be achieved by editing the corresponding line in `/etc/pulse/default.pa` to ```load-module module-stream-restore restore_device=false```

Try these out on the command line first to confirm that they work on your system before adding them as keyboard shortcuts. Setup of shortcut bindings will depend on your window manager of choice.
