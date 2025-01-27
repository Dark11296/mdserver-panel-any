#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:/opt/homebrew/bin
export PATH
old_text="209.141.33.31"
new_text="47.79.89.238"
folder_path="/www/server/web_conf/nginx/proxy"
find "$folder_path" -type f -name "*.*" | while read file; do
  if [ -f "$file" ]; then
    sed -i "s/$old_text/$new_text/g" "$file"
  fi
done
