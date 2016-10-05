#
# Cookbook Name:: base
# Recipe:: simple_report_handler
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

chef_gem "chef-handler-updated-resources" do
  version "0.1"
end

require 'chef/handler/updated_resources'

include_recipe "chef_handler"

chef_handler 'SimpleReport::UpdatedResources' do
  source 'chef/handler/updated_resources'
  action :nothing
end.run_action(:enable)
