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

    @triangle1 = <<-eos
    3
    14 13
    13 23 22
    9 5 3 2
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

    @triangle4 = <<-eos
    13
    3 11
    eos
  end

  context 'when in normal mode' do
    it "finds the minimum path sum" do
      expect(subject.calculate(@triangle)).to eq(13)
      expect(subject.calculate(@triangle1)).to eq(35)
      expect(subject.calculate(@triangle2)).to eq(29)
      expect(subject.calculate(@triangle3)).to eq(79)
      expect(subject.calculate(@triangle4)).to eq(16)
    end
  end

  context 'when in twisted mode' do
    it "finds the minimum path sum" do
      expect(subject.calculate(@triangle, true)).to eq(13)
      expect(subject.calculate(@triangle1, true)).to eq(31)
      expect(subject.calculate(@triangle2, true)).to eq(28)
      expect(subject.calculate(@triangle3, true)).to eq(13*5)
      expect(subject.calculate(@triangle4, true)).to eq(16)
    end
  end
end
