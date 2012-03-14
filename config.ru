require 'nesta/env'
require 'nesta/app'
require 'bundler/setup'

Bundler.require(:default)

use Rack::ConditionalGet
use Rack::ETag

Nesta::Env.root = ::File.expand_path('.', ::File.dirname(__FILE__))

run Nesta::App