FROM msaraiva/elixir-dev:1.2.1

ADD . /app
WORKDIR /app

RUN mix clean
RUN mix deps.get
RUN mix deps.compile
RUN mix compile
