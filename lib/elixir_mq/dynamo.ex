defmodule ElixirMq.Dynamo do
  use Dynamo

  config :dynamo,
    # The environment this Dynamo runs on
    env: Mix.env,

    # The OTP application associated to this Dynamo
    otp_app: :elixir_mq,

    # The endpoint to dispatch requests to
    endpoint: ApplicationRouter,

    # The route from where static assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  # Uncomment the lines below to enable the cookie session store
  # config :dynamo,
  #   session_store: Session.CookieStore,
  #   session_options:
  #     [ key: "_elixir_mq_session",
  #       secret: "dbpxAjZEjw/mN+lW7f0qOgeW5ZLz0u6t4doBjhk14Woi8XsQ7GIV7dhxLJlQ9V8C"]

  # Default functionality available in templates
  templates do
    use Dynamo.Helpers
  end
end
