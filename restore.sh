#!/bin/bash

# 备份目录
BACKUP_DIR="./backup"

# 解压并恢复 data 文件夹
tar xzf $BACKUP_DIR/data.tar.gz -C ./

# 解压并恢复 extensions 文件夹
tar xzf $BACKUP_DIR/acg-faka.tar.gz -C ./

echo "恢复完成。"
