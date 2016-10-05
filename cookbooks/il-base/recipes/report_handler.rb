include_recipe 'chef_handler'
include_recipe 'chef_handler::json_file'

cookbook_file '/usr/local/sbin/chefreports' do
  user 'root'
  group 'root'
  mode 0755
end
