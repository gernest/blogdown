module Blogdown
  class PreviewApp<Sinatra::Application

    get '/' do
      @wiki_files=self.wiki_files
      erb :index, :layout => :layout
    end
    def wiki_files
      @sources=ENV['BD']
      pub=Blogdown::Publisher.new(@sources)
      pub.compose
    end

  end
end
