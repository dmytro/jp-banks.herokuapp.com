redis_config= { url: ENV['REDISCLOUD_URL'], namespace: ENV['SIDEKIQ_NAMESPACE'] }

Sidekiq.configure_server do |config|
  config.redis = redis_config
end

Sidekiq.configure_client do |config|
  config.redis = redis_config
end
