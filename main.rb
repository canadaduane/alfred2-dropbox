require 'rubygems'
require 'open4'

random_port = rand(1000) + 3001
command = "/usr/bin/ruby server.rb #{random_port}"
status = Open4::popen4(command) do |pid, stdin, stdout, stderr|
  puts "PID #{pid}" 
end

puts status

