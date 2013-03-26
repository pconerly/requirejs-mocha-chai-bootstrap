## A bug report in the form of a repository!

Please see: https://github.com/kmiyashiro/grunt-mocha/issues/58

The general idea is that `grunt-mocha` fails when mocha is loaded in a requireJS style of format.

To reproduce:

```bash
git clone this-repo
npm install
grunt mocha
# Notice that grunt-mocha's built-in test succeeds
# Notice that chaijs's online tests succeeds
# Notice that the tests in SpecRunner.html timeout
    # Then open SpecRunner.html in your browser and see that it succeeds.
```

### NOTE: grunt-lib-phantomjs error work-around

To get around this bug: https://github.com/gruntjs/grunt-lib-phantomjs/issues/17

I added this to `package.json`

```json
"devDependencies": {
  ...,
  "phantomjs": "1.8.1-1"
}
```

**Your planned scheduled README.md continues below:**

## RequireJS + Mocha + Chai bootstrap

A simple and effective setup for starting projects with RequireJS. A quick [blog post](http://karlbrig.ht/20120608-requirejs-mocha-chai-bootstrap.html) on my site explains my reasoning behind the bootstrap and how it runs. If you have an understanding of RequireJS you won't get much out of the blog post.

## Todo

* Coffeescript
* Build script
* Test script to require base specs within spec folder automatically before starting tests.
* Easier LiveReload setup(?)

## Thanks

Big thanks to [geddesign](http://github.com/geddesign/) and his repository on [AMD Testing](http://github.com/geddesign/amd-testing) that put me in the right direction on how to tackle it.

## License

Copyright (C) 2012 Karl <@karlbright> Brightman

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
