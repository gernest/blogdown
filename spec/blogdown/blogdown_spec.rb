# This is just a funny looking spec, a lot of work is needed to improve it



describe "A simple markdown blogger" do

  context "Publishing" do
    let(:publisher){ Blogdown::Publisher.new $root_fixture_path}

    describe "composer" do
      it{
        outcome={"hello"=>'<h1>hello world</h1>'}
        cmp=publisher.compose
        expect(cmp.first[0]).to eq(outcome.to_a[0][0])
      }
    end
  end
end
