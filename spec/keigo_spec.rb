# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Keigo" do
  it "は、samaを使うと'様'が付加される" do
    keigo = Keigo.new
    name = keigo.sama('Keigo')
    name.should == 'Keigo様'
  end
end
