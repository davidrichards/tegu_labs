# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tegu_labs}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Richards"]
  s.date = %q{2009-06-18}
  s.description = %q{Collaboration tool for analytical work: project notes, log, repositories, roles, and participants with a website and RESTful API.}
  s.email = %q{davidlamontrichards@gmail.com}
  s.files = ["README.rdoc", "VERSION.yml", "lib/tegu_labs.rb", "spec/spec_helper.rb", "spec/tegu_labs_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/davidrichards/tegu_labs}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Collaboration tool for analytical work.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<log4r>, [">= 1.0.5"])
      s.add_runtime_dependency(%q<god>, [">= 0"])
    else
      s.add_dependency(%q<log4r>, [">= 1.0.5"])
      s.add_dependency(%q<god>, [">= 0"])
    end
  else
    s.add_dependency(%q<log4r>, [">= 1.0.5"])
    s.add_dependency(%q<god>, [">= 0"])
  end
end
