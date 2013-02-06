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

if Dropbox.file?(Alfred.query)
  dbox_file = Dropbox.relative_to_root(Alfred.query)
  puts Dropbox.client.find(dbox_file).share_url.url
else
  puts "Not a Dropbox file"
end