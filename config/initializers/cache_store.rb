config = Rails.application.config
if ["development", "test"].include?(Rails.env)
  config.cache_store = :memory_store, { size: 64.megabytes }
else
  config.cache_store = :redis_store, {
    url: Settings.redis.url,
    namespace: 'avalon'
  }
end
