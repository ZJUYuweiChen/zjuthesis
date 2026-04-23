#!/bin/bash
set -e

WORKSPACE=${WORKSPACE:-/workspace}
USERNAME=zjuer
GROUPNAME=zjuer

cd "$WORKSPACE"

# Get host UID/GID from the workspace mount
HOST_UID=$(stat -c "%u" .)
HOST_GID=$(stat -c "%g" .)
CURRENT_UID=$(id -u "$USERNAME" 2>/dev/null || echo "")
CURRENT_GID=$(id -g "$GROUPNAME" 2>/dev/null || echo "")

# If workspace is owned by root, just run as root
if [ "$HOST_UID" = "0" ] && [ "$HOST_GID" = "0" ]; then
    exec "$@"
fi

# If IDs already match, just run
if [ "$CURRENT_UID:$CURRENT_GID" = "$HOST_UID:$HOST_GID" ]; then
    exec gosu "$USERNAME" "$@"
fi

# Fix UID/GID conflicts: if the target UID/GID is already taken by another user/group,
# reassign that user/group to a temporary ID first.
EXISTING_UID_USER=$(getent passwd "$HOST_UID" | cut -d: -f1 || true)
if [ -n "$EXISTING_UID_USER" ] && [ "$EXISTING_UID_USER" != "$USERNAME" ]; then
    usermod -u 99999 "$EXISTING_UID_USER" 2>/dev/null || true
fi

EXISTING_GID_GROUP=$(getent group "$HOST_GID" | cut -d: -f1 || true)
if [ -n "$EXISTING_GID_GROUP" ] && [ "$EXISTING_GID_GROUP" != "$GROUPNAME" ]; then
    groupmod -g 99999 "$EXISTING_GID_GROUP" 2>/dev/null || true
fi

# Now adjust our target user/group
usermod -u "$HOST_UID" "$USERNAME" 2>/dev/null || true
groupmod -g "$HOST_GID" "$GROUPNAME" 2>/dev/null || true

# Fix home directory ownership
chown -R "${USERNAME}:${GROUPNAME}" "/home/${USERNAME}" 2>/dev/null || true

exec gosu "$USERNAME" "$@"
