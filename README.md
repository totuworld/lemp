# vagrant-ansible-lemp

Install LEMP stack on Ubuntu 14.04(LTS)

포함된 내용(What's included)
------

아래 같은 사항이 포함됩니다.

* Ubuntu 14.04 Trusty LTS
* Nginx 
* PHP 5.6 
* [MariaDB](https://mariadb.org/)
* PhpMyAdmin

필요사항(Requirements)
------

* Virtualbox >= 4.3.10 - [Install](https://www.virtualbox.org/wiki/Downloads)
* Vagrant >= 1.5.4 - [Install](http://www.vagrantup.com/downloads.html) • [Docs](https://docs.vagrantup.com/v2/)

설치방법(Installation)
------

1. 레포지토리를 다운받거나 클론(복제)한다.
2. 클론(복제)한 폴더로 이동하면 아래와 같은 폴더 구조를 확인할 수 있다.

```
.
├── README.md
├── startserver.bat
├── Vagrantfile
└── ansible
    ├── hosts
    ├── install_lemp.sh
    ├── lemp_install.yml
    ├── mariadb_install.yml
    ├── nginx_install.yml
    ├── php_install.yml
    ├── phpmyadmin.yml
    ├── roles
    │   ├── mariadb
    │   │   ├── handlers
    │   │   │   └── main.yml
    │   │   └── tasks
    │   │       ├── main.yml
    │   │       ├── packages.yml
    │   │       └── remove.yml
    │   ├── nginx
    │   │   ├── handlers
    │   │   │   └── main.yml
    │   │   └── tasks
    │   │       ├── main.yml
    │   │       ├── packages.yml
    │   │       └── remove.yml
    │   ├── php
    │   │   ├── handlers
    │   │   │   └── main.yml
    │   │   └── tasks
    │   │       └── main.yml
    │   └── phpmyadmin
    │       └── tasks
    │           └── main.yml
    └── templates
        ├── default
        ├── my-cnf.j2
        ├── php.ini
        └── www.conf
``` 

VM설치(Virtual Machine Setup)
------

* OSX : 터미널에서 `vagrant up` 입력 
* Windows : startserver.bat  파일 실행