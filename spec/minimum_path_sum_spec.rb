require 'spec_helper'
require File.expand_path('../../lib/minimum_path_sum', __FILE__)

describe MinimumPathSum do
  before do
    @triangle = <<-eos
    3
    7 4
    2 4 6
    8 5 2 9
    eos
  end

  it "finds the minimum path sum" do
    expect(subject.calculate(@triangle)).to eq(13)
  end
end
