#
# Cookbook Name:: bash
# Recipe:: default
#
# Licensed under the GPL License, Version 3.0 (the "License");
# you may not use this file except in compliance with the License.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

%w{ bash bash-completion }.each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/bash.bashrc" do
  source "bash.bashrc.erb"
  owner "root"
  group "root"
  mode "0644"
end

case node[:platform]
when "ubuntu","debian"
  package "bash-doc" do
    action :install
  end
when "centos"
  package "bash-html" do
    action :install
  end
end
