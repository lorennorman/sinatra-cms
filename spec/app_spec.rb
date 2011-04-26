require_relative 'spec_helper'

describe 'App' do
  it 'should run a simple test' do
    get '/'
    last_response.status.should == 200
  end
end