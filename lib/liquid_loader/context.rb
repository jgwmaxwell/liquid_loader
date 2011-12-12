require 'liquid'

module LiquidLoader
  module Context

    def render_liquid(template, context = nil)
      ctx = (context ? context : liq)
      template.render(context)
    end

    def pre_render_liquid(template, destination, context = @context)
      add_context(destination => render_liquid(template, context))
    end

    def add_context(opts = nil)
      if opts.is_a? Hash
        opts.each do |k, v|
          liq[k.to_s.downcase] = v
        end
      end
    end

    private
    def liq
      @liq ||= Liquid::Context.new
    end

  end
end
