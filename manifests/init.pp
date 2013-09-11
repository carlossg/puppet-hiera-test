class hieratest($param1) {

  file { '/tmp/test':
    content => $param1,
  }

}
