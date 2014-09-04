module Blogdown
  class PreviewApp<Sinatra::Application

    helpers do
      def wiki_files
        @sources=ENV['BD']
        pub=Blogdown::Publisher.new(@sources)
        pub.compose
      end
    end
    get '/' do
      erb :index, :layout => :layout
    end
  end
end
