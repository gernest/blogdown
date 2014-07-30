# Blogdown

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'blogdown'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blogdown

## Usage

Create a directory for your project
    mkdir blogdown

Inside your freshly creted folder create another folder "posts"
    cd blogdown
    mkdir posts

Now, put all your markdown folders inside this "posts" folder, remeber to use the `.md` extendion
eg. `hello.md`

If you are done, and wish to build your html, for your richtext editor
Inside your project folder (our case 1blogdown`), Run
    blogdown build

## Contributing

1. Fork it ( https://github.com/[my-github-username]/blogdown/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
