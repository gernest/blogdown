module Blogdown
  class FilePipeline
    attr_accessor :stack
    def initialize(root)
      @base=Pathname(root)
      @stack=[]
      load_files
    end

    def load_files
      @base.each_child do|child|
        if child.basename.to_s=="posts"
          child.each_child do|filename|
            if filename.extname==".md"
              self.stack<<filename
            end
          end
        end
      end
    end

    def writer(name,contents)
      file=@base.to_s+"/output/#{name}.html"
      file=File.new(file.to_s,"w")
      file.write(contents)
      file.close
    end
  end
end