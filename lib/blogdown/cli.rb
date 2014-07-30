require 'thor'


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
    end
  end
end