# UrrlFormatter

Format and validate a URL attribute in Active Record. This is an example gem created for [RailsCasts episode #301](http://railscasts.com/episodes/301-extracting-a-ruby-gem).

## Installation

Add this line to your application's Gemfile:

 ```ruby
 gem 'urrl_formatter'
 ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install urrl_formatter

## Usage

Call `format_url` in an ActiveRecord class and pass the name of the attribute you wish to format into a URL and validate.

 ```ruby
 class Comment < ActiveRecord::Base
   format_url :website
 end
 ```

This will automatically add "http://" to the beginning of the `website` attribute upon saving if no protocol is present. It will also do validation to ensure it looks like a URL.


## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/ryanb/url_formatter/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Ryan Bates and is under the MIT License.