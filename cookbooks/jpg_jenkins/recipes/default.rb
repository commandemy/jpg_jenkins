# encoding: utf-8
#
# Cookbook Name:: jpg_jenkins
# Recipe:: default
#
# Copyright 2015 Infralovers
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

include_recipe 'jpg_jenkins::server'

user 'commandemy' do
  comment 'A training user'
  home '/home/commandemy'
  shell '/bin/bash'
  password node['jpg_jenkins']['password_hash']
end

include_recipe 'sudo::default'
include_recipe 'openssh::default'
