# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'rack/fiber_pool'

rescue_exception = Proc.new { |env, exception| [503, {}, exception.message] }
use Rack::FiberPool, :rescue_exception => rescue_exception
run AsyncRailsFaraday::Application
