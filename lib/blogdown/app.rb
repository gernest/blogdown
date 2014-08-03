module Blogdown
  class PreviewApp<Sinatra::Application

    get '/' do
      erb :home,:layout => :base
    end

    get '/posts/:name' do |file_name|
      @source_dir=ENV['BD']+'/output/'+file_name.gsub('-','_')+'.md.html'
      @path=Pathname(@source_dir)
      if @path.file?
        erb @path.read,:layout=>:base
      else
        halt 404
      end
    end
  end
end
