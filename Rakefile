require 'rake'
#require "bundler/gem_tasks"

SIMPLEHTTP_ROOT = File.dirname(File.expand_path(__FILE__))
SIMPLEHTTP_OUT  = File.join(SIMPLEHTTP_ROOT, "out", "funky-simplehttp.mrb")

task :default => :build

task :check do
  if ENV["MRBC"].nil?
    if system("type cloudwalk > /dev/null 2>&1 ")
      ENV["MRBC"] = "env cloudwalk compile"
    elsif system("type mrbc > /dev/null 2>&1 ")
      ENV["MRBC"] = "env mrbc"
    else
      puts "$MRBC isn't set or mrbc/cloudwalk isn't on $PATH"
      exit 0
    end
  end
end

desc "Compile simplehttp to mrb"
task :build => :check do
  sh "mkdir -p #{File.join(SIMPLEHTTP_ROOT, "out")}"
  if ENV["MRBC"]
    sh "#{ENV["MRBC"]} -g -o #{SIMPLEHTTP_OUT} #{File.join(SIMPLEHTTP_ROOT, "lib", "funky-simplehttp.rb")} "
  else
    sh "env mrbc -g -o #{SIMPLEHTTP_OUT} #{File.join(SIMPLEHTTP_ROOT, "lib", "funky-simplehttp.rb")} "
  end
end

desc "Clobber/Clean"
task :clean => :check do
  sh "mkdir -p out"
  sh "rm -f #{SIMPLEHTTP_OUT}"
end