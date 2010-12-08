# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pg_recurrence}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Chiu"]
  s.date = %q{2010-12-07}
  s.description = %q{Unofficial Psigate recurring billing library for Ruby}
  s.email = %q{skhchiu@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/pg_recurrence.rb",
    "lib/ruby_psigate/account.rb",
    "lib/ruby_psigate/charge.rb",
    "lib/ruby_psigate/credential.rb",
    "lib/ruby_psigate/request.rb",
    "lib/ruby_psigate/response.rb",
    "test/helper.rb",
    "test/remote/test_account_remote.rb",
    "test/remote/test_charge_remote.rb",
    "test/remote/test_request_remote.rb",
    "test/unit/test_account.rb",
    "test/unit/test_charge.rb",
    "test/unit/test_request.rb",
    "test/unit/test_response.rb"
  ]
  s.homepage = %q{http://github.com/drchiu/pg_recurrence}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Unofficial Psigate recurring billing library for Ruby}
  s.test_files = [
    "test/helper.rb",
    "test/remote/test_account_remote.rb",
    "test/remote/test_charge_remote.rb",
    "test/remote/test_request_remote.rb",
    "test/unit/test_account.rb",
    "test/unit/test_charge.rb",
    "test/unit/test_request.rb",
    "test/unit/test_response.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<crack>, [">= 0"])
      s.add_runtime_dependency(%q<pg_serializer>, [">= 0"])
      s.add_runtime_dependency(%q<pg_connection>, [">= 0"])
      s.add_runtime_dependency(%q<pg_creditcard>, [">= 0"])
      s.add_runtime_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<crack>, [">= 0"])
      s.add_dependency(%q<pg_serializer>, [">= 0"])
      s.add_dependency(%q<pg_connection>, [">= 0"])
      s.add_dependency(%q<pg_creditcard>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<crack>, [">= 0"])
    s.add_dependency(%q<pg_serializer>, [">= 0"])
    s.add_dependency(%q<pg_connection>, [">= 0"])
    s.add_dependency(%q<pg_creditcard>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

