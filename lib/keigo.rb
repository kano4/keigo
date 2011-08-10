# encoding: utf-8
def sama name
  Keigo.new.sama name
end

def k text
  Keigo.new.k text
end

class Keigo
  def sama name
    "#{name}様"
  end

  def k text
    keigo_henkan = {'わたしたち' => 'わたくしども', 'わたし' => 'わたくし', '今日' => '本日'}
    keigo_henkan.each_key {|key| text = text.sub(key, keigo_henkan[key])}
    text
  end
end
