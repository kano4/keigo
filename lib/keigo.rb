# encoding: utf-8
require 'yaml'
$keigo_henkan = YAML.load_file(File.dirname(__FILE__) + '/../keigo.yml')

class String
  def sama
    "#{self}様"
  end

  def keigo
    text = self
    $keigo_henkan.each_key {|key| text = text.sub(key, $keigo_henkan[key])}
    text
  end
end
