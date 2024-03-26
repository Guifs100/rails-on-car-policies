require 'sneakers'

Sneakers.configure(
  amqp: "amqp://#{ENV['RABBITMQ_DEFAULT_USER']}:#{ENV['RABBITMQ_DEFAULT_PASS']}@#{ENV['RABBITMQ_DEFAULT_HOSTNAME']}:#{ENV['RABBITMQ_DEFAULT_PORT']}"
)

Sneakers.logger.level = Logger::INFO
