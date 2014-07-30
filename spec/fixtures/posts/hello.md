~~~ruby
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
~~~
