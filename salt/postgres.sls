postgres-package:
    pkg.installed:
        - names:
            - postgresql-9.5
            - libpq-dev

postgresql.conf:
    file.managed:
       - name: /etc/postgresql/9.5/main/postgresql.conf
       - source: salt://files/postgres/postgresql.conf
       - user: postgres
       - group: postgres
       - mode: 0644

pg_hba.conf:
    file.managed:
       - name: /etc/postgresql/9.5/main/pg_hba.conf
       - source: salt://files/postgres/pg_hba.conf
       - user: postgres
       - group: postgres
       - mode: 0640

postgresql-restart:
    cmd.run:
        - name: "systemctl restart postgresql.service"
        - order: last
