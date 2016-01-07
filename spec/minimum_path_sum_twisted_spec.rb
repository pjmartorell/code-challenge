require 'spec_helper'
require File.expand_path('../../lib/minimum_path_sum_twisted', __FILE__)

describe MinimumPathSumTwisted do
  before do
    @triangle1 = <<-eos
    3
    13 14
    22 23 13
    2 5 3 9
    eos

    @triangle2 = <<-eos
    3
    13 14
    22 21 11
    1 1 1 1
    eos

    @triangle3 = <<-eos
    13
    20 13
    13 20 20
    20 20 20 13
    13 20 20 20 20
    eos
  end

  it "finds the minimum path sum with twisted mode" do
    expect(subject.calculate(@triangle1)).to eq(31)
    expect(subject.calculate(@triangle2)).to eq(28)
    expect(subject.calculate(@triangle3)).to eq(13*5)
  end
end