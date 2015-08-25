# vagrant-ansible-lemp

Install LEMP stack on Ubuntu 14.04(LTS)

포함된 내용(What's included)
------

기본 포함 사항

* Ubuntu 14.04 Trusty LTS
* Nginx 
* PHP 5.6 
* [MariaDB](https://mariadb.org/)
* PhpMyAdmin

옵션 사항

* Mongodb 3.0.6
* Redis 3.0.3

필요사항(Requirements)
------

* Virtualbox >= 4.3.10 - [Install](https://www.virtualbox.org/wiki/Downloads)
* Vagrant >= 1.5.4 - [Install](http://www.vagrantup.com/downloads.html) • [Docs](https://docs.vagrantup.com/v2/)

설치방법(Installation)
------

1. 레포지토리를 다운받거나 클론(복제)한다.
2. LEMP 외에 mongodb, redis가 필요하다면 `ansible/lemp_install.yml`파일의 roles: 부분에 추가한다.

```
  roles:
      - mariadb
      - php
      - nginx
      - phpmyadmin
      - mongodb
      - redis
```

VM설치(Virtual Machine Setup)
------

* OSX : 터미널에서 `vagrant up` 입력 
* Windows : startserver.bat  파일 실행


포트 포워딩 가이드(Port Forwarding Guides)
------

### localhost의 포트와 기본 연결된 포트

호스트 포트 | 게스트 포트 | 연결된 서비스
:---:|:---:|:---
8080|80|http
6306|3306|mariadb


### mongodb, redis 추가 시 포트 개방 방법

`Vagrantfile`의 port forwarding 부분을 찾아서 mongodb, redis 용 포트 포워딩의 주석을 제거 
