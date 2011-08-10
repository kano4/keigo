# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Keigo' do
  before(:each) do
    @keigo = Keigo.new
  end
  it 'は、keigo.samaを使うと最後に"様"が付加される' do
    name = @keigo.sama('Keigo')
    name.should == 'Keigo様'
  end

  it 'は、sama関数を使うと最後に"様"が付加される' do
    sama('Keigo').should be_eql 'Keigo様'
  end

  it { @keigo.k('こんにちわ').should be_eql 'こんにちわ' }
  it { @keigo.k('わたくし').should be_eql 'わたくし' }

  it { @keigo.k('わたし').should be_eql 'わたくし' }
  it { @keigo.k('わたしたち').should be_eql 'わたくしども' }
  it { @keigo.k('今日').should be_eql '本日' }

  it { k('わたし').should be_eql 'わたくし' }
end
