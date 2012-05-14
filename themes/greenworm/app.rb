require 'pry'

module Nesta

  class Page
    def title
      if metadata('title')
        metadata('title')
      elsif heading
        "#{heading} - #{Nesta::Config.title}"
      elsif abspath == '/'
        Nesta::Config.title
      end
    end
  end

  class App

    use Rack::Static, :urls => ["/greenworm"], :root => "themes/greenworm/public"

    helpers do
      def page_id page
        page.heading.downcase.strip.gsub(/[^\w\s]/, '').gsub(/\s+/, '-')
      end
    end

    post '/contact/submit' do
      p params
      # binding.pry
      ''
    end
  end
end
