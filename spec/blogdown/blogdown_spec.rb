def clean_output
  root=$root_fixture_path+'/output'
  root=Pathname root
  if root.exist?
    root.rmtree
    root.mkpath
  else
    root.mkpath
  end
end

describe "A simple markdown blogger" do
  before(:each) do
    clean_output
  end

  let(:publisher){ Blogdown::Publisher.new($root_fixture_path) }

  it{ expect{publisher.compose}.to_not raise_error}
end



















describe Blogdown::FilePipeline do
  context "running the scipt in the root directory" do
    let(:pipeline){
      root=$root_fixture_path
      Blogdown::FilePipeline.new(root)
    }
    let(:stack){
      "hello.md"
    }

    describe "Loading files" do
      it "should load all the files and directories into the file stacks" do
        expect(pipeline.stack.pop.basename.to_s).to eql(stack)
      end
    end
  end
end