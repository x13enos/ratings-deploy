set :application, 'ratings'

set :ssh_options, :forward_agent => true

set :scm, :git
set :repo_url, 'git@github.com:x13enos/ratings.git'

set :format, :pretty
set :log_level, :debug

set :linked_files, %w{config/database.yml config/secrets.yml config/unicorn.rb}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/system}

set :keep_releases, 5

after 'deploy:publishing', 'deploy:restart'
before 'deploy:starting', 'rvm1:hook'
after 'deploy:finishing', 'deploy:cleanup'

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
