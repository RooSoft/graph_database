# GraphDatabase

CLI protype app interacting with a [neo4j](https://neo4j.com) graph database

## Add configuration
Create a `config/config.exs` file with contents similar to thos

```elixir
use Mix.Config

config :bolt_sips, Bolt,
  url: "bolt://localhost:7687",
  basic_auth: [username: "neo4j", password: "test"],
  ssl: false
```

## How to compile
```bash
mix escript.build
```

## How to run
```bash
./graph_database
```