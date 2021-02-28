class LogMiddleware

  def initialize(app)

    @app = app

  end



  def call(env)

    start_time = Time.now



    p "log middleware is calling #{start_time}"



    status, headers, body = @app.call(env)



    p 'log middleware is called'



    [status, headers, body]



    # stop_time = Time.now



    # p 'log middleware is called'



    # [status, headers, response.body]

  end

end

