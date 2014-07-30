require 'thor'


module Blogdown
  module Cli
    class CommandLine<Thor

      def self.source_root
        File.dirname(__FILE__)
      end
      desc "build", "builds the html files"
      def build
        begin
          publisher=Blogdown::Publisher.new(self.source_root)
          publisher.compose
        rescue Exception=>e
          puts e.message
        end
      end
    end
  end
end