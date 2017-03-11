#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}
GROUP_ID=${LOCAL_GROUP_ID:-${USER_ID}}

echo "Starting with UID : $USER_ID GID: $GROUP_ID"
groupadd -g $GROUP_ID user
useradd --shell /bin/bash -u $USER_ID -g $GROUP_ID -o -c "" -m user
export HOME=/home/user

exec /usr/sbin/gosu user "$@"
