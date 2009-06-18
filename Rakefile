require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "tegu_labs"
    s.summary = %Q{Collaboration tool for analytical work.}
    s.email = "davidlamontrichards@gmail.com"
    s.homepage = "http://github.com/davidrichards/tegu_labs"
    s.description = "Collaboration tool for analytical work: project notes, log, repositories, roles, and participants with a website and RESTful API."
    s.authors = ["David Richards"]
    s.add_dependency('log4r', '>= 1.0.5')
    s.add_dependency('god')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'tegu_labs'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  puts "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
end

task :default => :spec
