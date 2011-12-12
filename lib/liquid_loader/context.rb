module LiquidLoader
  module Context
    @context = Liquid::Context.new
    @context['store'] = "bob"

    def render_liquid(template, context = @context)
      template.render(context)
    end

    def pre_render_liquid(template, destination, context = @context,)
      add_context(destination => render_liquid(template, context))
    end

    def add_context(opts = nil)
      if opts.is_a? Hash
        opts.each do |k, v|
          @context[k.to_s.lowercase] = v
        end
      end
    end
  end
end
