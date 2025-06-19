#!/bin/bash

# 获取用户输入的文章路径（如 diary/20250602）
read -p "请输入文章路径（例如: diary/20250602）: " post_path

# 获取文章类型（如 daily-todo），默认用 default 模板
read -p "请输入文章模板 kind（默认: default）: " kind
kind=${kind:-default}

# 创建新文章
hugo new --kind "$kind" "content/$post_path/index.md"

# 可选：打开编辑器（VSCode）
code "content/$post_path/index.md"

# Git 操作
read -p "是否现在提交并推送 Git？(y/n): " push_now
if [[ "$push_now" == "y" ]]; then
  git add .
  git commit -m "Add new post: $post_path"
  git push
fi
