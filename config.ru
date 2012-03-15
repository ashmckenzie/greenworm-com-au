require 'bundler/setup'
Bundler.require(:default)

require 'nesta/env'
require 'nesta/app'
require 'sinatra'

set :logging, :true

use Rack::ConditionalGet
use Rack::ETag

Nesta::Env.root = ::File.expand_path('.', ::File.dirname(__FILE__))

run Nesta::App