#!/bin/bash
sed -i '/^### DATA ###$/q' wofi-emoji

curl https://raw.githubusercontent.com/muan/emojilib/main/dist/emoji-en-US.json \
  | jq  --raw-output '. | to_entries | .[] | .key + " " + (.value | join(" "))' \
  >> wofi-emoji
