apt-update:
    cmd.run:
        - name: "/usr/bin/apt-get update"

base-packages:
    pkg.installed:
        - names:
            - build-essential
