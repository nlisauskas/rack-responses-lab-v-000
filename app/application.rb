class Application
  # if before noon, "Good Morning!"
  # if afternoon, "Good Afternoon!"

  def call(env)
    resp = Rack::Response.new

    if Time.now(hour) < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
  

end
