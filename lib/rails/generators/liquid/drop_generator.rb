require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase


      desc "This generator creates liquid drops for your models."
      def create_drop
        #create_file "app/drops/#{name}_drop.rb", "# Add initialization content here"
        puts name
        puts file_name
        puts class_name

      end
    end
  end
end
