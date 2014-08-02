module Blogdown
  class PreviewApp<Sinatra::Application
    def initialize base
      @base_dir=base
    end

    get '/' do
      erb :home,:layout => :base
    end

    get '/posts/:name' do |file_name|
      @source_dir=@base_dir+'/'+file_name.gsub('-','_')
      @path=Pathname(@source_dir)
      if @path.file?
        render @path.read,:layout=>:base
      else
        halt 404
      end
    end
  end
end
