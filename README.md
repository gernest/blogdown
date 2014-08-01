# Blogdown

## Features
* syntax highlighting
* easy to use

## Installation

Add this line to your application's Gemfile:

    gem 'blogdown'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blogdown


## What it does

This gem converts markdown files to html files


## Usage

Create a directory for your project

    mkdir blogdown

Inside your freshly created folder create another folder "posts"

    cd blogdown
    mkdir posts

Now, put all your markdown files inside this "posts" folder, remember to use the `.md` extension
eg. `hello.md`

If you are done, and wish to build your html, for your rich text editor,
navigate to your project root directory (our case blogdown`), And Run

    blogdown build

A new directory "output" will be created and the respective output files(html) will be inside the folder

## Contributing

1. Fork it ( https://github.com/[my-github-username]/blogdown/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
