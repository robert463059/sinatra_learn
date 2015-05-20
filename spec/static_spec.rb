# Requiring test environment file
require File.expand_path("../../config/environments/test", __FILE__)

# Requiring test subject file
require_relative File.join(APP_CONTROLLER, "static")

# Test cases
describe 'Routing for root' do
	include Rack::Test::Methods

	it "has ok response when get '/' is called." do
		get '/'
		expect(last_response).to be_ok
	end
end