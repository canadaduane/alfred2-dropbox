# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{open4}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ara T. Howard"]
  s.date = %q{2011-11-19}
  s.description = %q{description: open4 kicks the ass}
  s.email = %q{ara.t.howard@gmail.com}
  s.files = ["LICENSE", "README", "README.erb", "lib/open4.rb", "open4.gemspec", "rakefile", "samples/bg.rb", "samples/block.rb", "samples/exception.rb", "samples/jesse-caldwell.rb", "samples/pfork4.rb", "samples/simple.rb", "samples/spawn.rb", "samples/stdin_timeout.rb", "samples/timeout.rb", "test/pfork4_test.rb", "test/popen4_test.rb", "test/popen4ext_test.rb", "test/support/test_case.rb", "white_box/leak.rb"]
  s.homepage = %q{https://github.com/ahoward/open4}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{codeforpeople}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{open4}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
