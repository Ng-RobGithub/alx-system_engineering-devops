 Puppet manifest for installing and configuring Nginx

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Start Nginx service and enable it to start on boot
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Configure Nginx server block for root / with Hello World! page
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
                listen 80;
                server_name _;

                location / {
                    return 200 'Hello World!';
                }
            }",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create a symbolic link to enable the default server block
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
  require => File['/etc/nginx/sites-available/default'],
  notify  => Service['nginx'],
}

# Configure Nginx server block for /redirect_me with a 301 redirect
file { '/etc/nginx/sites-available/redirect_me':
  ensure  => file,
  content => "server {
                listen 80;
                server_name _;

                location /redirect_me {
                    return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
                }
            }",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create a symbolic link to enable the redirect server block
file { '/etc/nginx/sites-enabled/redirect_me':
  ensure => link,
  target => '/etc/nginx/sites-available/redirect_me',
  require => File['/etc/nginx/sites-available/redirect_me'],
  notify  => Service['nginx'],
}

