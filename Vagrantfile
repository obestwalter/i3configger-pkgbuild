Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.provision "shell", inline: <<-SHELL
    pacman -Syu --noconfirm
    pacman -S --noconfirm base-devel python python-setuptools
  SHELL
end
