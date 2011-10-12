# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'yaml'
$keigo_henkan = YAML.load_file(File.dirname(__FILE__) + '/../keigo.yml')

describe String do
  it { "Alice".sama.should be_eql 'Alice様' }

  context 'は、変換後に登録されていない場合' do
    it { 'こんにちわ'.keigo.should be_eql 'こんにちわ' }
    it { 'わたくし'.keigo.should be_eql 'わたくし' }
  end

  context 'は、変換語に登録されている場合' do
    $keigo_henkan.each do |key, keigo|
      it { key.keigo.should be_eql keigo }
    end

    it { 'あいつが今日来る。'.keigo.should be_eql 'あちらさまが本日おいでになる。' }
  end
end
