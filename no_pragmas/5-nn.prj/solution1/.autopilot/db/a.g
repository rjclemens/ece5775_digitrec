#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rjc422/ece5775_digitrec/5-nn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
