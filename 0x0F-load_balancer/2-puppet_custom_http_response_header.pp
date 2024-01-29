# 2-puppet_custom_http_response_header.pp

# Ensure Nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Define Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name _;

    # Custom HTTP header response
    location / {
        add_header X-Served-By $hostname;
        root /var/www/html;
        index index.html index.htm;
    }
}
",
  notify  => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
}
