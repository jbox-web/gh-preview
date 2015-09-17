require 'rack'
require 'thor'

module GhPreview
  class Runner < Thor

    desc 'server [options]', 'runs server mode'
    method_option :file, aliases: '-f', desc: 'File to serve   (default: README.md)'
    method_option :port, aliases: '-p', desc: 'Port for server (default 4000)'

    def server
      app = Rack::Builder.new
      app.run GhPreview::Server.new(options[:file] || 'README.md')
      Rack::Server.start app: app, Port: (options[:port] || 4000), server: 'webrick'
    end

  end
end
