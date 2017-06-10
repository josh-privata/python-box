redis-package:
    pkg.installed:
        - names:
            - redis-server

redis.conf:
    file.managed:
       - name: /etc/redis/redis.conf
       - source: salt://files/redis/redis.conf
       - user: redis
       - group: redis
       - mode: 0640

redis-server-restart:
    cmd.run:
        - name: "systemctl restart redis-server.service"
        - order: last
