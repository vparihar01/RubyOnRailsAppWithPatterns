Rails.application.config.generators do |g|
  # don't generate RSpec tests for views and helpers
  g.test_framework :rspec, fixture: true
  g.fixture_replacement :factory_girl, dir: 'spec/factories'
  g.view_specs false
  g.helper_specs false
  #generate only haml view and js
  g.template_engine :haml
end
