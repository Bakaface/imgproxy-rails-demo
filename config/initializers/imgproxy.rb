Imgproxy.configure do |config|
  config.endpoint = 'http://localhost:8888'
  # config.key = 'your_key'
  # config.salt = 'your_salt'
end
Imgproxy.extend_active_storage!
