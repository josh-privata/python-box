python-ppa:
    pkgrepo.managed:
        - ppa: fkrull/deadsnakes

python-packages:
    pkg.installed:
        - names:
            - python3.6
            - python3.6-dev
            - python3.6-venv

pip-get-pip:
    cmd.run:
        - name: "curl https://bootstrap.pypa.io/get-pip.py | python3.6 -"
