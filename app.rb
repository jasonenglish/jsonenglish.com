require 'sinatra/base'
require 'sinatra-index'
require 'erb'
require 'yaml'

APP = YAML::load_file(File.join(__dir__, 'app.yml'))

class JsonEnglish < Sinatra::Base
  register Sinatra::Index
  use_static_index 'index.html'

  set :static, true
  set :public_dir, File.dirname(__FILE__) + '/public'

  get '/' do
    @page = APP['page']
    @profile = APP['profile']
    erb :index
  end
end

JsonEnglish.run!
