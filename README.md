# jekyll-html [![Build Status](https://travis-ci.org/kacperduras/jekyll-html.svg?branch=master)](https://travis-ci.org/kacperduras/jekyll-html) [![Gem Version](https://badge.fury.io/rb/jekyll-html.svg)](https://badge.fury.io/rb/jekyll-html)

A Jekyll plugin to use HTML tags in Jekyll pages, posts and collections.

## Installation

Add this line to your application's Gemfile:
```
$ gem 'jekyll-html'
```

And then execute:
```
$ bundle
```

Or install it yourself as:
```
$ gem install jekyll-html
```

## Usage

Input:
```
{% starttag p %}
  Example text
{% endtag p %}

{% starttag div class=test_class %}
  {% starttag p class=test_class %}
    Example text
  {% endtag p class=test_class %}
{% endtag div %}
```

Output:
```html
<p>
  Example text
</p>

<div class="test class">
  <p class="test_class">
    Example text
  </p> <!-- this tag can not have any attributes, because he closes  -->
</div>
```

## License
[MIT](LICENSE)
