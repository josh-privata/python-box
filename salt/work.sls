/opt/work/env:
    file.directory:
        - user: {{ pillar['user'] }}
        - group: {{ pillar['group'] }}
        - file_mode: 0644
        - dir_mode: 0755
        - makedirs: True
        - recurse:
            - user
            - group
            - mode

/opt/work/src:
    file.directory:
        - user: {{ pillar['user'] }}
        - group: {{ pillar['group'] }}
        - file_mode: 0644
        - dir_mode: 0755
        - makedirs: True
        - recurse:
            - user
            - group
            - mode
