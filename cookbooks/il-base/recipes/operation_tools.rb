# operation-tools.rb

node['base']['operation-tools'].each do |pkg|
  package pkg do
    action :install
  end
end

motd_message = "\ntry one of the operation-tools: #{node['base']['operation-tools'].join(', ')}\n"

if node['base']['motd']['additional_text'] !~ /#{motd_message}/
  node.set['base']['motd']['additional_text'] = (node['base']['motd']['additional_text'] || '') + motd_message
end
