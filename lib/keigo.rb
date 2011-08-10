# encoding: utf-8
def sama name
  Keigo.new.sama name
end

class Keigo
  @@app_id = nil

  def initialize
    raise RuntimeError unless Keigo.app_id
  end

  def self.app_id
    @@app_id
  end

  def self.app_id= app_id
    @@app_id = app_id
  end

  def sama name
    "#{name}様"
  end
end
