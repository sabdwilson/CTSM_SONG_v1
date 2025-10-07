#!/usr/bin/env bash
#
# Ansible managed

# Start clean
module purge

# Load the require modules
module load vscode

# Fluxbox app setup.
#
# Ansible managed

# Set working directory to home directory
cd "${HOME}"
# Create Fluxbox root or fluxbox will screw up; done in subshell to avoid
# mangling user umask.
(
umask 077
mkdir -p "${HOME}/.fluxbox"
)

# Launch Fluxbox Window Manager...
# Fluxbox likes to crash on occassion, make it persistent...
(
until fluxbox -display "${DISPLAY}.0" \
 -rc "/home/u8/sdwilson/ondemand/data/sys/dashboard/batch_connect/sys/UAz_vscode/output/188e0fd6-8b15-4d10-a8f4-f3e532aee160/fluxbox.rc"; do
    echo "Fluxbox crashed with exit code $?. Respawning..." >&2
    sleep 1
  done
) &

# Launch vscode
set -x
code --wait --no-sandbox --new-window

set +x
# This kludge attempts to deal with some apps exiting their foreground
# component  by waiting for all their processes owned by the current user
# to exit (looking at you vscode).  Note this will trip up if user has
# multiple vscode jobs on the same node...
echo "Starting spin wait for remaining user ${USER} \"code\" processes..."
while [ -n "$(pgrep -u ${USER} code)" ]; do
  sleep 2
done
echo "all ${USER} \"code\" processes gone."
#
#-end of script.fluxbox.erb.j2
