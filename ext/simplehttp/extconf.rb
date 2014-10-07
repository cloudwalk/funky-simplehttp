require 'rake'
require 'mkmf'

rakefile = File.join(File.dirname(File.expand_path(__FILE__)), "..", "..", "Rakefile")

sh "rake -f #{rakefile}"

$makefile_created = true