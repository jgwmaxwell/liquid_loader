require 'liquid'

module LiquidLoader
  module Context

    def render_layout(template, context = nil)
      ctx = (context ? context : liq)
      template.render(ctx)
    end

    def render_template(template, destination, context = nil)
      ctx = (context ? context : liq)
      add_context(destination => render_layout(template, ctx))
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
