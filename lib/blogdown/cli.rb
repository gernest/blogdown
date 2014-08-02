
module Blogdown
  module Cli
    class CommandLine<Thor

      desc "build", "builds the html files"
      def build
        begin
          publisher=Blogdown::Publisher.new(Dir.pwd)
          publisher.compose
        rescue Exception=>e
          puts e.message
        end
      end

      desc "server", "serves the project for preview"
      def server
        ENV['BD']=Dir.pwd
        app=Blogdown::PreviewApp.new
        build
        app.run
      end
    end
  end
end