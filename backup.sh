#!/bin/bash

# 备份目录
BACKUP_DIR="./backup"

# 创建备份目录
mkdir -p $BACKUP_DIR

# 压缩并备份 data 文件夹
tar czf $BACKUP_DIR/data.tar.gz -C ./ data

# 压缩并备份 cache 文件夹
tar czf $BACKUP_DIR/cache.tar.gz -C ./ cache

echo "备份完成。备份文件保存在 $BACKUP_DIR 目录中。"
