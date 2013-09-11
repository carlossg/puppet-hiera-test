require 'spec_helper'

describe 'hieratest' do

  let(:hiera_data) {{
    'hieratest::param1' => 'y'
  }}

  it { should contain_file('/tmp/test').with_content('y') }

end
