require 'spec_helper'

describe 'hieratest::test' do

  let(:hiera_data) {{
    'hieratest::test::param1' => 'y'
  }}

  it { should contain_file('/tmp/test2').with_content('y') }

end
