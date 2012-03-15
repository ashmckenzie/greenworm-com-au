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
    use Rack::Static, :urls => ["/greenworm.com.au"], :root => "themes/greenworm.com.au/public"

    helpers do
      def page_id page
        page.heading.downcase.strip.gsub(/[^\w\s]/, '').gsub(/\s+/, '-')
      end
    end

    post '/contact/submit' do
      p params
      'ignore me for now'
    end
  end
end
