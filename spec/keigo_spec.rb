# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'yaml'
$keigo_henkan = YAML.load_file(File.dirname(__FILE__) + '/../keigo.yml')

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

  context 'は、変換後に登録されていない場合' do
    it { k('こんにちわ').should be_eql 'こんにちわ' }
    it { k('わたくし').should be_eql 'わたくし' }
  end

  context 'は、変換語に登録されている場合' do
    @keigo_henkan = $keigo_henkan

    @keigo_henkan.each do |key, keigo|
      it { k(key).should be_eql keigo }
    end

    it { k('あいつが今日来る。').should be_eql 'あちらさまが本日お見えになる。' }

    it { @keigo.k('わたし').should be_eql 'わたくし' }
  end
end
