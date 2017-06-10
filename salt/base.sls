apt-update:
    cmd.run:
        - name: "apt-get update"

apt-upgrade:
    cmd.run:
        - name: "apt-get -y upgrade"

base-packages:
    pkg.installed:
        - names:
            - build-essential
