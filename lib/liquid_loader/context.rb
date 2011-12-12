module LiquidLoader
  module Context
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def initialize
        @context = Liquid::Context.new
      end

      def render(template, context = @context)
        template.render(context)
      end
    end
  end
end
