require 'greeter'

# this allows to add files to project without
# necessarily having to reload each time
use Rack::Reloader, 0

# this middleware allows to load folders in a cascading order.
# start with the first folder load it and then go to the next

run Rack::Cascade.new([Rack::File.new("public"), Greeter])
