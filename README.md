# ElixirMq

This is a message queue application built with Elixir that uses Dynamo to serve web requests.

## Usage

1. Make sure you have Elixir installed.
2. `bash ./run-production`

This, by default, will run the application in port 8888.  Therefore you will want to send requests to `localhost:8888`

## API

There are only two APIs:

1. `GET /`

Get a message off the queue.

Default reply when nothing is in the queue: `no_element_in_queue`

2. `POST /`

Post a message to the queue.

Default reply: `ok`

Resources:

* [Elixir website](http://elixir-lang.org/)
* [Elixir getting started guide](http://elixir-lang.org/getting_started/1.html)
* [Elixir docs](http://elixir-lang.org/docs)
* [Dynamo source code](https://github.com/elixir-lang/dynamo)
* [Dynamo guides](https://github.com/elixir-lang/dynamo#learn-more)
* [Dynamo docs](http://elixir-lang.org/docs/dynamo)
