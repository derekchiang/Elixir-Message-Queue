defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:params])
  end

  # It is common to break your Dynamo in many
  # routers forwarding the requests between them
  # forward "/posts", to: PostsRouter

  post "/" do
    data = conn.params[:data]
    res = :gen_server.cast(:queue, {:push, data})
    conn.resp 200, to_binary(res)
  end

  get "/" do
    res = :gen_server.call(:queue, :pop)
    conn.resp 200, to_binary(res)
  end
end