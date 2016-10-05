# encoding: utf-8
#
# Cookbook Name:: jpg_jenkins
# Recipe:: server
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

include_recipe "#{cookbook_name}::_base"

# Install Jenkins and dependencies
node.default['jenkins']['master']['install_method'] = 'war'
node.default['jenkins']['master']['source'] = 'http://mirrors.jenkins-ci.org/war/2.12/jenkins.war'
node.default['jenkins']['master']['checksum'] = '65e51c0dbd2915f4b37f7daebfa561b49c279ab4bc04997011db0539b77d954d'
node.default['jenkins']['master']['jvm_options'] = '-Djenkins.install.runSetupWizard=false'

node.default['jenkins']['executor']['timeout'] = 240

include_recipe 'jenkins::master'
include_recipe "#{cookbook_name}::_python"
