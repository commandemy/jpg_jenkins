#
# Cookbook Name:: chef_base
# Attribute:: default
#
# Copyright (C) 2015 Edmund Haselwanter
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

# Inlcude the [apt](https://github.com/opscode-cookbooks/apt) cookbook
default['base']['include']['apt'] = true

# Inlcude the [ubuntu](https://supermarket.chef.io/cookbooks/ubuntu) cookbook
default['base']['include']['ubuntu'] = true

# Include the [chef_client](https://github.com/opscode-cookbooks/chef-client) cookbook
default['base']['include']['chef-client'] = false

# Include the [omnibus_updater](https://supermarket.chef.io/cookbooks/omnibus_updater)
default['base']['include']['omnibus-updater'] = true

# Include a [simple report handler](http://jtimberman.housepub.org/blog/2011/04/24/a-simple-report-handler/) which outputs updated resources to stdout
default['base']['include']['simple_report_handler'] = true

# Include the [hipchat handler](https://github.com/cwjohnston/chef-hipchat)
default['base']['include']['hipchat_handler'] = false

# Include the [slack handler](https://github.com/iteh/chef-slack_handler)
default['base']['include']['slack_handler'] = false

# Include [chef-sugar](https://github.com/sethvargo/chef-sugar)
default['base']['include']['chef-sugar'] = true

# Include the [ntp](https://github.com/opscode-cookbooks/ntp/) cookbook
default['base']['include']['ntp'] = true

# Include motd
default['base']['include']['motd'] = true
default['base']['motd']['operation_tools'] = true

# Include some operations tools
default['base']['include']['operation_tools'] = true
default['base']['operation-tools'] = %w( htop iotop apachetop atop nmon dstat iftop nload )

# Include [build_essential](https://github.com/opscode-cookbooks/build-essential) cookbook
default['base']['include']['build_essential'] = false
