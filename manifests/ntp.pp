class profile::ntp(
 Array $ntp_servers,
)
{
#  class {'::ntp':
#    service_enable => $service_enable,
# }
  class {'::ntp':
    servers => $ntp_servers,
 }
}

