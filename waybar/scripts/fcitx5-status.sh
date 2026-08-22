#!/bin/bash
if fcitx5-remote -n &>/dev/null; then
    STATUS=$(fcitx5-remote -n)
    echo "{\"text\": \"$STATUS\", \"tooltip\": \"Fcitx5: Active\"}"
else
    echo "{\"text\": \"OFF\", \"tooltip\": \"Fcitx5: Inactive\"}"
fi
