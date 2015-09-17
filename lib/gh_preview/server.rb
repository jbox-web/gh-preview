require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'sinatra/flash/style_patch'
require 'tilt/haml'

module GhPreview
  class Server < Sinatra::Base

    enable :sessions
    register Sinatra::Flash

    configure :development do
      register Sinatra::Reloader
    end

    set :views,         GhPreview::Config.views_folder
    set :public_folder, GhPreview::Config.public_folder
    set :haml,          attr_wrapper: '"'

    helpers do

      def render(*args)
        if args.first.is_a?(Hash) && args.first.keys.include?(:partial)
          return haml "_#{args.first[:partial]}".to_sym, layout: false
        else
          super
        end
      end

    end


    def initialize(file)
      super
      @file = file
    end


    get '/' do
      if file_content(@file)
        @text = render_file(file_content(@file))
      else
        flash.now[:warning] = "#{@file} doesn't exist !"
      end
      haml :index
    end


    private


      def render_file(file)
        GhPreview::Converter.to_html(file)
      end


      def file_content(file)
        return nil unless File.exist?(file)
        File.read(file)
      end

  end
end
