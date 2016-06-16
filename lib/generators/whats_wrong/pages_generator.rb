require 'rails/generators'

module WhatsWrong
  module Generators
    class PagesGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def gen
        locale = name
        puts "Creating pages for #{locale} ..."

        [404, 422, 500].each {|status| process(locale, status) }
      rescue => e
        puts e.message
      end

      protected
      def process(locale, status)
        # using: https://github.com/rails/rails/tree/master/railties/lib/rails/generators/rails/app/templates/public

        @locales = locales(locale)['pages'][status.to_s]
        template "#{status}.html", "public/#{status}.#{locale}.html"
      end

      def locales(locale)
        locale_file = File.expand_path("../locales/#{locale}.yml", __FILE__)
        if File.exist?(locale_file)
          translations = YAML.load_file(locale_file)
          translations[locale]
        else
          raise "The #{locale} is not supported currently. Contribute the translations if you can, visit https://www.localeapp.com/projects/9397 ."
        end
      end
    end
  end
end
