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
