# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.vm.box_check_update = false
    config.vm.hostname = "django-box"

    # forwarded ports
    config.vm.network "forwarded_port", guest: 5432, host: 5432     # PostgreSQL
    config.vm.network "forwarded_port", guest: 6379, host: 6379     # Redis
    config.vm.network "forwarded_port", guest: 8000, host: 8000     # Django
    config.vm.network "forwarded_port", guest: 9200, host: 9200     # Elasticsearch

    # misc. network settings
    config.vm.network "private_network", ip: "192.168.33.10"

    # synced folders
    config.vm.synced_folder ".", "/vagrant", :disabled => true
    config.vm.synced_folder "salt/", "/srv/salt/"
    config.vm.synced_folder "src/", "/opt/work/src/"

    # virtualbox config
    config.vm.provider "virtualbox" do |vb|
        vb.name = "django-box"
        vb.cpus = 1
        vb.memory = "2048"
    end

    # salt provisioning
    config.vm.provision :salt do |salt|
        salt.masterless = true
        salt.minion_config = "salt/minion.local"
        salt.colorize = true
        salt.run_highstate = true
    end
end

