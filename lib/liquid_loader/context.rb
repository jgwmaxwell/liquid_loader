module LiquidLoader
  module Context
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      @context = Liquid::Context.new
      @context['store'] = "bob"

      def render(template, context = @context)
        template.render(context)
      end
    end
  end
end
