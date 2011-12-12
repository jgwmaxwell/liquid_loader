require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase


      desc "This generator creates liquid drops for your models."
      def create_drop
        create_file "app/drops/#{name}_drop.rb", "# Add initialization content here"
        puts "created [app/drops/#{name}_drop.rb]"
      end
    end
  end
end
