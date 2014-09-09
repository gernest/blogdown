module Blogdown
  module Cli
    # Commandline app for blogdown
    class CommandLine<Thor

      desc "server", "serves the project for preview"
      def server
        # Runs Sinatra built in server on the project root drectory
        ENV['BD']=Dir.pwd
        Blogdown::PreviewApp.run!
      end
    end
  end
end