desc 'prepare environment for rake tasks'
task :environment do
  @loglevel = ENV['loglevel'] || 'warn'
end

namespace 'deploy' do
  desc 'deploy using vagrant'
  task :vagrant => 'berks:vendor' do    
    sh('export CHEF_DRIVER=vagrant; bundle exec chef-client -c knife.rb -z recipes/platform_vagrant.rb recipes/cluster.rb') 
  end
end


namespace 'berks' do
  desc 'install cookbooks to berkshelf'
  task :install do
    sh('bundle exec berks install')
  end

  desc 'vendor cookbooks for release'
  task :vendor => 'berks:install' do
    sh('rm -rf cookbooks && bundle exec berks vendor cookbooks')
  end
end

desc 'destroy all servers'
task :destroy do
  sh('bundle exec chef-client -c knife.rb -z recipes/cluster_bomb.rb')
end

