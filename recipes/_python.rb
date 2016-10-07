# encoding: utf-8
#
# Cookbook Name:: jpg_jenkins
# Recipe:: _python
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

package 'python-dev'
package 'libffi-dev'
package 'libssl-dev'
package 'libxml2-dev'
package 'libxslt1-dev'
package 'libjpeg8-dev'
package 'zlib1g-dev'
package 'python-pip'

execute 'pip install --upgrade pip'

python_package 'pylint'
python_package 'behave'
python_package 'selenium'
python_package 'requests'
python_package 'pytest'
python_package 'pytest-html'
python_package 'paramiko'

package 'phantomjs'
