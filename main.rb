require 'rubygems'
require 'dropbox'

if not Dropbox.authorized?
  require 'port_checker'
  port = PortChecker.first_available(3000..3200)

  ping_pid = fork do
    while not PortChecker.open? port
      sleep 0.3
    end
    `open http://localhost:#{port}`
  end

  command = "/usr/bin/ruby server.rb -p #{port}"
  output = `#{command}`
  status = $?

  # puts "output: #{output}"
  # puts "status: #{status}"
end

Dropbox.client.find(Alfred.query).share_url