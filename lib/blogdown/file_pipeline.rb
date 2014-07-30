module Blogdown
  class FilePipeline
    attr_accessor :stack
    def initialize(root)
      @root=root
      @base=Pathname(@root)
      @stack=[]
      load_files
    end

    def load_files
      base_input=@root+'/posts'

      base=Pathname.new(base_input)
      unless base.exist?
        raise Blogdown::Exceptions::DirectoryNotFound, "please make sure the posts folder is present"
      end
      if base.exist?
        base.each_child do|child|
          if child.basename.to_s=~/^*.md$/
            self.stack<<child
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