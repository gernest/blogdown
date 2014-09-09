# Blogdown
[![Build Status](https://travis-ci.org/gernest/blogdown.svg?branch=master)](https://travis-ci.org/gernest/blogdown)

[![Coverage Status](https://coveralls.io/repos/gernest/blogdown/badge.png)](https://coveralls.io/r/gernest/blogdown)


## What this is all about
Blogdown helps to view your favorite github wiki offline. I created this
project to help me, have a good source of documentation on my pc,
since I dont have the privilege of internet access. I go online once in a
while, and its frusttating when I ineed to go online to view documentation.




## Installation

Run:

    $ gem install blogdown

## Usage

Clone your favorite wiki

    $ git clone [The Wiki URL goes HERE]

Cd into your wiki directory

    $cd mywiki.wiki


And, blog it down

    $ blogdown server

Behing the scene, the command will build the project first, and run a webserver which will be available at `http://localhost:4567`
copy `http://localhost:4567` and paste into your browser to see the files and view them with much more options.

## Snapshots

## Contributing

1. Fork it ( https://github.com/gernest/blogdown/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
