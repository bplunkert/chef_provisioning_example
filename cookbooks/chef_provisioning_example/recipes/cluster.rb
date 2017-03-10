require 'chef/provisioning'

domain = 'mydomain'
environment = 'test'

# Spin up 3 webservers
machine_batch do
  1.upto(3) do |n|
    name = "#{environment}-web#{n}.#{domain}"
    machine name do
      chef_environment environment
      recipe 'chef_provisioning_example::web'
      action [:converge]
    end
  end
end

