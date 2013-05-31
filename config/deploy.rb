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
role :app, "173.255.249.134"
role :web, "173.255.249.134"
role :db,  "173.255.249.134", :primary => true


# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  desc "Restart Passenger app"
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
