require 'puppetlabs_spec_helper/module_spec_helper'
require 'hiera-puppet-helper/rspec'
require 'hiera'
require 'hiera_puppet'
require 'puppet/indirector/hiera'

def hiera_stub
  config = Hiera::Config.load(hiera_config)
  config[:logger] = 'puppet'
  Hiera.new(:config => config)
end

RSpec.configure do |c|
  c.mock_framework = :rspec

  c.before(:each) do
    Puppet::Indirector::Hiera.stub(:hiera => hiera_stub)
    HieraPuppet.stub(:hiera => hiera_stub)
    Puppet::Util::Log.level = :debug
    Puppet::Util::Log.newdestination(:console)
  end

end
