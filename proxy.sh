#!/bin/bash
old_text="47.79.89.238"
new_text="47.76.86.207"
folder_path="/www/server/web_conf/nginx/proxy"
find "$folder_path" -type f -name "*.*" | while read file; do
  if [ -f "$file" ]; then
    sed -i "s/$old_text/$new_text/g" "$file"
  fi
done
systemctl stop openresty
systemctl start openresty
systemctl reload openresty
echo "ok"
