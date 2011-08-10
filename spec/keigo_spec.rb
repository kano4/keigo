# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Keigo' do
  context 'application idがない場合' do
    it { Keigo.app_id.should be_eql nil }
    it { lambda{ Keigo.new }.should raise_error RuntimeError }
    it { Object.private_methods.should be_include :sama}
  end

  context 'application idがある場合' do
    before(:each) do
      Keigo.app_id = 1234
    end

    it { Keigo.app_id.should be_eql 1234 }

    it 'は、keigo.samaを使うと最後に"様"が付加される' do
      keigo = Keigo.new
      name = keigo.sama('Keigo')
      name.should == 'Keigo様'
    end

    it 'は、sama関数を使うと最後に"様"が付加される' do
      sama('Keigo').should be_eql 'Keigo様'
    end
  end
end
