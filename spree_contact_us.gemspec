# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_contact_us'
  s.version     = '1.0.0'
  s.summary     = 'This gem provides contact us with math captcha support'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Jay Rortechie'
  s.email             = 'jay@rortechie.com'
  # s.homepage          = 'http://www.rortechie.com'
  # s.rubyforge_project = 'actionmailer'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.RC1'
  s.add_development_dependency 'rspec-rails'
  s.add_dependency('formtastic')
  s.add_dependency('ezcrypto')
end

