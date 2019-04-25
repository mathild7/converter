#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/hildeb47/proj/ECE1373_GhostSynth/mods/converter/converter/solution1/.autopilot/db/a.g.bc ${1+"$@"}
