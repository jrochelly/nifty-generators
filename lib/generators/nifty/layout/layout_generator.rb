require 'generators/nifty'

module Nifty
  module Generators
    class LayoutGenerator < Base
      argument :layout_name, :type => :string, :default => 'application', :banner => 'layout_name'

      class_option :haml, :desc => 'Generate HAML for view, and SASS for stylesheet.', :type => :boolean

      def create_layout
        if options.haml?
          template 'layout.html.haml', "app/views/layouts/#{file_name}.html.haml"
        else
          template 'layout.html.erb', "app/views/layouts/#{file_name}.html.erb"
        end
        copy_file 'stylesheet.css.scss', "app/assets/stylesheets/#{file_name}.css.scss"
        copy_file 'assets/application.css.scss', "app/assets/stylesheets/application.css.scss"
        copy_file 'assets/bootstrap.min.css', "app/assets/stylesheets/bootstrap.min.css"
        copy_file 'assets/application.js', "app/assets/javascripts/application.js"
        copy_file 'assets/bootstrap.min.js', "app/assets/javascripts/bootstrap.min.js"
        copy_file 'assets/es5-shim.js', "app/assets/javascripts/es5-shim.js"
        copy_file 'assets/json3.min.js', "app/assets/javascripts/json3.min.js"
        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
        copy_file 'error_messages_helper.rb', 'app/helpers/error_messages_helper.rb'
        directory 'assets/fonts', "app/assets/fonts/"
      end

      private

      def file_name
        layout_name.underscore
      end
    end
  end
end
