require 'pry'
class Application
  
  def call(env)
    resp = Rack::Response.new
    
    time = Time.new
    
    wrote_greetings = false
    
    if time.hour >= 12
      resp.write "Good Afternoon!"
    end
    
    
    
    #if time.hour < 12
    #  resp.write "Good Morning!"
    #  wrote_greetings = true
    #elsif time.hour >=12 
    #  resp.write "Good Afternoon!"
    #end
    
    #resp.write "Good Afternoon!" if wrote_greetings == false
    
    #if time.hour < 12
    #  resp.write "Good Morning!"
    #elsif time.hour == 12
    #  resp.write "Good Afternoon!"
    #end
    
    resp.finish
  end
  
end