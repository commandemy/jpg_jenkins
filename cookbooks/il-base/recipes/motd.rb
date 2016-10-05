# motd.rb

template "/etc/motd.tail" do
  source "motd.tail.erb"
  group "root"
  owner "root"
  mode 00644
  backup 0
end
