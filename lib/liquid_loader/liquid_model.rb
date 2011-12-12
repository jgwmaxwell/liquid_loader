module Liquid
  class Model < ActiveRecord::Base
    def to_liquid
      (self.class.to_s + "Drop").constantize.new(self)
    end
  end
end
