require 'spec_helper'
describe 'weechat' do

  context 'with defaults for all parameters' do
    it { should contain_class('weechat') }
  end
end
