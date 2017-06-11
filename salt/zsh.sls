zsh-package:
    pkg.installed:
        - names:
            - zsh

change-shell:
    module.run:
        - name: user.chshell
        - m_name: {{ pillar['user'] }}
        - shell: /usr/bin/zsh

oh-my-zsh-git:
    git.latest:
        - name: https://github.com/robbyrussell/oh-my-zsh.git
        - rev: master
        - target: /home/{{ pillar['user'] }}/.oh-my-zsh
        - unless: "test -d /home/{{ pillar['user'] }}/.oh-my-zsh"

/home/{{ pillar['user'] }}/.oh-my-zsh:
    file.directory:
        - user: {{ pillar['user'] }}
        - group: {{ pillar['group'] }}
        - file_mode: 0644
        - dir_mode: 0755
        - recurse:
            - user
            - group
            - mode
        - require:
            - oh-my-zsh-git

.zshrc:
    file.managed:
        - name: /home/{{ pillar['user'] }}/.zshrc
        - source: salt://files/zsh/.zshrc
        - user: {{ pillar['user'] }}
        - group: {{ pillar['group'] }}
        - mode: 0644

/home/{{ pillar['user'] }}/.zshrc.d:
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
