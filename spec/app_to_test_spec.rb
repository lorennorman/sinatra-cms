require_relative 'spec_helper'

describe "Base app used" do
  it "should be set to Installer" do
    get '/install'
    last_response.status.should == 200
  end

  it "should not be set to Admin" do
    get '/admin'
    last_response.status.should == 404
  end
end

describe "Set app_to_test to Admin in a before block" do
  before do
    RSpec.configuration.app_to_test = CMS::Admin
  end

  it "should not be set to Install, anymore" do
    get '/install'
    last_response.status.should == 404
  end

  it "should be set to Admin, now" do
    get '/admin'
    last_response.status.should == 200
  end
end