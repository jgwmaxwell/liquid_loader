require 'liquid'

module LiquidLoader
  module Context

    def self.included(base)
      base.instance_variable_set(:@context, Liquid::Context.new)
    end

    def render_liquid(template, context = @context)
      template.render(context)
    end

    def pre_render_liquid(template, destination, context = @context)
      add_context(destination => render_liquid(template, context))
    end

    def add_context(opts = nil)
      if opts.is_a? Hash
        opts.each do |k, v|
          @context[k.to_s.downcase] = v
        end
      end
    end

    def liq_context(opts = nil)
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
