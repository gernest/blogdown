require 'redcarpet'
require 'github/markdown'

module Blogdown
  class Publisher
    attr_accessor :renderer,:markdown
    def initialize root
      @pipeline=Blogdown::FilePipeline.new root
      @base=root
      @output_stack={}
      @renderer=Redcarpet::Render::HTML.new(render_options)
      @markdown=Redcarpet::Markdown.new(@renderer, markdown_options)
    end

    def compose
      if @pipeline.stack.empty?
        raise IOError, "No file to compose"
      else
        @pipeline.stack.each do |file|
          if file.file?
            puts "processing #{file.to_s}"
            htm=transform(file.read)
            @output_stack[valid_id(file)]=htm
            puts "done"
          end

        end
      end
      @output_stack
    end

    def transform(txt)
      self.markdown.render(GitHub::Markdown.render_gfm(txt))
    end
    def valid_id(v)
      value=v.basename.to_s.gsub(/^*.([a-z]|[A-Z]){2,}$/,"")
      value=value.gsub(" ","-")
    end

    def render_options
      {:with_toc_data=>false, :hard_warp=>true, :prettify=>true}
    end

    def markdown_options
      {:auto_link=>true}
    end
  end
end