require 'sinatra/base'
require 'sinatra-index'
require 'erb'

class JsonEnglish < Sinatra::Base
  register Sinatra::Index
  use_static_index 'index.html'

  set :static, true
  set :public_dir, File.dirname(__FILE__) + '/public'

  get('/') { erb :index }
end

JsonEnglish.run!
