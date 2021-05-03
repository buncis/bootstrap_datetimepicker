# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_datetimepicker/version'

Gem::Specification.new do |s|
  s.add_dependency 'momentjs-rails', '~> 2.9', '>= 2.9.0'
  s.name        = 'bootstrap_datetimepicker'
  s.version     = '0.0.13'
  s.summary     = "bootstrapdatetimepicker!"
  s.description = "this gem gone from rubygems ferdi yg make"
  s.authors     = ["Buncis"]
  s.email       = 'buncismamen@gmail.com'
  s.files       = Dir["{lib,vendor,app}/**/*"] 
  s.homepage    =
    'https://github.com/buncis/bootstrap_datetimepicker'
  s.license       = 'MIT'
end
