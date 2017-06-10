java-package:
    pkg.installed:
        - name: default-jre

elasticsearch-repo:
    pkgrepo.managed:
        - name: "deb https://artifacts.elastic.co/packages/5.x/apt stable main"
        - file: /etc/apt/sources.list.d/elastic.list
        - keyid: D88E42B4
        - keyserver: pgp.mit.edu

elasticsearch-package:
    pkg.installed:
        - name: elasticsearch

elasticsearch.yml:
    file.managed:
        - name: /etc/elasticsearch/elasticsearch.yml
        - source: salt://files/elasticsearch/elasticsearch.yml
        - user: root
        - group: elasticsearch
        - mode: 0660

elasticsearch-service:
    cmd.script:
        - source: salt://files/elasticsearch/postinstall.sh
