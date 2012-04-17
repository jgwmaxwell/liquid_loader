module ActiveRecord
  class Base
    def to_liquid
      (self.class.to_s.split("::").last + "Drop").constantize.new(self)
    end
  end
end
