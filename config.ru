require 'greeter'

# this allows to add files to project without
# necessarily having to reload each time
use Rack::Reloader, 0

run Greeter
