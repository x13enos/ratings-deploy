set :stage, :staging

role :app, 'ratings@ratings@vps1.noobcoders.com'
role :web, 'ratings@ratings@vps1.noobcoders.com'
role :db,  'ratings@ratings@vps1.noobcoders.com'

set :rails_env, :staging
set :rake, 'bundle exec rake'

set :deploy_to, '/home/ratings/application'

set :branch, ENV['BRANCH'] || 'develop'

set :unicorn_config_path, "#{current_path}/config/unicorn.rb"
