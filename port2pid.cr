if ARGV.empty?
  STDERR.puts "Usage: port2pid <port>"
  exit 1
end

port = ARGV[0]

`lsof -i :#{port}`.try do |lsof_output|
  info = lsof_output.split("\n").select { |line| %r{(LISTEN)} =~ line }

  if info.none?
    STDERR.puts "No application listening on port #{port}"
    exit 1
  end

  puts info.first.split(/\s+/)[1]
end
