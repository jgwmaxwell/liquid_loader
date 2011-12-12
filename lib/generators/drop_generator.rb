class DropGenerator < Rails::Generators::Base
  desc "This generator creates liquid drops for your models."
  def create_drop
    create_file "app/drops/_drop.rb", "# Add initialization content here"
  end

end
