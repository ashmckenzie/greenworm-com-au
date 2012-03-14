require 'pry'

module Nesta
  class App
    use Rack::Static, :urls => ["/greenworm.com.au"], :root => "themes/greenworm.com.au/public"

    helpers do
    end

    post '/contact/submit' do
      p params
      'ignore me for now'
    end
  end
end
