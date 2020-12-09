# �� ���� �в��� Laravel ��Ŀ

### ��װ�������
```shell
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
```
### ��װ LNMP
- ��װ��֮��`MySQL`��`NGINX`��`PHP`���������°汾
- ��װ PHP�� չ��`fileinfo`��`opcache`
### ��װ nodejs
```shell
# ��װ nodejs

# ǰ�������鿴���°汾���� 12.13.1
# ���عٷ���װ��
wget -c https://npm.taobao.org/mirrors/node/v14.9.0/node-v14.9.0-linux-arm64.tar.xz

# ��ѹ��
tar -xvf node-v14.9.0-linux-arm64.tar.xz

# ������
mv node-v14.9.0-linux-arm64 nodejs

# ���������ӣ����� /usr/local/bin �ļ�����
ln -s ��װĿ¼/nodejs/bin/node /usr/local/bin/node
ln -s ��װĿ¼/nodejs/bin/npm /usr/local/bin/npm

# �鿴�汾
node -v
npm -v
```
```shell
# ��װ yarn
npm install yarn -g

# ��������
ln -s /www/server/nodejs/bin/yarn /usr/local/bin/yarn

# �鿴�汾
yarn -v
```
```shell
# ��װ cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org

# ��������
ln -s /www/server/nodejs/bin/cnpm /usr/local/bin/cnpm

# �鿴�汾
cnpm -v
```
```shell
# ɾ����װ��
rm node-v12.13.1-linux-x64.tar.xz
```
### ��װ Git

```shell
# �Ƴ����� Git
yum remove git

# ��װ����
sudo yum groupinstall "Development Tools"
sudo yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel

# �鿴���°汾
https://github.com/git/git/releases

# ��װ���°汾
wget https://github.com/git/git/archive/v2.24.0.tar.gz

# ��ѹ
tar xvf v2.24.0.tar.gz

# ���� git �ļ���
cd git-2.24.0

# ����ǰ���
make configure
./configure --prefix=/usr/local

# ��װ
make install
```
### ��װ��Ŀ
```shell
# ��¡��Ŀ
git clone ��Ŀ��ַ

# ��װǰ������
yarn install

# ��װ�������
# ע�⣺�ڱ��� PHP ��������ɾ�����½��ú�����putenv��proc_open��symlink
# ���� composer ���ﾵ��
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
composer install

# ���� .env �ļ�
cp .env.example .env

# ���ɼ��� key
php artisan key:generate

# ���� jwt ���� key
php artisan jwt:secret

# ���� storage Ŀ¼Ȩ��
chmod -R 777 storage
chmod -R 777 bootstrap/cache

# ����������
php artisan storage:link

# �����Ŀ
npm run prod
```
### FAQ��

- �������˿ں���������ô��

  ```shell
  # �޸� port.pl �еĶ˿�
  vi /www/server/panel/data/port.pl
  
  # �������
  /etc/init.d/bt restart
  ```
  
- ���� nginx 404
�޸�վ�����ã�����α��̬Ϊ laravel 5

- Win10 docker ���·������ڴ�֮��, �����޷�����
����windows�� docker û����ȫ���������µ�, �������

### ��¼һ��

### ��װ JDK��

