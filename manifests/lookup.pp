class hieratest::lookup {

  file { '/tmp/lookup':
    content => hiera('foo::bar::baz'),
  }

}
