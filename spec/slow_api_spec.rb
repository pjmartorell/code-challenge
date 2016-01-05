require 'spec_helper'
require File.expand_path('../../lib/slow_api', __FILE__)

describe SlowApi do
  before do
    @response = "Quack!"
    @file = StringIO.new
    @requests = 2
    stub_request(:get, /www.slowapi.com/).to_return(:body => @response, :status => 200)
  end

  it "retrieves requests correctly" do
    subject.retrieve(@requests, @file)
    @file.rewind
    expect(@file.read).to eq("Quack!\nQuack!\n")
  end
end
