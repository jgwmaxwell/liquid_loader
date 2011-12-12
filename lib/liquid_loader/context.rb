module LiquidLoader
  module Context
    @context = Liquid::Context.new
    @context['store'] = "bob"

    def render_liquid(template, context = @context)
      template.render(context)
    end

  end
end
