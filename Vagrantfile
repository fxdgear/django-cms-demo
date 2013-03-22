Vagrant::Config.run do |config|
  ## Chose your base box
  config.vm.box = "precise64"

  config.vm.forward_port 80, 8081

  ## For masterless, mount your salt file root
  config.vm.share_folder("django-cms-demo", "/home/vagrant/mysite.com/src/mysite", ".", :nfs => true)

  # Host-only network required to use NFS shared folders
  config.vm.network :hostonly, "2.3.4.10"

  config.vm.provision :salt do |salt|
    salt.run_highstate = false
    salt.minion_key = "salt/key/minion.pem"
    salt.minion_pub = "salt/key/minion.pub"
  end
end
