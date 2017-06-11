Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.provision "shell", path: "prepare.sh"
  config.vm.provision "shell", path: "build.sh", privileged: false
end
