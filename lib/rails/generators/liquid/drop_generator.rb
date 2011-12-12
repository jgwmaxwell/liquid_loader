require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase


      desc "This generator creates liquid drops for your models."
      def create_drop
        create_file "app/drops/_drop.rb", "# Add initialization content here"
        #puts "This is Rails!"
      end
    end
  end
end
