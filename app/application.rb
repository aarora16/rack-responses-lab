class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    noon = Time.parse "12:00 pm"

    if current_time <= noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end