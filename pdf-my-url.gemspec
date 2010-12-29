$:.push File.join(File.dirname(__FILE__), 'lib')
require "pdf-my-url/version"

Gem::Specification.new do |s|
  s.name        = "pdf-my-url"
  s.version     = PdfMyUrl::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Sylvestre"]
  s.email       = ["kevin@ksylvest.com"]
  s.homepage    = "http://github.com/ksylvest/pdf-my-url"
  s.summary     = "A basic ruby-on-rails interface to http://pdfmyurl.com/"
  s.description = "PDF my URL is a Ruby on Rails view helper for easily creating attachments from the online web service with the same name."
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc LICENSE Gemfile)
end

