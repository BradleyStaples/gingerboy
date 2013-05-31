# adjust if you are using RVM, remove if you are not
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, '2.0.0'
set :rvm_type, :user
default_run_options[:pty] = true
set :application, "GingerBoyDev"
# ignoring git repo due to .gitignore'd files with figaro ENV variables
set :repository,  "."
set :scm, :none
set :deploy_via, :copy
set :branch, "master"
set :deploy_to, "/home/bradley/www/GingerBoyDev"
set :user, "bradley"
set :use_sudo, true
set :keep_releases, 1
set :domain, "173.255.249.134"
role :app, "173.255.249.134"
role :web, "173.255.249.134"
role :db,  "173.255.249.134", :primary => true

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  desc "reload the database with seed data"
  task :seed do
    run "cd #{deploy_to} && bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end

end
