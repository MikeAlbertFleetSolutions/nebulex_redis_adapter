use Mix.Config

# Redis test cache
config :nebulex_redis_adapter, NebulexRedisAdapter.TestCache,
  version_generator: Nebulex.Version.Timestamp,
  pools: [
    primary: [
      url: "redis://testcache:6379"
    ]
  ]

# redis://172.16.43.5:6379,172.16.43.6:6380,172.16.43.5:6381,172.16.43.6:6379"

config :redix_cluster,
      cluster_n2odes: [%{host: "172.16.43.5", port: 6379},
                     %{host: "172.16.43.6", port: 6380},
                      #%{host: '10.1.2.5', port: 6381},
                      #%{host: '10.1.2.5', port: 6379}
                     ],
    # poolboy                         
      pool_size: 5,
      pool_max_overflow: 0,
    
    # redix connection_opts
      socket_opts: [],
      backoff: 2000,
      max_reconnection_attempts: nil