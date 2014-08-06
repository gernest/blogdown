# Blogdown
[![Build Status](https://travis-ci.org/gernest/blogdown.svg?branch=master)](https://travis-ci.org/gernest/blogdown)

## Features

* Generates html from markdown files
* Syntax highlighting with coderay
* Built in server

## Installation

Run:

    $ gem install blogdown

## Usage

Create a directory for your project

    $ mkdir blogdown

Inside your freshly created folder create another folder "posts"

    $ cd blogdown
    $ mkdir posts

Now, put all your markdown files inside this "posts" folder, remember to use the `.md` extension
eg. `hello.md`

## Building html

If you are only interested in getting html files, navigate to the project root directory and run the following command.

    $ blogdown build

This will create `output` directory and dump all html files there. The naming convention is simple.
`hello.md` will produce `hello.md.html`.

## Serving the files

In some cases you might be interested to see what they might be like in a browser. There is a feature for you.
Just navigate to the project root and run.

    $ blongdown server

Behing the scene, the command will build the project first, and run a webserver which will be available at `http://localhost:4567`
copy `http://localhost:4567` and paste into your browser to see the files and view them with much more options.

## Contributing

1. Fork it ( https://github.com/gernest/blogdown/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
