# encoding: utf-8
require 'yaml'
$keigo_henkan = YAML.load_file(File.dirname(__FILE__) + '/../keigo.yml')

def sama name
  Keigo.new.sama name
end

def k text
  Keigo.new.k text
end

class Keigo
  def initialize
    @keigo_henkan = $keigo_henkan
  end

  def sama name
    "#{name}様"
  end

  def k text
    @keigo_henkan.each_key {|key| text = text.sub(key, @keigo_henkan[key])}
    text
  end
end
