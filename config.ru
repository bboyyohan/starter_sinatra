require_relative './config/environment'

use Rack::MethodOverride
use OwnersController
use OwnerDogsController
run DogsController
