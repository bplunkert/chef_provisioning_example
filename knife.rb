chef_server_url   'http://127.0.0.1:8889'
node_name         'repo'
client_key "#{Dir.pwd}/fake_key.pem"
cookbook_path ["#{Dir.pwd}/cookbooks"]
private_key_paths ["#{ENV['HOME']}/.ssh"]
cache_path "#{Dir.pwd}/local-mode-cache"
