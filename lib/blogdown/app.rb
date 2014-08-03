module Blogdown
  class PreviewApp<Sinatra::Application

    helpers do
      def built_files
        @output=ENV['BD']+'/output'
        @files =[]
        out    =Pathname(@output)
        out.each_child do |child|
          if child.extname==".html"
            @files<<child
          end
        end
        @files
      end
    end
    get '/' do
      erb :home, :layout => :base
    end


    # Serves generated files found in the ouput folder
    # It does so, by reading the files, and dumping the string to be rendered with `erb`
    get '/post/:name' do |file_name|
      @source_dir=ENV['BD']+'/output/'+file_name.gsub('-', '_')+'.md.html'
      @path      =Pathname(@source_dir)
      if @path.file?
        erb @path.read, :layout => :base
      else
        halt 404
      end
  end
  end
end
