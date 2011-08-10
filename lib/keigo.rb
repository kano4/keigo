# encoding: utf-8
def sama name
  Keigo.new.sama name
end

class Keigo
  def sama(name)
    "#{name}様"
  end
end
