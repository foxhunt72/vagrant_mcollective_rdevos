

  class { '::mcollective':
    client           => true,
    middleware_hosts => [ '192.168.33.51' ],
  }




  mcollective::plugin { 'puppet':
      package => true,
  }

  mcollective::plugin { 'service':
      package => true,
  }

  mcollective::plugin { 'package':
      package => true,
  }


