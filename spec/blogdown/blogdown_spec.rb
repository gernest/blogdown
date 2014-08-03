# This is just a funny looking spec, a lot of work is needed to improve it


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

  context "Publishing" do
    before(:each) do
      clean_output
    end
    let(:publisher){ Blogdown::Publisher.new $root_fixture_path}

    describe "composer" do
      it{
        expect{publisher.compose}.to_not raise_error
      }
    end
  end
end
