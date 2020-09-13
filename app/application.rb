class Application
 
    def call(env)
      resp = Rack::Response.new
   
      if Time.now.hour <= 11
        resp.write Time.new.hour
        resp.write "Good Morning!"
      else
        resp.write Time.new.hour
        resp.write "Good Afternoon!"
      end
      resp.finish
    end
   
  end