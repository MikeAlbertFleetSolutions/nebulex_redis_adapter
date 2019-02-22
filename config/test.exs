use Mix.Config

# Redis test cache
config :nebulex_redis_adapter, NebulexRedisAdapter.TestCache,
  version_generator: Nebulex.Version.Timestamp,
  pools: [
    primary: [
      url: "redis://testcache:6379"
    ]
  ]
