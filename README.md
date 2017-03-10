# Setup:
Install vagrant and virtualbox first

``rvm install ruby-2.3.0
bundle install
vagrant plugin install winrm
vagrant plugin install winrm-fs
vagrant plugin install winrm-elevated

bundle exec rake deploy:cluster
```

# To cleanup:
bundle exec rake destroy 
