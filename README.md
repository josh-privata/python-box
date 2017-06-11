# python-box
Vagrant box for Python/Django development using Python 3.6.x. Also includes Postgres 9.5.x, Elasticsearch 5.4.x and Redis 3.0.x.

## Getting Started
- [Download and install Vagrant](https://www.vagrantup.com/downloads.html)
- [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Clone the repo
- `cd django-box`
- Run `vagrant up` to download and provision the Vagrant box. This step can take a little while so please hang tight.
- Run `vagrant ssh` to login once the box is up and running.

## Base Box
Based on Ubuntu 16.04 box from:

[https://atlas.hashicorp.com/bento/boxes/ubuntu-16.04](https://atlas.hashicorp.com/bento/boxes/ubuntu-16.04)

## Ubuntu Packages
- build-essential
- default-jre
- libpq-dev
- postgresql-9.5
- redis-server
- zsh

## External Apt Repo/PPA Packages
- elasticsearch
- python3.6
- python3.6-dev
- python3.6-venv

## Python Packages
- pip: 9.0.1

## Misc. Tools
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

## Work Directory Structure
The main work directory for Django/Python development is `/opt/work` and is structured as follows:

- `/opt/work`: Main work directory
  - `/opt/work/env`: All virtualenvs can be created here
    - `/opt/work/env/default`: A default (blank) virtualenv with no packages installed so you can populate it with the package versions of your choice
  - `/opt/work/src`: All your project source code directories can be stored here

## Shortcuts
### Switch to Work Directory
`cd ~WORK`

### Switch to Virtual Environments Directory
`cd ~ENV`

### Switch to Source Code Directory
`cd ~SRC`

### Tail Elasticsearch Logs
`elasticsearch-logs`

### Tail Postgres Logs
`postgres-logs`

### Tail Redis Logs
`redis-logs`

### Default Virtual Environment (No Packages Installed)
`activate-default` to activate

`deactivate` to deactivate

## Forwarded Ports
The following ports are forwarded to the host operating system so these services can be interacted with directly using your preferred clients, GUI or otherwise:

- 5432: PostgreSQL
- 6739: Redis
- 8000: Django
- 9200: Elasticsearch

## Synced Source Code Folder
The source code directory root is exported to the host operating system for your convenience.
