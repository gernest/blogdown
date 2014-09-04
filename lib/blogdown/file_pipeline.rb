module Blogdown
  class FilePipeline
    # THis keeps track of files being processed

    attr_accessor :stack
    def initialize(root)
      @root=root
      @base=Pathname(@root)
      @stack=[]
      load_files
    end

    # @return [Array]  The files under posts folder
    def load_files
      base_input=@root

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

    # Writes given contents into a file with a name given as a parameter
    # @param name [String] The name of the file to be written
    # @param contents [String] The contents to be written on the file
    def writer(name,contents)
      file=@base.to_s+"/output/#{name}.html"

      begin
        file=File.new(file.to_s,"w")
        file.write(contents)
        file.close
      rescue Exception=>e
        raise e
      end
    end
  end
end