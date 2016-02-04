# SimpleHttp Class for MRuby

Our goal at [CloudWalk][1] is to provide you with the
necessary tools to build Point Of Sales (POS) applications
in an easy and innovative way. To do so, we've developed
a setup for MRuby programs that allows you to build and
ship modern day applications to all of your terminals
instantaneously.

With that objective, we've developed the necessary classes
for you to use http or http connections from your Ruby POS
application using a pure-ruby implementation.

## Index

- [Index](#index)
- [What do I have here?](#what-do-i-have-here)
- [How do I use this?](#how-do-i-use-this)
- [I would like to contribute](#i-would-like-to-contribute)

## What do I have here?

Here you have our pure-ruby implementation of the http and https classes. The structure goes as follows:

- A `lib` directory, which holds the main source code of our network classes.
- An `out`directory, which has a previous generated binary of this project. All builds target this directory.
- Also a Gemfile, a Rakefile and a `simplehttp.gemspec` file in order to provide this project as a Ruby Gem.

## How do I use this?

Simply `require "simplehttp"` in your project and make use of the `SimpleHttp` class.
This class has the following methods:

- `get` to make HTTP GET requests.
- `post` to make HTTP POST requests.
- `request` to make any HTTP request.

So to use them, first:

```ruby
require "simplehttp"
http = SimpleHttp.new(schema, "http://echo.cloudwalk.io", "8000")
response = http.post("/somepath", { 'message' => "Hello World" })
```

## I would like to contribute

So, you want to propose changes to our skeleton??!! Thank you sir! We appreciate it :bowtie:

Please follow the instructions:

1. Fork it under your github account!
2. Create your feature branch `git checkout -b my-new-feature`
3. Commit your changes `git commit -am 'Added some feature'`
4. Push to the branch `git push origin my-new-feature`
5. Create a new Pull Request!

## License

```
The MIT License (MIT)

Copyright (c) 2015 CloudWalk, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

[1]: https://www.cloudwalk.io
