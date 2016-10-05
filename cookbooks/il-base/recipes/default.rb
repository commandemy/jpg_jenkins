#
# Cookbook Name:: chef_base
# Recipe:: default
#
# Copyright (C) 2014 Edmund Haselwanter
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe 'chef-sugar' if node['base']['include']['chef-sugar']

include_recipe "apt" if debian? && node['base']['include']['apt']
include_recipe "ubuntu" if ubuntu? && node['base']['include']['ubuntu']

include_recipe "build-essential" if node['base']['include']['build_essential']
include_recipe "ntp" if node['base']['include']['ntp']

include_recipe "chef-client::delete_validation"
include_recipe "chef-client" if node['base']['include']['chef-client']
include_recipe "omnibus_updater" if node['base']['include']['omnibus-updater']

include_recipe 'il-base::simple_report_handler' if node['base']['include']['simple_report_handler']

if node['base']['include']['hipchat_handler']

  # needed to get it installed at compiletime
  node.set['build-essential']['compile_time'] = true
  include_recipe "build-essential"
  include_recipe "hipchat::handler"

end

if node['base']['include']['slack_handler']

  # needed to get it installed at compiletime
  node.set['build-essential']['compile_time'] = true
  include_recipe "build-essential"
  include_recipe "slack_handler::default"

end

# https://github.com/opscode-cookbooks/vim
include_recipe "vim"

# https://github.com/opscode-cookbooks/tmux
node.normal['tmux']['session_opts']['prefix'] = 'C-b'
include_recipe 'tmux'

include_recipe "il-base::motd" if node['base']['include']['motd']
include_recipe "il-base::operation_tools" if node['base']['include']['operation_tools']
