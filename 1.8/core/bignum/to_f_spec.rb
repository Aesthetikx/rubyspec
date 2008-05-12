require File.dirname(__FILE__) + '/../../spec_helper'

describe "Bignum#to_f" do
  it "returns self converted to a Float" do
    bignum_value(0x4000_0aa0_0bb0_0000).to_f.eql?(13_835_069_737_789_292_544.00).should == true
    bignum_value(0x8000_0000_0000_0ccc).to_f.eql?(18_446_744_073_709_555_712.00).should == true
    (-bignum_value(99)).to_f.eql?(-9_223_372_036_854_775_808.00).should == true
  end
end
