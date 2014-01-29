# require "rack/rescue/version"
require "rack-timeout"

module Rack
  class Rescue
    
    def initialize(app)
    	@app = app
    end

    def call(env)
        begin
            #raise Rack::Timeout::RequestTimeoutError
            response = @app.call(env)
        rescue Rack::Timeout::Error 
            return [200, {"Content-Type" => "text/html"}, "Hello, World!" ]
            # return [200, {"Content-Type" => "text/html"}, "Hello, World! #{exception.class.name}"]
        end
        response
    	# begin
    	# 	@app.call(env)
    	# rescue Rack::Timeout::Error => exception
    	# 	if env['HTTP_ACCEPT'] =~ /application\/json/
    	# 		return [
    	# 			503, { "Content-Type" => "application/json"},
    	# 			[ { status: 503, error: "service timeout"}.to_json]
    	# 		]
    	# 	else
    	# 		raise "hello world"
    	# 	end
    	# end

        # begin
        #     @app.call(env)
        # rescue Exception => exception
        #     [200, {"Content-Type" => "text/html"}, "Hello, World! #{exception.class.name}" ]
        # end

    end

  end
end
