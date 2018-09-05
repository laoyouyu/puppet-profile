class profile::apache(
  Hash $apache_vhost_servers, 
  $default_vhost = false, 
  #$port = 80,
  $www = "laoyouyu3.mylabserver.com",
  #$docroot = "/var/www",
){
  class { 'apache':
    default_vhost=> $default_vhost,
  }
#  file {"$docroot/index.html":
#    ensure => file, 
#    owner => 'apache',
#    group => 'apache',
#    content => "This is a vhost test html",
#    require => Class['apache'],
#  }
  
  create_resources(::apache::vhost, $apache_vhost_servers)
#  apache::vhost { "$www": 
#    port => $port, 
#    docroot => $docroot, 
#  }
}

