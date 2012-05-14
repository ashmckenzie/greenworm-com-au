module Nesta

  class App
    use Rack::Static, :urls => ["/greenworm"], :root => "themes/greenworm/public"
  end  

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
end