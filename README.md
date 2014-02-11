# Stubble
A front-end starter kit from Bearded

## Overview

Stubble is a default set of HTML and CSS that we base every new Bearded project on. It's our "boilerplate". We've included some of our most-often used markup patterns. Our goal with Stubble is to eliminate the time it takes to get new projects off the ground and to give us a set of modular, extensible pieces to refine and refactor, rather than constantly reinventing the wheel.

Our goal with Stubble is simple: to be kind to our future selves.

## Haml, Sass/Compass, Sinatra, and Ruby

**Requirements:**

1. [Ruby](http://www.ruby-lang.org/)
2. [Sinatra](http://www.sinatrarb.com/)
3. [Haml](http://haml.info/)
4. [Sass](http://sass-lang.com/) &amp; [Compass](http://compass-style.org/)

**To get started:**

1. cd into your project directory
3. Install the project's dependencies by typing `bundle install`
4. Start the project by typing `rackup config.ru`
5. Open a new tab in your browser and navigate to: `http://localhost:9292`
6. Enjoy!

**Helpful Tips**

* Stubble relies on the excellent Compass extension, [Breakpoint](http://breakpoint-sass.com/) to manage media queries. Please take a look at the Breakpoint docs before using Stubble for the first time.

* We use Haml. Why? Because it's what we use in our full-site Rails builds and it kind of stinks to write vanilla markup for our wireframes and design mockups, only to have to convert it all to Haml later. Plus, if a page's markup gets lengthy, it's pretty nice to not have to worry about closing tags in the appropriate places.

* You may be wondering what the "v1" directory is all about. We "version" our mockups for clients, and usually go through several iterations...v1 is obviously version 1.

* We've included several generic "error" pages that do not use a Haml layout file, because we typically don't make error pages look like the rest of our sites. If you want to change this, you'll need to tinker with the routes in app.rb.

* Treat yourself: if you find yourself changing the app.rb config settings and constantly stopping and starting your local instance of the app, check out [Shotgun](https://github.com/rtomayko/shotgun), which will automatically reload your app. Awesome.

* If you're using this in production, you should be minifying your CSS and JavaScript. If you'd like to have Sinatra minify your CSS, change the "environment" setting in compass.rb from ":development" to ":production".

* [Here's a rough "demo"](http://pfulton.github.io/stubble/v1/) of what Stubble looks like when you run it out of the box.

If you have any questions, feel free to contact [@patrickfulton](http://www.twitter.com/patrickfulton), [@elefontpress](http://twitter.com/elefontpress), or [@beardedstudio](http://www.twitter.com/beardedstudio) on Twitter.