# This is where we bring all the parts of our software together

require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

# Want to use the same view, same controller and same repo throughout,
# so we initialize them here, to then pass them on to children
view = View.new
repository = Repository.new
controller = Controller.new(view, repository) # A controller needs view and repo to run
router = Router.new(controller) # A router needs a controller to run

# We run our application
router.run
