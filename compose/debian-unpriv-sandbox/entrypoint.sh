#!/bin/bash
# This script launches bubblewrap to simulate a root environment inside a minimal Debian system.

echo "Launching bubblewrap sandbox..."
echo "Inside the bubblewrap environment, you will have effective UID 0."

exec bwrap \
  --bind /sandbox-root / \         # Use the minimal Debian root created by debootstrap.
  --dev /dev \                     # Provide /dev.
  --proc /proc \                   # Mount /proc.
  --unshare-user \                 # Create a new user namespace.
  --uid 0 \                        # Map the current user to UID 0 inside the namespace.
  --gid 0 \                        # Map the current group to GID 0 inside the namespace.
  /bin/bash

