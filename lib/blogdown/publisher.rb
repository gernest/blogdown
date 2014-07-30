require 'coderay'
require 'kramdown'

module Blogdown
  class Publisher
    def initialize root
      @pipeline=Blogdown::FilePipeline.new root
      @base=root
    end

    def compose
      clean_output
      if @pipeline.stack.empty?
        raise IOError, "No file to compose"
      else
        @pipeline.stack.each do |file|
          htm=transform(file.read)
          @pipeline.writer(file.basename,htm)
        end
      end

    end

    def transform(txt)
      Kramdown::Document.new(txt,kramdown_options).to_html
    end

    def file_stack
      @pipeline.stack
    end

    def clean_output
      base_root=@base+'/output'
      base_root=Pathname base_root
      if base_root.exist?
        base_root.rmtree
        base_root.mkpath
      else
        base_root.mkpath
      end
    end

    def kramdown_options
      {coderay_css: "style", coderay_line_numbers: nil}
    end
  end
end