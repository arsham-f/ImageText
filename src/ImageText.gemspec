Gem::Specification.new do |s|
  s.name        = 'ImageText'
  s.version     = '1.0.1'
  s.date        = '2014-02-17'
  s.summary     = "ImageText"
  s.description = "Turn images into ASCII art"
  s.authors     = ["Arsham"]
  s.email       = 'arsham.faghihi@gmail.com'
  s.files       = ["lib/helpers.rb", "lib/ImageText.rb"]
  s.homepage    = 'http://arsh.am'
  s.license       = 'MIT'
  s.executables << 'imagetext'
  s.requirements << 'libmagicdev, RMagick'
end
