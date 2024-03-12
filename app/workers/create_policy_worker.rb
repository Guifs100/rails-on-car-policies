class CreatePolicyWorker
  include Sneakers::Worker

  from_queue 'create_policy'

  def work(msg)
    ack!
  end
end
