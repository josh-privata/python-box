vundle-git:
    git.latest:
        - name: https://github.com/VundleVim/Vundle.vim
        - rev: master
        - target: /home/{{ pillar['user'] }}/.vim/bundle/Vundle.vim
        - unless: "test -d /home/{{ pillar['user'] }}/.vim/bundle/Vundle.vim"

.vimrc:
    file.managed:
        - name: /home/{{ pillar['user'] }}/.vimrc
        - source: salt://files/vim/.vimrc
        - user: {{ pillar['user'] }}
        - group: {{ pillar['group'] }}
        - mode: 0644

/home/{{ pillar['user'] }}/.vim:
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
            - vundle-git

bundle-install:
    cmd.run:
        - name: "/usr/bin/vim +PluginInstall +qall"
        - runas: {{ pillar['user'] }}
