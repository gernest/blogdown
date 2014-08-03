module Blogdown
  module Cli
    # Commandline app for blogdown
    class CommandLine<Thor

      desc "build", "builds the html files"
      def build
        # Builds html files from markdown files, located in output
        # and posts folders respectively
        begin
          publisher=Blogdown::Publisher.new(Dir.pwd)
          publisher.compose
        rescue Exception=>e
          puts e.message
        end
      end

      desc "server", "serves the project for preview"
      def server
        # Runs Sinatra built in server on the project root drectory
        ENV['BD']=Dir.pwd
        build
        Blogdown::PreviewApp.run!
      end
    end
  end
end