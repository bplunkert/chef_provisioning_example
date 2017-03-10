node.set['apache']['listen_ports'] = [8080, 443]

directory "/srv/www/#{node.domain}" do
  recursive true
end

file "/srv/www/#{node.domain}/index.html" do
  content 'hello world'
end

web_app node.domain do
  server_name "#{node.domain}:8080"
  server_aliases [node.domain, "www.#{node.domain}"]
  docroot "/srv/www/#{node.domain}"
end

include_recipe 'apache2'
