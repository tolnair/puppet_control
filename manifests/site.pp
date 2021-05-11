node default {
  file { '/root/README':
    ensure  => file,
    contetn => 'This is a text!',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
