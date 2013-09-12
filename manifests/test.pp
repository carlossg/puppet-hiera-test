class hieratest::test($param1) {

  file { '/tmp/test2':
    content => $param1,
  }

}
