require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __FILE__)
      #argument :name, :type => :string
      #class_option :autodiscover, :type => :boolean, :default => true, :description => "Automatically discover attributes and add them to the Drop."


      desc "This generator creates liquid drops for your models."

      #generate_attributes if options.autodiscover?

      def create_drop
        template "drop.rb", "app/drops/#{file_name}_drop.rb"
      end


      private
      def file_name
        name.underscore
      end
      def class_name
        name.camelize
      end
      def generate_attributes
          @attributes = class_name.constantize.attribute_names
      end
    end
  end
end
