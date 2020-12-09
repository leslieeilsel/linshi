# 在 宝塔 中部署 Laravel 项目

### 安装宝塔面板
```shell
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
```
### 安装 LNMP
- 安装完之后将`MySQL`，`NGINX`，`PHP`更新至最新版本
- 安装 PHP扩 展，`fileinfo`，`opcache`
### 安装 nodejs
```shell
# 安装 nodejs

# 前往官网查看最新版本，如 12.13.1
# 下载官方安装包
wget -c https://npm.taobao.org/mirrors/node/v14.9.0/node-v14.9.0-linux-arm64.tar.xz

# 解压缩
tar -xvf node-v14.9.0-linux-arm64.tar.xz

# 重命名
mv node-v14.9.0-linux-arm64 nodejs

# 创建软连接，放在 /usr/local/bin 文件夹下
ln -s 安装目录/nodejs/bin/node /usr/local/bin/node
ln -s 安装目录/nodejs/bin/npm /usr/local/bin/npm

# 查看版本
node -v
npm -v
```
```shell
# 安装 yarn
npm install yarn -g

# 创建链接
ln -s /www/server/nodejs/bin/yarn /usr/local/bin/yarn

# 查看版本
yarn -v
```
```shell
# 安装 cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org

# 创建链接
ln -s /www/server/nodejs/bin/cnpm /usr/local/bin/cnpm

# 查看版本
cnpm -v
```
```shell
# 删除安装包
rm node-v12.13.1-linux-x64.tar.xz
```
### 重装 Git

```shell
# 移除已有 Git
yum remove git

# 安装依赖
sudo yum groupinstall "Development Tools"
sudo yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel

# 查看最新版本
https://github.com/git/git/releases

# 安装最新版本
wget https://github.com/git/git/archive/v2.24.0.tar.gz

# 解压
tar xvf v2.24.0.tar.gz

# 进入 git 文件夹
cd git-2.24.0

# 构建前检查
make configure
./configure --prefix=/usr/local

# 安装
make install
```
### 安装项目
```shell
# 克隆项目
git clone 项目地址

# 安装前端依赖
yarn install

# 安装后端依赖
# 注意：在宝塔 PHP 的设置中删除以下禁用函数，putenv，proc_open，symlink
# 设置 composer 阿里镜像
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
composer install

# 新增 .env 文件
cp .env.example .env

# 生成加密 key
php artisan key:generate

# 生成 jwt 加密 key
php artisan jwt:secret

# 设置 storage 目录权限
chmod -R 777 storage
chmod -R 777 bootstrap/cache

# 创建软连接
php artisan storage:link

# 打包项目
npm run prod
```
### FAQ：

- 宝塔面板端口号忘记了怎么办

  ```shell
  # 修改 port.pl 中的端口
  vi /www/server/panel/data/port.pl
  
  # 重启面板
  /etc/init.d/bt restart
  ```
  
- 宝塔 nginx 404
修改站点配置，配置伪静态为 laravel 5

- Win10 docker 重新分配了内存之后, 容器无法启动
这是windows下 docker 没有完全清理环境导致的, 重启解决

### 附录一：

### 安装 JDK：

