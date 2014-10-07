require 'rake'
#require "bundler/gem_tasks"

SIMPLEHTTP_ROOT = File.dirname(File.expand_path(__FILE__))
SIMPLEHTTP_OUT  = File.join(SIMPLEHTTP_ROOT, "out", "simplehttp.mrb")

task :default => :build

task :check do
  if ENV["MRBC"].nil? && ! system("type mrbc > /dev/null 2>&1 ")
    puts "$MRBC isn't set or mrbc isn't on $PATH"
    exit 0
  end
end

desc "Compile simplehttp to mrb"
task :build => :check do
  sh "mkdir -p out"
  if ENV["MRBC"]
    sh "#{ENV["MRBC"]} -o #{SIMPLEHTTP_OUT} #{File.join(SIMPLEHTTP_ROOT, "lib", "simplehttp.rb")} "
  else
    sh "env mrbc -o #{SIMPLEHTTP_OUT} #{File.join(SIMPLEHTTP_ROOT, "lib", "simplehttp.rb")} "
  end
end

desc "Clobber/Clean"
task :clean => :check do
  sh "mkdir -p out"
  sh "rm -f #{SIMPLEHTTP_OUT}"
end