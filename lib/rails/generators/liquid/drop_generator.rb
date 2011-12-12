require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      #argument :name, :type => :string
      #class_option :autodiscover, :type => :boolean, :default => true, :description => "Automatically discover attributes and add them to the Drop."


      desc "This generator creates liquid drops for your models."

      @attributes = class_name.constantize.attribute_names

      def create_drop
        template "drop.rb", "app/drops/#{file_name}_drop.rb"
      end


      private
      def class_name
        name.camelize
      end
    end
  end
end
