require 'rubygems'
require 'sinatra'
require 'compass'

# set sinatra's variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, "views"
set :public_folder, 'static'

configure do
  set :haml, {:format => :html5, :escape_html => true}
  set :scss, {:style => :compact, :debug_info => false}
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/:version/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"#{params[:version]}/stylesheets/#{params[:name]}", Compass.sass_engine_options)
end

get '/' do
  erb :"v1/index.html"
end

get '/:page_name.html' do
  erb :"v1/#{params[:page_name]}.html"
end

get '/:version/?' do
  erb :"#{params[:version]}/index.html"
end

get '/:version/:page_name.html' do
  erb :"#{params[:version]}/#{params[:page_name]}.html"
end
