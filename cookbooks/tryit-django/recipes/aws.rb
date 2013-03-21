#
# Cookbook Name:: tryit-django
# Recipe:: Amazon AWS
#
# Cyberfonica Team
#

include_recipe 'aws'

# Get the AWS login data from the databag
aws_data = data_bag_item("aws", "main")

aws_elastic_lb "eip_load_balancer_production" do
    only_if { node['roles'].include?("tryit-ec2") }
    aws_access_key aws['aws_access_key_id']
    aws_secret_access_key aws['aws_secret_access_key']
    name "TryIT"
    action :register
end
