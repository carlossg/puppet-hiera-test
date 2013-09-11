require 'puppetlabs_spec_helper/module_spec_helper'
require 'hiera-puppet-helper/rspec'
require 'hiera'

RSpec.configure do |c|
  c.mock_framework = :rspec

  c.before(:each) do
    Hiera::Config.stub(:yaml_load_file).and_return(hiera_config)
    Puppet[:hiera_config] = "" # force hiera configuration

    Puppet::Util::Log.level = :debug
    Puppet::Util::Log.newdestination(:console)
  end

end
