# encoding: utf-8
def sama name
  Keigo.new.sama name
end

def k subject
  Keigo.new.k subject
end

class Keigo
  def sama name
    "#{name}様"
  end

  def k subject
    keigo_henkan = {'わたし' => 'わたくし', 'わたしたち' => 'わたくしども', '今日' => '本日'}
    if keigo_henkan.key?(subject)
      keigo_henkan[subject]
    else
      subject
    end
  end
end
