#!/bin/bash

# 定义要修改的文件夹路径
folder_path="/www/server/web_conf/nginx/proxy"

old_text="47.79.89.238"
new_text="209.141.33.31"

# 遍历文件夹内的所有文本文件
find "$folder_path" -type f -name "*.*" | while read file; do
  if [ -f "$file" ]; then
    # 在这里添加你想要的修改操作
    # 例如，将文件中的所有 "old_text" 替换为 "new_text"
    sed -i "s/$old_text/$new_text/g" "$file"
  fi
done
