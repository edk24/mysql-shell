# mysql-shell
常用mysql数据库维护脚本


# 脚本

- `mysql.sh` 快速免密进入mysql-cli
- `buckup-db.sh` 快速备份数据库（buckup database）

# 环境变量

从`.env.example`复制模板为`.env`并修改配置，如果不想暴露密码，直接留空密码  每次数据库操作都重新输入密码


.env 模板
```
host=127.0.0.1 
user=root
pass=abc
port=3306
```
