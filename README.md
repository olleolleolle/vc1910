# README

This reproduction of a ViewComponent issue is using latest Rails, 7.1, latest view_component, Capybara.

  gem i rails
  rails new vc1910
  cd vc1910/
  bundle add view_component
  bundle add rspec-rails
  bundle add capybara
  rails generate rspec:install
  rails g component demo

Afterwards, I added https://github.com/ViewComponent/view_component/issues/1910#issuecomment-1889762507 the test case from this comment.

See ViewComponent issues and other details:

- https://github.com/ViewComponent/view_component/pull/945
- https://github.com/ViewComponent/view_component/issues/1910

`bundle show` said:

```
Gems included by the bundle:
  * actioncable (7.1.3)
  * actionmailbox (7.1.3)
  * actionmailer (7.1.3)
  * actionpack (7.1.3)
  * actiontext (7.1.3)
  * actionview (7.1.3)
  * activejob (7.1.3)
  * activemodel (7.1.3)
  * activerecord (7.1.3)
  * activestorage (7.1.3)
  * activesupport (7.1.3)
  * addressable (2.8.6)
  * base64 (0.2.0)
  * bigdecimal (3.1.6)
  * bindex (0.8.1)
  * bootsnap (1.18.3)
  * builder (3.2.4)
  * bundler (2.4.21)
  * capybara (3.40.0)
  * concurrent-ruby (1.2.3)
  * connection_pool (2.4.1)
  * crass (1.0.6)
  * date (3.3.4)
  * debug (1.9.1)
  * diff-lcs (1.5.1)
  * drb (2.2.0)
  * erubi (1.12.0)
  * globalid (1.2.1)
  * i18n (1.14.1)
  * importmap-rails (2.0.1)
  * io-console (0.7.2)
  * irb (1.11.1)
  * jbuilder (2.11.5)
  * loofah (2.22.0)
  * mail (2.8.1)
  * marcel (1.0.2)
  * matrix (0.4.2)
  * method_source (1.0.0)
  * mini_mime (1.1.5)
  * minitest (5.21.2)
  * msgpack (1.7.2)
  * mutex_m (0.2.0)
  * net-imap (0.4.10)
  * net-pop (0.1.2)
  * net-protocol (0.2.2)
  * net-smtp (0.4.0.1)
  * nio4r (2.7.0)
  * nokogiri (1.16.2)
  * psych (5.1.2)
  * public_suffix (5.0.4)
  * puma (6.4.2)
  * racc (1.7.3)
  * rack (3.0.9)
  * rack-session (2.0.0)
  * rack-test (2.1.0)
  * rackup (2.1.0)
  * rails (7.1.3)
  * rails-dom-testing (2.2.0)
  * rails-html-sanitizer (1.6.0)
  * railties (7.1.3)
  * rake (13.1.0)
  * rdoc (6.6.2)
  * regexp_parser (2.9.0)
  * reline (0.4.2)
  * rexml (3.2.6)
  * rspec-core (3.13.0)
  * rspec-expectations (3.13.0)
  * rspec-mocks (3.13.0)
  * rspec-rails (6.1.1)
  * rspec-support (3.13.0)
  * ruby2_keywords (0.0.5)
  * rubyzip (2.3.2)
  * selenium-webdriver (4.17.0)
  * sprockets (4.2.1)
  * sprockets-rails (3.4.2)
  * sqlite3 (1.7.2)
  * stimulus-rails (1.3.3)
  * stringio (3.1.0)
  * thor (1.3.0)
  * timeout (0.4.1)
  * turbo-rails (1.5.0)
  * tzinfo (2.0.6)
  * view_component (3.10.0)
  * web-console (4.2.1)
  * webrick (1.8.1)
  * websocket (1.2.10)
  * websocket-driver (0.7.6)
  * websocket-extensions (0.1.5)
  * xpath (3.2.0)
  * zeitwerk (2.6.12)
```
