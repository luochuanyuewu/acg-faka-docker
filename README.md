
# 使用步骤

下载仓库后，进入仓库目录然后执行：

```sh
git clone https://github.com/lizhipay/acg-faka.git acg-faka
#复制环境变量文件然后进行修改
cp .env.sample .env

mkdir cache backup

#运行
docker compose up -d --build
```

