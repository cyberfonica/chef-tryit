#
# Cookbook Name:: tryit-django
# Recipe:: default
#
# Cyberfonica Team
#

include_recipe 'apt'
include_recipe 'aws'

application "tryit-django" do

  path "/srv/tryit-django"
  owner "root"
  group "root"
  repository "https://github.com/chernando/tryit_django"
  revision "master"
  migrate true
  packages ["git-core"]

  django do
    packages ["gunicorn"]
    requirements "requirements.txt"
    settings_template "settings.py.erb"
    debug true
  end

  gunicorn do
    app_module :django
    host "127.0.0.1"
    port 8080
  end

  nginx_load_balancer do
      application_server_role "tryit-worker"
      application_port 8080
  end

end

link "/srv/tryit-django/current/tryit/local_settings.py" do
    link_type "symbolic"
    to "/srv/tryit-django/shared/local_settings.py"
end

aws_elastic_lb "eip_load_balancer_production" do
    aws_access_key "KEY"
    aws_secret_access_key "SECRET"
    name "TryIT"
    action :register
end
