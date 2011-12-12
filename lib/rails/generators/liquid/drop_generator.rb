require 'rails'

module Liquid
  module Generators
    class DropGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      #argument :name, :type => :string
      #class_option :autodiscover, :type => :boolean, :default => true, :description => "Automatically discover attributes and add them to the Drop."


      desc "This generator creates liquid drops for your models."

      def create_drop
        @model = file_name.camelize.constantize
        @attributes = @model.attribute_names
        @associations = @model.reflect_on_all_associations
        template "drop.rb", "app/drops/#{file_name}_drop.rb"
      end

    end
  end
end
