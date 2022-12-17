file { '/etc/hello-world.txt':
  owner  => 'root',
  group  => 'root',
  source => 'puppet:///modules/hello-world/hello-world',
  mode   => '0440',
}
