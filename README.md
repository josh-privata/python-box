# django-box
Vagrant box for Django development using Python 3.6.1. Also includes Postgres 9.5.6, Elasticsearch 5.4.0, Redis 3.0.6 and nginx 1.10.0.

## Base Box
Based on Ubuntu 16.04 available from:
[https://atlas.hashicorp.com/bento/boxes/ubuntu-16.04](https://atlas.hashicorp.com/bento/boxes/ubuntu-16.04)

## Ubuntu Packages
- build-essential
- default-jre
- exuberant-ctags
- libpq-dev
- nginx (1.10.0)
- postgresql-9.5 (9.5.6)
- redis-server (3.0.6)
- zsh

## External Apt Repo/PPA Packages
- elasticsearch (5.4.0)
- python3.6 (3.6.1)
- python3.6-venv

## Python Packages
- pip (9.0.1)

## Misc. Tools
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [vim-pydjango](https://github.com/yodiaditya/vim-pydjango)

## Getting Started
- [Download and install Vagrant](https://www.vagrantup.com/downloads.html)
- [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Clone the repo
- Run `vagrant up` to download and set up the custom box.
- Run `vagrant ssh` to login.

## Work Directory Structure
The main work directory for Django development is `/opt/work`

This directory is structured as follows:

- env: All virtualenvs can be created here
  - default: A blank default virtualenv with no packages installed
- src: All your projects source code directories can be stored here

## Shortcuts
### Work Directory
`cd ~WORK`

### Virtual Environments Directory
`cd ~ENV`

### Source Code Directory
`cd ~SRC`

### Default Virtual Environment (no packages installed)
`activate-default` to activate

`deactivate` to deactivate

## Forwarded Ports
The following ports are forwarded to the host operating system:

- 5432: PostgreSQL
- 6739: Redis
- 8000: Django
- 9200: Elasticsearch

## Synced Folders
The source code directory root is exported to the host operating system.

