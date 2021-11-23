#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
apt_update

package 'net-tools'
package 'apache2'

file '/var/www/html/index.html' do
  content 'Hello Automated Infrastructure!'
end

service 'apache2' do
  action [:enable, :start]
end
