
# 使用步骤

下载仓库后，进入仓库目录然后执行：

初始设置

```sh
# 先创建相关文件并给予权限
chmod +x backup.sh restore.sh
# 克隆源代码
git clone https://github.com/lizhipay/acg-faka.git acg-faka

# 或者克隆我的版本
git clone https://github.com/luochuanyuewu/acg-faka.git acg-faka

# 移除源码git
rm -rf acg-faka/.git

git add acg-faka 

git commit -m "update src"

# 给权限
chmod -R 777 acg-faka

# 复制环境变量文件然后进行修改
cp .env.sample .env

# 运行
docker compose up -d --build

```

# 更新

首次设置好后，切换到prod分支进行安装使用。

更新时，再克隆一个本仓库（main分支）作为临时仓库

然后在acg-faka下更新最新源码，并提交。

在非临时仓库中，fetch main分支的变更，并合并到prod分支，即可完成更新。

确保所有的修改都在主分支，包括源码更新也在主分支。

Prod分支包含了实际运行时的源码+资产。

# 注意
当前版本:1.17
