python-ppa:
    pkgrepo.managed:
        - ppa: fkrull/deadsnakes

python-packages:
    pkg.installed:
        - names:
            - python3.6
            - python3.6-dev
            - python3.6-venv
            - python-pip
            - python-pip-whl

pip-upgrade:
    cmd.run:
        - name: "/usr/bin/pip install --upgrade pip"

pip-get-pip:
    cmd.run:
        - name: "/usr/bin/curl https://bootstrap.pypa.io/get-pip.py | python3.6 -"
        - reload_modules: true
