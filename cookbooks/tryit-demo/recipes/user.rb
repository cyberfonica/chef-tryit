#
# Cookbook Name:: tryit-demo
# Recipe:: default
#
# Cyberfonica Team
#

user 'chuck' do
    comment 'Chuck Norris'
    gid 'users'
    home '/home/chuck'
    shell '/bin/bash'
end
