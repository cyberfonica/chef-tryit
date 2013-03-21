#
# Cookbook Name:: tryit-demo
# Recipe:: default
#
# Cyberfonica Team
#

directory '/home/chuck' do
    owner 'chuck'
    group 'users'
    mode 0777
    action :create
end

cookbook_file "/home/chuck/OMG.txt" do
    source "OMG.txt"
    owner 'chuck'
    group 'users'
    mode 0666
end
