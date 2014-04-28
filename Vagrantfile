VAGRANTFILE_API_VERSION = "2"

MEMORY=384


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :mcollective_master01 do |mcollective_master01_config|
      mcollective_master01_config.vm.network :private_network, ip: "192.168.33.51"
      mcollective_master01_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
      mcollective_master01_config.vm.box  = "centos65"
      mcollective_master01_config.vm.host_name  = "mcollective-master01"
      mcollective_master01_config.vm.provision  :puppet do  |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "master.pp"
        puppet.module_path  = "puppet/modules"
      end
  end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :mcollective_server01 do |mcollective_server01_config|
      mcollective_server01_config.vm.network :private_network, ip: "192.168.33.52"
      mcollective_server01_config.vm.box  = "centos65"
      mcollective_server01_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
      mcollective_server01_config.vm.host_name  = "mcollective-server01"
      mcollective_server01_config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", MEMORY]
      end
      mcollective_server01_config.vm.provision  :puppet do  |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "server.pp"
        puppet.module_path  = "puppet/modules"
      end
  end
end


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :mcollective_server02 do |mcollective_server02_config|
      mcollective_server02_config.vm.network :private_network, ip: "192.168.33.53"
      mcollective_server02_config.vm.box  = "centos65"
      mcollective_server02_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
      mcollective_server02_config.vm.host_name  = "mcollective-server02"
      mcollective_server02_config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", MEMORY]
      end
      mcollective_server02_config.vm.provision  :puppet do  |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "server.pp"
        puppet.module_path  = "puppet/modules"
      end
  end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :mcollective_client01 do |mcollective_client01_config|
      mcollective_client01_config.vm.network :private_network, ip: "192.168.33.54"
      mcollective_client01_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
      mcollective_client01_config.vm.box  = "centos65"
      mcollective_client01_config.vm.host_name  = "mcollective-client01"
      mcollective_client01_config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", MEMORY]
      end
      mcollective_client01_config.vm.provision  :puppet do  |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "client.pp"
        puppet.module_path  = "puppet/modules"
      end
  end
end

