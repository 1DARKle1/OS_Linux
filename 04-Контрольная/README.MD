отчет:
снимок do-bileta-12 сделан до правок, сеть NAT
auditor имеет sudo только на find, ls и cat
скрипт 750, владелец root:auditor, umask 027
без root скрипт не работает, с root пишет список SUID
trap убирает временный файл даже при ошибке