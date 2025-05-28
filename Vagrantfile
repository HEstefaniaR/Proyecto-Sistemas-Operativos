Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.2.14"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 4
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y software-properties-common curl
    apt-add-repository --yes --update ppa:ansible/ansible
    apt-get install -y ansible
    ansible --version
  SHELL

  config.vm.provision "ansible_local" do |ansible|
  ansible.compatibility_mode = "2.0"
  ansible.playbook = "playbook.yml"
  ansible.inventory_path = "/vagrant/inventory"
  ansible.limit = "localhost"
end

end
