require 'rails/generators'

module WhatsWrong
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def install
        create_file("config/initializers/whats_wrong.rb", <<-RUBY)
WhatsWrong.enabled = true
        RUBY
      end
    end
  end
end
