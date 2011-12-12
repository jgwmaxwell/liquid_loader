require 'rails/generators/base'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::Base
      desc "This generator creates liquid drops for your models."
      def create_drop
        #create_file "app/drops/_drop.rb", "# Add initialization content here"
        puts "This is Rails!"
      end
    end
  end
end
