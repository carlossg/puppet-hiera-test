require 'spec_helper'

describe 'hieratest::lookup' do

  let(:hiera_data) {{
    'foo::bar::baz' => 'qux'
  }}

  it { should contain_file('/tmp/lookup').with_content('qux') }

end
