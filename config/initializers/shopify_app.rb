shopify_app_config = Rails.application.config_for(:shopify_app)

ShopifyApp.configure do |config|
  config.api_key = shopify_app_config.fetch('fe60080408208f25fb559bb3400df7cb')
  config.secret = shopify_app_config.fetch('ab5672c6aa13a4fa889a8652becb74fb')
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
